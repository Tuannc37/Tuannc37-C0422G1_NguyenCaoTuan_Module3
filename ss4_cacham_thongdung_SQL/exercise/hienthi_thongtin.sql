use QuanLySinhVien_ss4;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select *
from
    `Subject` s
where
    s.credit = (select 
            max(s.credit)
        from
            `subject`);
            
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.

select s.*
from
    `Subject` s
        join
    Mark m on s.SubID = m.SubID
where
    m.Mark = (select 
            max(m.Mark)
        from
            Mark m);


-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần

select s.*, avg(m.Mark) as diem_trung_binh
from
    Student s
        left join
    Mark m on s.StudentID = m.StudentID
group by s.StudentID
order by diem_trung_binh desc;