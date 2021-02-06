<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


class Studentcategory extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');                    //Load library for session
        $this->load->model('student_model');
    }


    function studentCategory($param1 = '', $param2 = '', $param3 = '')
    {

        if ($param1 == 'create') {

            $this->student_model->createStudentCategory();
            $this->session->set_flashdata('flash_message', get_phrase('Data saved successfully'));
            redirect(base_url() . 'studentcategory/studentCategory', 'refresh');
        }

        if ($param1 == 'update') {

            $this->student_model->updateStudentCategory($param2);
            $this->session->set_flashdata('flash_message', get_phrase('Data updated successfully'));
            redirect(base_url() . 'studentcategory/studentCategory', 'refresh');
        }

        if ($param1 == 'delete') {

            $this->student_model->deleteStudentCategory($param2);
            $this->session->set_flashdata('flash_message', get_phrase('Data deleted successfully'));
            redirect(base_url() . 'studentcategory/studentCategory', 'refresh');
        }

        $page_data['page_name']     = 'studentCategory';
        $page_data['page_title']    = get_phrase('Manage Student Category');
        $this->load->view('backend/index', $page_data);
    }
}
