<?php /* Smarty version Smarty-3.1.7, created on 2021-01-21 08:31:03
         compiled from "/usr/CTH604_Nhom2_CRM/Source_Code/vtigercrm/includes/runtime/../../layouts/v7/modules/Settings/ExtensionStore/ExtensionCompatibleError.tpl" */ ?>
<?php /*%%SmartyHeaderCode:107708306560093bc7e78729-62192640%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a657dc7094302e208f98ff1ef8a3b3388140b38f' => 
    array (
      0 => '/usr/CTH604_Nhom2_CRM/Source_Code/vtigercrm/includes/runtime/../../layouts/v7/modules/Settings/ExtensionStore/ExtensionCompatibleError.tpl',
      1 => 1607830287,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '107708306560093bc7e78729-62192640',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'EXTENSION_LABEL' => 0,
    'QUALIFIED_MODULE' => 0,
    'MODULE' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_60093bc7e910a',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_60093bc7e910a')) {function content_60093bc7e910a($_smarty_tpl) {?>

<div style="min-height: 600px;"><table border="0" cellpadding="5" cellspacing="0" width="100%" style="margin-top: 100px;"><tr><td align="center"><div style="border: 3px solid rgb(153, 153, 153); background-color: rgb(255, 255, 255); width: 40%; position: relative;padding-right: 3px;"><table border="0" cellpadding="5" cellspacing="0" width="98%"><tbody><tr><td rowspan="2"><img src="<?php echo vimage_path("denied.gif");?>
" style="margin: 10px;"></td><td width="80%" style="border-bottom: 1px solid rgb(204, 204, 204);"><span class="genHeaderSmall"><b><?php echo vtranslate($_smarty_tpl->tpl_vars['EXTENSION_LABEL']->value,$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value);?>
</b> <?php echo ucfirst(strtolower(vtranslate('LBL_EXTENSION_NOT_COMPATABLE',$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value)));?>
</span></td></tr><tr><td class="small" align="right" nowrap="nowrap"><a href="index.php?module=ExtensionStore&parent=Settings&view=ExtensionStore"><?php echo vtranslate('LBL_GO_BACK',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</a><br></td></tr></tbody></table></div></td></tr></table><?php echo $_smarty_tpl->getSubTemplate (vtemplate_path("CardSetupModals.tpl",$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('QUALIFIED_MODULE'=>$_smarty_tpl->tpl_vars['QUALIFIED_MODULE']->value), 0);?>
</div><?php }} ?>