 <?php
    $dormitories =  $this->db->get_where('dormitory', array('dormitory_id' => $param2))->result_array();
    foreach ($dormitories as $key => $dormitory) : ?>

     <div class="row">
         <div class="col-sm-12">
             <div class="panel panel-info">
                 <div class="panel-heading"> <i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('update_dormitory'); ?></div>
                 <div class="panel-wrapper collapse in" aria-expanded="true">
                     <div class="panel-body table-responsive">

                         <!----CREATION FORM STARTS---->

                         <?php echo form_open(base_url() . 'hostel/dormitory/update/' . $param2, array('class' => 'form-horizontal form-groups-bordered validate', 'target' => '_top')); ?>
                         <div class="form-group">
                             <label class="col-md-12" for="example-text"><?php echo get_phrase('name'); ?></label>
                             <div class="col-sm-12">
                                 <input type="text" class="form-control" name="name" value="<?php echo $dormitory['name']; ?>">
                             </div>
                         </div>

                         <div class="form-group">
                             <label class="col-md-12" for="example-text"><?php echo get_phrase('hostel_room'); ?></label>
                             <div class="col-sm-12">
                                 <select name="hostel_room_id" class="form-control select2" required>
                                     <option value=""><?php echo get_phrase('select_hostel_room'); ?></option>

                                     <?php $hostel_rooms =  $this->db->get('hostel_room')->result_array();
                                        foreach ($hostel_rooms as $key => $hostel_room) : ?>
                                         <option value="<?php echo $hostel_room['hostel_room_id']; ?>" <?php if ($hostel_room['hostel_room_id'] == $dormitory['hostel_room_id']) echo 'selected'; ?>><?php echo $hostel_room['name']; ?></option>
                                     <?php endforeach; ?>
                                 </select>
                             </div>
                         </div>

                         <div class="form-group">
                             <label class="col-md-12" for="example-text"><?php echo get_phrase('hostel_category'); ?></label>
                             <div class="col-sm-12">
                                 <select name="hostel_category_id" class="form-control select2" required>
                                     <option value=""><?php echo get_phrase('select_hostel_category'); ?></option>

                                     <?php $hostel_categories =  $this->db->get('hostel_category')->result_array();
                                        foreach ($hostel_categories as $key => $hostel_category) : ?>
                                         <option value="<?php echo $hostel_category['hostel_category_id']; ?>" <?php if ($hostel_category['hostel_category_id'] == $dormitory['hostel_category_id']) echo 'selected'; ?>><?php echo $hostel_category['name']; ?></option>
                                     <?php endforeach; ?>
                                 </select>
                             </div>
                         </div>

                         <div class="form-group">
                             <label class="col-md-12" for="example-text"><?php echo get_phrase('capacity'); ?></label>
                             <div class="col-sm-12">
                                 <input type="text" class="form-control" name="capacity" value="<?php echo $dormitory['capacity']; ?>">
                             </div>
                         </div>

                         <div class="form-group">
                             <label class="col-md-12" for="example-text"><?php echo get_phrase('address'); ?></label>
                             <div class="col-sm-12">
                                 <textarea class="form-control" name="address"><?php echo $dormitory['address']; ?></textarea>
                             </div>
                         </div>

                         <div class="form-group">
                             <label class="col-md-12" for="example-text"><?php echo get_phrase('description'); ?></label>
                             <div class="col-sm-12">
                                 <textarea class="form-control" name="description"><?php echo $dormitory['description']; ?></textarea>
                             </div>
                         </div>

                         <div class="form-group">
                             <button type="submit" class="btn btn-info btn-block btn-rounded btn-sm"><i class="fa fa-plus"></i>&nbsp;<?php echo get_phrase('update'); ?></button>
                         </div>

                         <?php echo form_close(); ?>
                     </div>
                 </div>
             </div>
         </div>
         <!----CREATION FORM ENDS-->
     </div>
 <?php endforeach; ?>