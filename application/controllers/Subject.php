<?php if (!defined('BASEPATH')) exit('No direct script access allowed');



class Subject extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');                    //Load library for session
    }



    /***********  The function manages Subject  ***********************/
    function subject($param1 = null, $param2 = null, $param3 = null)
    {

        if ($param1 == 'create') {
            $this->subject_model->createSubjectFunction();
            $this->session->set_flashdata('flash_message', get_phrase('Data saved successfully'));
            redirect(base_url() . 'subject/subject', 'refresh');
        }

        if ($param1 == 'update') {
            $this->subject_model->updateSubjectFunction($param2);
            $this->session->set_flashdata('flash_message', get_phrase('Data updated successfully'));
            redirect(base_url() . 'subject/subject', 'refresh');
        }


        if ($param1 == 'delete') {
            $this->subject_model->deleteSubjectFunction($param2);
            $this->session->set_flashdata('flash_message', get_phrase('Data deleted successfully'));
            redirect(base_url() . 'subject/subject', 'refresh');
        }

        $page_data['page_name']     = 'subject';
        $page_data['page_title']    = get_phrase('Manage Subject');
        $this->load->view('backend/index', $page_data);
    }

    // Search subject function with ajax start here
    function getSubjectByClasswise($class_id)
    {
        $page_data['class_id'] = $class_id;
        $this->load->view('backend/admin/displaySubjectClasswise', $page_data);
    }
    // Search subject function with ajax end here

    function subjects($class_id = null)
    {

        if ($class_id == '')
            $class_id = $this->db->get('class')->first_row()->class_id;

        $page_data['page_name']     = 'subject';
        $page_data['class_id']     = $class_id;
        $page_data['page_title']    = get_phrase('Manage Subject');
        $this->load->view('backend/index', $page_data);
    }
}
