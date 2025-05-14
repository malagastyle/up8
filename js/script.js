$(document).ready(function() {
    let currentPage = 1;
    const recordsPerPage = 10;
    
    function loadJournalData(page = 1, filters = {}) {
        $.ajax({
            url: 'load_journal.php',
            method: 'POST',
            data: {
                page: page,
                recordsPerPage: recordsPerPage,
                groupId: filters.groupId || '',
                subjectId: filters.subjectId || '',
                date: filters.date || ''
            },
            dataType: 'json',
            success: function(response) {
                renderJournalTable(response.data);
                updatePagination(response.totalRecords, page);
                currentPage = page;
            },
            error: function(xhr, status, error) {
                console.error("Error loading journal data:", error);
            }
        });
    }
    
    function renderJournalTable(data) {
        const $tbody = $('#journal-table tbody');
        $tbody.empty();
        
        if (data.length === 0) {
            $tbody.append('<tr><td colspan="9">Нет данных для отображения</td></tr>');
            return;
        }
        
        data.forEach(function(row) {
            const presenceText = row.pres === 1 ? 'Присутствовал' : 'Отсутствовал';
            const presenceClass = row.pres === 1 ? 'present' : 'absent';
            const markText = row.mark ? row.mark : 'Нет оценки';
            
            $tbody.append(`
                <tr>
                    <td>${row.day}</td>
                    <td>${row.group_name}</td>
                    <td>${row.student_fam} ${row.student_name} ${row.student_otch || ''}</td>
                    <td>${row.city_name}</td>
                    <td>${row.subject_name}</td>
                    <td>${row.prepod_fam} ${row.prepod_name}</td>
                    <td class="${presenceClass}">${presenceText}</td>
                    <td>${markText}</td>
                    <td>
                        <button class="edit-btn" data-id="${row.id}">Изменить</button>
                        <button class="delete-btn" data-id="${row.id}">Удалить</button>
                    </td>
                </tr>
            `);
        });
    }
    
    function updatePagination(totalRecords, currentPage) {
        const totalPages = Math.ceil(totalRecords / recordsPerPage);
        $('#page-info').text(`Страница ${currentPage} из ${totalPages}`);
        
        $('#prev-page').prop('disabled', currentPage <= 1);
        $('#next-page').prop('disabled', currentPage >= totalPages);
    }
    
    $('#apply-filters').click(function() {
        const filters = {
            groupId: $('#group-filter').val(),
            subjectId: $('#subject-filter').val(),
            date: $('#date-filter').val()
        };
        
        loadJournalData(1, filters);
    });
    
    $('#reset-filters').click(function() {
        $('#group-filter').val('');
        $('#subject-filter').val('');
        $('#date-filter').val('');
        loadJournalData(1);
    });
    
    $('#prev-page').click(function() {
        if (currentPage > 1) {
            loadJournalData(currentPage - 1);
        }
    });
    
    $('#next-page').click(function() {
        loadJournalData(currentPage + 1);
    });

const modal = $('#edit-modal');
const addBtn = $('#add-record-btn');
const closeBtn = $('.close');

addBtn.click(function() {
    $('#modal-title').text('Добавить запись');
    $('#record-id').val('');
    $('#journal-form')[0].reset();
    modal.show();
});

$(document).on('click', '.edit-btn', function() {
    const recordId = $(this).data('id');
    
    $.ajax({
        url: 'get_record.php',
        method: 'POST',
        data: { id: recordId },
        dataType: 'json',
        success: function(response) {
            $('#modal-title').text('Редактировать запись');
            $('#record-id').val(response.id);
            $('#record-date').val(response.day);
            $('#record-student').val(response.student_id);
            $('#record-subject').val(response.predmet_id);
            $('#record-teacher').val(response.prepod_id);
            $('#record-presence').val(response.pres);
            $('#record-mark').val(response.mark || '');
            modal.show();
        },
        error: function(xhr, status, error) {
            console.error("Error loading record:", error);
        }
    });
});

closeBtn.click(function() {
    modal.hide();
});

$(window).click(function(event) {
    if (event.target === modal[0]) {
        modal.hide();
    }
});

$('#journal-form').submit(function(e) {
    e.preventDefault();
    
    const formData = {
        id: $('#record-id').val(),
        day: $('#record-date').val(),
        student_id: $('#record-student').val(),
        predmet_id: $('#record-subject').val(),
        prepod_id: $('#record-teacher').val(),
        pres: $('#record-presence').val(),
        mark: $('#record-mark').val() || null
    };
    
    const url = formData.id ? 'update_record.php' : 'add_record.php';
    
    $.ajax({
        url: url,
        method: 'POST',
        data: formData,
        success: function(response) {
            modal.hide();
            loadJournalData(currentPage);
        },
        error: function(xhr, status, error) {
            console.error("Error saving record:", error);
        }
    });
});

$(document).on('click', '.delete-btn', function() {
    if (confirm('Вы уверены, что хотите удалить эту запись?')) {
        const recordId = $(this).data('id');
        
        $.ajax({
            url: 'delete_record.php',
            method: 'POST',
            data: { id: recordId },
            success: function(response) {
                loadJournalData(currentPage);
            },
            error: function(xhr, status, error) {
                console.error("Error deleting record:", error);
            }
        });
    }
});
    
    loadJournalData();
});