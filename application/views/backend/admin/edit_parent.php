<?php
$select_parent = $this->db->get_where('parent', array('parent_id' => $param2))->result_array();
foreach ($select_parent as $key => $parent) :
?>

    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <?php echo get_phrase('update_parent'); ?>
                </div>

                <div class="panel-body">

                    <?php echo form_open(base_url() . 'admin/parent/update/' . $parent['parent_id'], array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data')); ?>


                    <div class="form-group">
                        <label class="col-md-12" for="example-text"><?php echo get_phrase('Name'); ?></label>
                        <div class="col-sm-12">
                            <input type="text" name="name" class="form-control" value="<?php echo $parent['name']; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-12" for="example-text"><?php echo get_phrase('Email'); ?></label>
                        <div class="col-sm-12">

                            <input type="email" name="email" class="form-control" value="<?php echo $parent['email']; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-12" for="example-text"><?php echo get_phrase('Phone'); ?></label>
                        <div class="col-sm-12">

                            <input type="text" name="phone" class="form-control" value="<?php echo $parent['phone']; ?>">
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-md-12" for="example-text"><?php echo get_phrase('Profession'); ?></label>
                        <div class="col-sm-12">

                            <input type="text" name="profession" class="form-control" value="<?php echo $parent['profession']; ?>">
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-md-12" for="example-text"><?php echo get_phrase('Address'); ?></label>
                        <div class="col-sm-12">

                            <textarea class="form-control" name="address"><?php echo $parent['address']; ?></textarea>

                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-12" for="example-text"><?php echo get_phrase('Image'); ?></label>
                        <div class="col-sm-12">

                            <input type="file" name="userfile">
                            <img src="<?php echo  $this->crud_model->get_image_url('parent', $parent['parent_id']); ?>" class="img-circle" width="30" height="30">
                        </div>
                    </div>



                    <div class="form-group">
                        <button type="submit" class="btn btn-info btn-block btn-rounded btn-sm"><i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('update_parent'); ?></button>
                    </div>
                    <?php echo form_close(); ?>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>