<?php
$student_categories =  $this->db->get_where('student_category', array('student_category_id' => $param2))->result_array();
foreach ($student_categories as $key => $student_category) :
?>

    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-info">
                <div class="panel-heading"> <i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('update_student_category'); ?></div>
                <div class="panel-wrapper collapse in" aria-expanded="true">
                    <div class="panel-body table-responsive">

                        <!----CREATION FORM STARTS---->

                        <?php echo form_open(base_url() . 'studentcategory/studentCategory/update/' . $param2, array('class' => 'form-horizontal form-groups-bordered validate', 'target' => '_top')); ?>
                        <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('name'); ?></label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" name="name" value="<?php echo $student_category['name']; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('description'); ?></label>
                            <div class="col-sm-12">
                                <textarea name="description" class="form-control"><?php echo $student_category['description']; ?></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-info btn-block btn-rounded btn-sm"><i class="fa fa-book"></i>&nbsp;<?php echo get_phrase('save'); ?></button>
                        </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>