<?php 
namespace App\Controllers;
use CodeIgniter\Controller;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\API\ResponseTrait;
use App\Models\StudentModel;

class ApiStudentController extends BaseController
{
    use ResponseTrait;

    public function index()
    {
        //echo "I Am a Student";
        $student = new StudentModel();
        $data['student'] = $student->orderBy('id', 'DESC')->findAll();
        return $this->respond([
                'status' => 1, 
                'message' => $data
        ]);

    }

    public function create()
    {
        $students = new StudentModel();
        $data = [
            'name' => $this->request->getVar('name'),
            'email' => $this->request->getVar('email'),
            'phone' => $this->request->getVar('phone'),
        ];

        $result = $students->save($data);
        if($result){
            return $this->respond([
                'status' => 1, 
                'message' => 'Student Added Successfully',
            ]);
        }else{
            return $this->respond([
                'status' => 0, 
                'message' => 'Student NOT Added Successfully',
            ]);  
        }
    }

    public function show($id)
    {
        //echo "I Am a Student";
        $student = new StudentModel();
        $data = $student->find($id);
        if($data)
        {
            return $this->respond([
                'status' => 1, 
                'message' => $data
            ]);
        }else{
            return $this->respond([
                'status' => 0, 
                'message' => $id.'Not Found'
            ]);
        }
    }

    public function update($id)
    {
        $student = new StudentModel();
        $data = [
            'name' => $this->request->getVar('name'),
            'email' => $this->request->getVar('email'),
            'phone' => $this->request->getVar('phone'),
        ];
        $result = $student->update($id, $data);
        if($result)
        {
            return $this->respond([
                'status' => 1, 
                'message' => 'Student Updated Successfully'
            ]);
        }else{
            return $this->respond([
                'status' => 0, 
                'message' => 'Student Not Updated Successfully'
            ]);
        }
    }

    public function delete($id)
    {
        $student = new StudentModel();
        $result = $student->delete($id);
        if($result)
        {
            return $this->respond([
                'status' => 1, 
                'message' => 'Student Deleted Successfully'
            ]);
        }else{
            return $this->respond([
                'status' => 0, 
                'message' => $id.'Student Not Found'
            ]);
        }
    }
}