 <table id="example23" class="display nowrap" cellspacing="0" width="100%">
     <thead>
         <tr>
             <th>
                 <div>#</div>
             </th>
             <th>
                 <div><?php echo get_phrase('subject_name'); ?></div>
             </th>
             <th>
                 <div><?php echo get_phrase('teacher'); ?></div>
             </th>
             <th>
                 <div><?php echo get_phrase('options'); ?></div>
             </th>
         </tr>
     </thead>
     <tbody>

         <?php $counter = 1;
            $subject =  $this->db->get_where('subject', array('class_id' => $class_id))->result_array();
            foreach ($subject as $key => $subject) : ?>
             <tr>
                 <td><?php echo $counter++; ?></td>
                 <td><?php echo $subject['name']; ?></td>

                 <td><?php echo $this->crud_model->get_type_name_by_id('teacher', $subject['teacher_id']); ?></td>
                 <td>

                     <a href="#" onclick="showAjaxModal('<?php echo base_url(); ?>modal/popup/edit_subject/<?php echo $subject['subject_id']; ?>');"><button type="button" class="btn btn-info btn-circle btn-xs"><i class="fa fa-pencil"></i></button>
                     </a>

                     <a href="#" onclick="confirm_modal('<?php echo base_url(); ?>subject/subject/delete/<?php echo $subject['subject_id']; ?>');"><button type="button" class="btn btn-danger btn-circle btn-xs"><i class="fa fa-times"></i></button></a>



                 </td>
             </tr>
         <?php endforeach; ?>
     </tbody>
 </table>