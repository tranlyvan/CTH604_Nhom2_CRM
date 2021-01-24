<?php /* Smarty version Smarty-3.1.7, created on 2021-01-21 07:31:24
         compiled from "/usr/CTH604_Nhom2_CRM/Source_Code/vtigercrm/includes/runtime/../../layouts/v7/modules/Vtiger/NoComments.tpl" */ ?>
<?php /*%%SmartyHeaderCode:114653202960092dcc51c526-60717065%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4228cfc489e31945eaf43927296ea12a8ed9dfe9' => 
    array (
      0 => '/usr/CTH604_Nhom2_CRM/Source_Code/vtigercrm/includes/runtime/../../layouts/v7/modules/Vtiger/NoComments.tpl',
      1 => 1607830287,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '114653202960092dcc51c526-60717065',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODULE_NAME' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_60092dcc51d58',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_60092dcc51d58')) {function content_60092dcc51d58($_smarty_tpl) {?>
<div class="noCommentsMsgContainer noContent"><p class="textAlignCenter"> <?php echo vtranslate('LBL_NO_COMMENTS',$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</p></div><?php }} ?>