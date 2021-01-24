-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 22, 2021 at 01:29 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vtiger`
--
CREATE DATABASE IF NOT EXISTS `vtiger` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `vtiger`;

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflows`
--

CREATE TABLE `com_vtiger_workflows` (
  `workflow_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `summary` varchar(400) NOT NULL,
  `test` text DEFAULT NULL,
  `execution_condition` int(11) NOT NULL,
  `defaultworkflow` int(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `filtersavedinnew` int(1) DEFAULT NULL,
  `schtypeid` int(10) DEFAULT NULL,
  `schdayofmonth` varchar(100) DEFAULT NULL,
  `schdayofweek` varchar(100) DEFAULT NULL,
  `schannualdates` varchar(100) DEFAULT NULL,
  `schtime` varchar(50) DEFAULT NULL,
  `nexttrigger_time` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `workflowname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `com_vtiger_workflows`
--

INSERT INTO `com_vtiger_workflows` (`workflow_id`, `module_name`, `summary`, `test`, `execution_condition`, `defaultworkflow`, `type`, `filtersavedinnew`, `schtypeid`, `schdayofmonth`, `schdayofweek`, `schannualdates`, `schtime`, `nexttrigger_time`, `status`, `workflowname`) VALUES
(1, 'Invoice', 'UpdateInventoryProducts On Every Save', '[{\"fieldname\":\"subject\",\"operation\":\"does not contain\",\"value\":\"`!`\"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'UpdateInventoryProducts On Every Save'),
(2, 'Accounts', 'Send Email to user when Notifyowner is True', '[{\"fieldname\":\"notify_owner\",\"operation\":\"is\",\"value\":\"true:boolean\"}]', 2, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to user when Notifyowner is True'),
(3, 'Contacts', 'Send Email to user when Notifyowner is True', '[{\"fieldname\":\"notify_owner\",\"operation\":\"is\",\"value\":\"true:boolean\"}]', 2, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to user when Notifyowner is True'),
(4, 'Contacts', 'Send Email to user when Portal User is True', '[{\"fieldname\":\"portal\",\"operation\":\"is\",\"value\":\"1\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"email\",\"operation\":\"is not empty\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to user when Portal User is True'),
(5, 'Potentials', 'Send Email to users on Potential creation', NULL, 1, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to users on Potential creation'),
(6, 'Contacts', 'Workflow for Contact Creation or Modification', '', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Workflow for Contact Creation or Modification'),
(7, 'HelpDesk', 'Ticket Creation From Portal : Send Email to Record Owner and Contact', '[{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":1,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Ticket Creation From Portal : Send Email to Record Owner and Contact'),
(9, 'HelpDesk', 'Send Email to Contact on Ticket Update', '[{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":0,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"ticketstatus\",\"operation\":\"has changed to\",\"value\":\"Closed\",\"valuetype\":\"rawtext\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"solution\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"description\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to Contact on Ticket Update'),
(10, 'Events', 'Workflow for Events when Send Notification is True', '[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Workflow for Events when Send Notification is True'),
(11, 'Calendar', 'Workflow for Calendar Todos when Send Notification is True', '[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Workflow for Calendar Todos when Send Notification is True'),
(12, 'Potentials', 'Calculate or Update forecast amount', '', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Calculate or Update forecast amount'),
(13, 'Events', 'Workflow for Events when Send Notification is True', '[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Workflow for Events when Send Notification is True'),
(14, 'Calendar', 'Workflow for Calendar Todos when Send Notification is True', '[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Workflow for Calendar Todos when Send Notification is True'),
(15, 'HelpDesk', 'Comment Added From CRM : Send Email to Organization', '[{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"(parent_id : (Accounts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Comment Added From CRM : Send Email to Organization'),
(16, 'PurchaseOrder', 'Update Inventory Products On Every Save', NULL, 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Update Inventory Products On Every Save'),
(17, 'HelpDesk', 'Comment Added From Portal : Send Email to Record Owner', '[{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"1\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Comment Added From Portal : Send Email to Record Owner'),
(18, 'HelpDesk', 'Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User', '[{\"fieldname\":\"(contact_id : (Contacts) portal)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User'),
(19, 'HelpDesk', 'Comment Added From CRM : Send Email to Contact, where Contact is Portal User', '[{\"fieldname\":\"(contact_id : (Contacts) portal)\",\"operation\":\"is\",\"value\":\"1\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Comment Added From CRM : Send Email to Contact, where Contact is Portal User'),
(20, 'HelpDesk', 'Send Email to Record Owner on Ticket Update', '[{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":0,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"ticketstatus\",\"operation\":\"has changed to\",\"value\":\"Closed\",\"valuetype\":\"rawtext\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"solution\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"assigned_user_id\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"description\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to Record Owner on Ticket Update'),
(21, 'HelpDesk', 'Ticket Creation From CRM : Send Email to Record Owner', '[{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Ticket Creation From CRM : Send Email to Record Owner'),
(22, 'HelpDesk', 'Send Email to Organization on Ticket Update', '[{\"fieldname\":\"(parent_id : (Accounts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":0,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"ticketstatus\",\"operation\":\"has changed to\",\"value\":\"Closed\",\"valuetype\":\"rawtext\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"solution\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"description\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Send Email to Organization on Ticket Update'),
(23, 'HelpDesk', 'Ticket Creation From CRM : Send Email to Organization', '[{\"fieldname\":\"(parent_id : (Accounts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Ticket Creation From CRM : Send Email to Organization'),
(24, 'HelpDesk', 'Ticket Creation From CRM : Send Email to Contact', '[{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Ticket Creation From CRM : Send Email to Contact');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflows_seq`
--

CREATE TABLE `com_vtiger_workflows_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `com_vtiger_workflows_seq`
--

INSERT INTO `com_vtiger_workflows_seq` (`id`) VALUES
(24);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks`
--

CREATE TABLE `com_vtiger_workflowtasks` (
  `task_id` int(11) NOT NULL,
  `workflow_id` int(11) DEFAULT NULL,
  `summary` varchar(400) NOT NULL,
  `task` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `com_vtiger_workflowtasks`
--

INSERT INTO `com_vtiger_workflowtasks` (`task_id`, `workflow_id`, `summary`, `task`) VALUES
(1, 1, '', 'O:18:\"VTEntityMethodTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:1;s:7:\"summary\";s:0:\"\";s:6:\"active\";b:1;s:10:\"methodName\";s:15:\"UpdateInventory\";s:2:\"id\";i:1;}'),
(2, 2, 'An account has been created ', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"2\";s:7:\"summary\";s:28:\"An account has been created \";s:6:\"active\";s:1:\"1\";s:10:\"methodName\";s:11:\"NotifyOwner\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:26:\"Regarding Account Creation\";s:7:\"content\";s:301:\"An Account has been assigned to you on vtigerCRM<br>Details of account are :<br><br>AccountId:<b>$account_no</b><br>AccountName:<b>$accountname</b><br>Rating:<b>$rating</b><br>Industry:<b>$industry</b><br>AccountType:<b>$accounttype</b><br>Description:<b>$description</b><br><br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"2\";}'),
(3, 3, 'An contact has been created ', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"3\";s:7:\"summary\";s:28:\"An contact has been created \";s:6:\"active\";s:1:\"1\";s:10:\"methodName\";s:11:\"NotifyOwner\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:26:\"Regarding Contact Creation\";s:7:\"content\";s:305:\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>$contact_no</b><br>LastName:<b>$lastname</b><br>FirstName:<b>$firstname</b><br>Lead Source:<b>$leadsource</b><br>Department:<b>$department</b><br>Description:<b>$description</b><br><br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"3\";}'),
(4, 4, 'Email Customer Portal Login Details', 'O:18:\"VTEntityMethodTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:4;s:7:\"summary\";s:35:\"Email Customer Portal Login Details\";s:6:\"active\";b:1;s:10:\"methodName\";s:22:\"SendPortalLoginDetails\";s:2:\"id\";i:4;}'),
(5, 5, 'An Potential has been created ', 'O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"5\";s:7:\"summary\";s:30:\"An Potential has been created \";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:30:\"Regarding Potential Assignment\";s:7:\"content\";s:342:\"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>$potential_no</b><br>Potential Name:<b>$potentialname</b><br>Amount:<b>$amount</b><br>Expected Close Date:<b>$closingdate ($_DATE_FORMAT_)</b><br>Type:<b>$opportunity_type</b><br><br><br>Description :$description<br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"5\";}'),
(6, 6, 'An contact has been created ', 'O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"6\";s:7:\"summary\";s:28:\"An contact has been created \";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:28:\"Regarding Contact Assignment\";s:7:\"content\";s:384:\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>$contact_no</b><br>LastName:<b>$lastname</b><br>FirstName:<b>$firstname</b><br>Lead Source:<b>$leadsource</b><br>Department:<b>$department</b><br>Description:<b>$description</b><br><br><br>And <b>CustomerPortal Login Details</b> is sent to the EmailID :-$email<br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"6\";}'),
(7, 7, 'Notify Related Contact when Ticket is created from Portal', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:57:\"Notify Related Contact when Ticket is created from Portal\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:1:\"7\";s:10:\"workflowId\";s:1:\"7\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:93:\"[From Portal] $ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:158:\"Ticket No : $ticket_no<br>\n							  Ticket ID : $(general : (__VtigerMeta__) recordId)<br>\n							  Ticket Title : $ticket_title<br><br>\n							  $description\";}'),
(10, 9, 'Send Email to Contact on Ticket Update', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:38:\"Send Email to Contact on Ticket Update\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"10\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:624:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution<br>\n								The comments are : <br>\n								$allComments<br><br>\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:1:\"9\";}'),
(13, 12, 'update forecast amount', 'O:18:\"VTUpdateFieldsTask\":7:{s:18:\"executeImmediately\";b:1;s:43:\"\0VTUpdateFieldsTask\0referenceFieldFocusList\";a:0:{}s:10:\"workflowId\";i:12;s:7:\"summary\";s:22:\"update forecast amount\";s:6:\"active\";b:1;s:19:\"field_value_mapping\";s:95:\"[{\"fieldname\":\"forecast_amount\",\"valuetype\":\"expression\",\"value\":\"amount * probability / 100\"}]\";s:2:\"id\";i:13;}'),
(14, 13, 'Send Notification Email to Record Owner', 'O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:2:\"13\";s:7:\"summary\";s:39:\"Send Notification Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:17:\"Event :  $subject\";s:7:\"content\";s:771:\"$(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name) ,<br/><b>Activity Notification Details:</b><br/>Subject             : $subject<br/>Start date and time : $date_start ($(general : (__VtigerMeta__) usertimezone))<br/>End date and time   : $due_date ($(general : (__VtigerMeta__) usertimezone)) <br/>Status              : $eventstatus <br/>Priority            : $taskpriority <br/>Related To          : $(parent_id : (Leads) lastname) $(parent_id : (Leads) firstname) $(parent_id : (Accounts) accountname) $(parent_id : (Potentials) potentialname) $(parent_id : (HelpDesk) ticket_title) $(parent_id : (Campaigns) campaignname) <br/>Contacts List       : $contact_id <br/>Location            : $location <br/>Description         : $description\";s:2:\"id\";s:2:\"14\";}'),
(15, 14, 'Send Notification Email to Record Owner', 'O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:2:\"14\";s:7:\"summary\";s:39:\"Send Notification Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:16:\"Task :  $subject\";s:7:\"content\";s:689:\"$(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name) ,<br/><b>Task Notification Details:</b><br/>Subject : $subject<br/>Start date and time : $date_start ($(general : (__VtigerMeta__) usertimezone))<br/>End date and time   : $due_date ($_DATE_FORMAT_) <br/>Status              : $taskstatus <br/>Priority            : $taskpriority <br/>Related To          : $(parent_id : (Leads) lastname) $(parent_id : (Leads) firstname) $(parent_id : (Accounts) accountname) $(parent_id : (Potentials) potentialname) $(parent_id : (HelpDesk) ticket_title) $(parent_id : (Campaigns) campaignname) <br/>Contacts List       : $contact_id <br/>Description         : $description\";s:2:\"id\";s:2:\"15\";}'),
(18, 16, 'Update Inventory Products', 'O:18:\"VTEntityMethodTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:16;s:7:\"summary\";s:25:\"Update Inventory Products\";s:6:\"active\";b:1;s:10:\"methodName\";s:15:\"UpdateInventory\";s:2:\"id\";i:18;}'),
(19, 17, 'Comment Added From Portal : Send Email to Record Owner', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:54:\"Comment Added From Portal : Send Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"19\";s:10:\"workflowId\";s:2:\"17\";s:9:\"fromEmail\";s:112:\"$(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname)&lt;$(contact_id : (Contacts) email)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:92:\"Respond to Ticket ID## $(general : (__VtigerMeta__) recordId) ## in Customer Portal - URGENT\";s:7:\"content\";s:325:\"Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\n								Customer has provided the following additional information to your reply:<br><br>\n								<b>$lastComment</b><br><br>\n								Kindly respond to above ticket at the earliest.<br><br>\n								Regards<br>Support Administrator\";}'),
(20, 18, 'Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:82:\"Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"20\";s:10:\"workflowId\";s:2:\"18\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:514:\"Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\n							The Ticket is replied the details are :<br><br>\n							Ticket No : $ticket_no<br>\n							Status : $ticketstatus<br>\n							Category : $ticketcategories<br>\n							Severity : $ticketseverities<br>\n							Priority : $ticketpriorities<br><br>\n							Description : <br>$description<br><br>\n							Solution : <br>$solution<br>\n							The comments are : <br>\n							$allComments<br><br>\n							Regards<br>Support Administrator\";}'),
(21, 19, 'Comment Added From CRM : Send Email to Contact, where Contact is Portal User', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:76:\"Comment Added From CRM : Send Email to Contact, where Contact is Portal User\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"21\";s:10:\"workflowId\";s:2:\"19\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:547:\"Ticket No : $ticket_no<br>\n										Ticket Id : $(general : (__VtigerMeta__) recordId)<br>\n										Subject : $ticket_title<br><br>\n										Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\n										There is a reply to <b>$ticket_title</b> in the \"Customer Portal\" at VTiger.\n										You can use the following link to view the replies made:<br>\n										<a href=\"$(general : (__VtigerMeta__) portaldetailviewurl)\">Ticket Details</a><br><br>\n										Thanks<br>$(general : (__VtigerMeta__) supportName)\";}'),
(22, 15, 'Comment Added From CRM : Send Email to Organization', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:51:\"Comment Added From CRM : Send Email to Organization\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"22\";s:10:\"workflowId\";s:2:\"15\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:34:\",$(parent_id : (Accounts) email1),\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:589:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(parent_id : (Accounts) accountname),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution<br>\n								The comments are : <br>\n								$allComments<br><br>\n								Regards<br>Support Administrator\";}'),
(23, 7, 'Notify Record Owner when Ticket is created from Portal', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:54:\"Notify Record Owner when Ticket is created from Portal\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"23\";s:10:\"workflowId\";s:1:\"7\";s:9:\"fromEmail\";s:124:\"$(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:93:\"[From Portal] $ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:158:\"Ticket No : $ticket_no<br>\n							  Ticket ID : $(general : (__VtigerMeta__) recordId)<br>\n							  Ticket Title : $ticket_title<br><br>\n							  $description\";}'),
(24, 20, 'Send Email to Record Owner on Ticket Update', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:43:\"Send Email to Record Owner on Ticket Update\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"24\";s:10:\"workflowId\";s:2:\"20\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:40:\"Ticket Number : $ticket_no $ticket_title\";s:7:\"content\";s:596:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution\n								$allComments<br><br>\n								Regards<br>Support Administrator\";}'),
(25, 21, 'Ticket Creation From CRM : Send Email to Record Owner', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:53:\"Ticket Creation From CRM : Send Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"25\";s:10:\"workflowId\";s:2:\"21\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:40:\"Ticket Number : $ticket_no $ticket_title\";s:7:\"content\";s:596:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution\n								$allComments<br><br>\n								Regards<br>Support Administrator\";}'),
(26, 22, 'Send Email to Organization on Ticket Update', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:43:\"Send Email to Organization on Ticket Update\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"26\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(parent_id : (Accounts) email1)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:589:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(parent_id : (Accounts) accountname),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution<br>\n								The comments are : <br>\n								$allComments<br><br>\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:2:\"22\";}'),
(27, 23, 'Ticket Creation From CRM : Send Email to Organization', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:53:\"Ticket Creation From CRM : Send Email to Organization\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"27\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(parent_id : (Accounts) email1)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:589:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(parent_id : (Accounts) accountname),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution<br>\n								The comments are : <br>\n								$allComments<br><br>\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:2:\"23\";}'),
(28, 24, 'Ticket Creation From CRM : Send Email to Contact', 'O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:48:\"Ticket Creation From CRM : Send Email to Contact\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"28\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:624:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\n								Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\n								The Ticket is replied the details are :<br><br>\n								Ticket No : $ticket_no<br>\n								Status : $ticketstatus<br>\n								Category : $ticketcategories<br>\n								Severity : $ticketseverities<br>\n								Priority : $ticketpriorities<br><br>\n								Description : <br>$description<br><br>\n								Solution : <br>$solution<br>\n								The comments are : <br>\n								$allComments<br><br>\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:2:\"24\";}');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks_entitymethod`
--

CREATE TABLE `com_vtiger_workflowtasks_entitymethod` (
  `workflowtasks_entitymethod_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `method_name` varchar(100) DEFAULT NULL,
  `function_path` varchar(400) DEFAULT NULL,
  `function_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `com_vtiger_workflowtasks_entitymethod`
--

INSERT INTO `com_vtiger_workflowtasks_entitymethod` (`workflowtasks_entitymethod_id`, `module_name`, `method_name`, `function_path`, `function_name`) VALUES
(1, 'SalesOrder', 'UpdateInventory', 'include/InventoryHandler.php', 'handleInventoryProductRel'),
(2, 'Invoice', 'UpdateInventory', 'include/InventoryHandler.php', 'handleInventoryProductRel'),
(3, 'Contacts', 'SendPortalLoginDetails', 'modules/Contacts/ContactsHandler.php', 'Contacts_sendCustomerPortalLoginDetails'),
(4, 'HelpDesk', 'NotifyOnPortalTicketCreation', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDesk_nofifyOnPortalTicketCreation'),
(5, 'HelpDesk', 'NotifyOnPortalTicketComment', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDesk_notifyOnPortalTicketComment'),
(6, 'HelpDesk', 'NotifyOwnerOnTicketChange', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDesk_notifyOwnerOnTicketChange'),
(7, 'HelpDesk', 'NotifyParentOnTicketChange', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDesk_notifyParentOnTicketChange'),
(8, 'ModComments', 'CustomerCommentFromPortal', 'modules/ModComments/ModCommentsHandler.php', 'CustomerCommentFromPortal'),
(9, 'ModComments', 'TicketOwnerComments', 'modules/ModComments/ModCommentsHandler.php', 'TicketOwnerComments'),
(10, 'PurchaseOrder', 'UpdateInventory', 'include/InventoryHandler.php', 'handleInventoryProductRel');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks_entitymethod_seq`
--

CREATE TABLE `com_vtiger_workflowtasks_entitymethod_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `com_vtiger_workflowtasks_entitymethod_seq`
--

INSERT INTO `com_vtiger_workflowtasks_entitymethod_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks_seq`
--

CREATE TABLE `com_vtiger_workflowtasks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `com_vtiger_workflowtasks_seq`
--

INSERT INTO `com_vtiger_workflowtasks_seq` (`id`) VALUES
(28);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtask_queue`
--

CREATE TABLE `com_vtiger_workflowtask_queue` (
  `task_id` int(11) DEFAULT NULL,
  `entity_id` varchar(100) DEFAULT NULL,
  `do_after` int(11) DEFAULT NULL,
  `relatedinfo` varchar(255) DEFAULT NULL,
  `task_contents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `com_vtiger_workflowtask_queue`
--

INSERT INTO `com_vtiger_workflowtask_queue` (`task_id`, `entity_id`, `do_after`, `relatedinfo`, `task_contents`) VALUES
(6, '12x26', 0, 'false', '{\"fromEmail\":\"tranm2519032@gstudent.ctu.edu.vn\",\"fromName\":\"Ng\\u1ecdc Tr&acirc;n Nguy\\u1ec5n\",\"replyTo\":\"vanM2519034@gstudent.ctu.edu.vn\",\"toEmail\":\"tranm2519032@gstudent.ctu.edu.vn\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Contact Assignment\",\"content\":\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>Tr\\u1ea7n<\\/b><br>FirstName:<b>Hoa<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin<br><br>Nguy\\u1ec5n Th\\u00e1i Th\\u1ecb Ng\\u1ecdc Tr\\u00e2n<br \\/>\\nH\\u1ec7 th\\u1ed1ng th\\u00f4ng tin - K26<br \\/>\\n\\u0110\\u1ea1i h\\u1ecdc C\\u1ea7n Th\\u01a1<br \\/>\\n\\u00a0\"}'),
(5, '13x27', 0, 'false', '{\"fromEmail\":\"tranm2519032@gstudent.ctu.edu.vn\",\"fromName\":\"Ng\\u1ecdc Tr&acirc;n Nguy\\u1ec5n\",\"replyTo\":\"vanM2519034@gstudent.ctu.edu.vn\",\"toEmail\":\"tranm2519032@gstudent.ctu.edu.vn\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Potential Assignment\",\"content\":\"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>POT1<\\/b><br>Potential Name:<b>KH c\\u00e1 nh\\u00e2n<\\/b><br>Amount:<b>\\u20ab500,000.00<\\/b><br>Expected Close Date:<b>25-01-2021 (dd-mm-yyyy)<\\/b><br>Type:<b><\\/b><br><br><br>Description :<br><br>Thank You<br>Admin<br><br>Nguy\\u1ec5n Th\\u00e1i Th\\u1ecb Ng\\u1ecdc Tr\\u00e2n<br \\/>\\nH\\u1ec7 th\\u1ed1ng th\\u00f4ng tin - K26<br \\/>\\n\\u0110\\u1ea1i h\\u1ecdc C\\u1ea7n Th\\u01a1<br \\/>\\n\\u00a0\"}'),
(5, '13x29', 0, 'false', '{\"fromEmail\":\"tranm2519032@gstudent.ctu.edu.vn\",\"fromName\":\"Ng\\u1ecdc Tr&acirc;n Nguy\\u1ec5n\",\"replyTo\":\"vanM2519034@gstudent.ctu.edu.vn\",\"toEmail\":\"tranm2519032@gstudent.ctu.edu.vn\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Potential Assignment\",\"content\":\"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>POT2<\\/b><br>Potential Name:<b>Mua h\\u00e0ng s\\u1ed1 l\\u01b0\\u1ee3ng l\\u1edbn<\\/b><br>Amount:<b>\\u20ab0.00<\\/b><br>Expected Close Date:<b>25-01-2021 (dd-mm-yyyy)<\\/b><br>Type:<b><\\/b><br><br><br>Description :<br><br>Thank You<br>Admin<br><br>Nguy\\u1ec5n Th\\u00e1i Th\\u1ecb Ng\\u1ecdc Tr\\u00e2n<br \\/>\\nH\\u1ec7 th\\u1ed1ng th\\u00f4ng tin - K26<br \\/>\\n\\u0110\\u1ea1i h\\u1ecdc C\\u1ea7n Th\\u01a1<br \\/>\\n\\u00a0\"}'),
(6, '12x26', 0, 'false', '{\"fromEmail\":\"nhum2519020@gstudent.ctu.edu.vn\",\"fromName\":\"Qu\\u1ef3nh Nh\\u01b0 D\\u01b0\\u01a1ng\",\"replyTo\":\"vanM2519034@gstudent.ctu.edu.vn\",\"toEmail\":\"nhum2519020@gstudent.ctu.edu.vn\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Contact Assignment\",\"content\":\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>Tr\\u1ea7n<\\/b><br>FirstName:<b>Hoa<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin<br><br>\"}'),
(6, '12x30', 0, 'false', '{\"fromEmail\":\"nhum2519020@gstudent.ctu.edu.vn\",\"fromName\":\"Qu\\u1ef3nh Nh\\u01b0 D\\u01b0\\u01a1ng\",\"replyTo\":\"vanM2519034@gstudent.ctu.edu.vn\",\"toEmail\":\"nhum2519020@gstudent.ctu.edu.vn\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Contact Assignment\",\"content\":\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON4<\\/b><br>LastName:<b>Lan<\\/b><br>FirstName:<b><\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin<br><br>\"}'),
(25, '17x31', 0, 'false', '{\"fromEmail\":\"vanM2519034@gstudent.ctu.edu.vn\",\"fromName\":\"your-support name\",\"replyTo\":\"vanM2519034@gstudent.ctu.edu.vn\",\"toEmail\":\",nhum2519020@gstudent.ctu.edu.vn\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Ticket Number : TT1 Ch\\u00ednh s\\u00e1ch \\u01b0u \\u0111\\u00e3i\",\"content\":\"Ticket ID : 31<br>Ticket Title : Ch\\u00ednh s\\u00e1ch \\u01b0u \\u0111\\u00e3i<br><br>\\n\\t\\t\\t\\t\\t\\t\\t\\tDear D\\u01b0\\u01a1ng Qu\\u1ef3nh Nh\\u01b0,<br><br>\\n\\t\\t\\t\\t\\t\\t\\t\\tThe Ticket is replied the details are :<br><br>\\n\\t\\t\\t\\t\\t\\t\\t\\tTicket No : TT1<br>\\n\\t\\t\\t\\t\\t\\t\\t\\tStatus : Open<br>\\n\\t\\t\\t\\t\\t\\t\\t\\tCategory : <br>\\n\\t\\t\\t\\t\\t\\t\\t\\tSeverity : <br>\\n\\t\\t\\t\\t\\t\\t\\t\\tPriority : Cao<br><br>\\n\\t\\t\\t\\t\\t\\t\\t\\tDescription : <br>Mua s\\u1ed1 l\\u01b0\\u1ee3ng bao nhi\\u00eau th\\u00ec \\u0111\\u01b0\\u1ee3c chi\\u1ebft kh\\u1ea5u?<br><br>\\n\\t\\t\\t\\t\\t\\t\\t\\tSolution : <br>\\n\\t\\t\\t\\t\\t\\t\\t\\t<br><br>\\n\\t\\t\\t\\t\\t\\t\\t\\tRegards<br>Support Administrator<br><br>\"}');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtemplates`
--

CREATE TABLE `com_vtiger_workflowtemplates` (
  `template_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `title` varchar(400) DEFAULT NULL,
  `template` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflow_activatedonce`
--

CREATE TABLE `com_vtiger_workflow_activatedonce` (
  `workflow_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflow_tasktypes`
--

CREATE TABLE `com_vtiger_workflow_tasktypes` (
  `id` int(11) NOT NULL,
  `tasktypename` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `classpath` varchar(255) DEFAULT NULL,
  `templatepath` varchar(255) DEFAULT NULL,
  `modules` varchar(500) DEFAULT NULL,
  `sourcemodule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `com_vtiger_workflow_tasktypes`
--

INSERT INTO `com_vtiger_workflow_tasktypes` (`id`, `tasktypename`, `label`, `classname`, `classpath`, `templatepath`, `modules`, `sourcemodule`) VALUES
(1, 'VTEmailTask', 'Send Mail', 'VTEmailTask', 'modules/com_vtiger_workflow/tasks/VTEmailTask.inc', 'modules/Settings/Workflows/Tasks/VTEmailTask.tpl', '{\"include\":[],\"exclude\":[]}', ''),
(2, 'VTEntityMethodTask', 'Invoke Custom Function', 'VTEntityMethodTask', 'modules/com_vtiger_workflow/tasks/VTEntityMethodTask.inc', 'modules/Settings/Workflows/Tasks/VTEntityMethodTask.tpl', '{\"include\":[],\"exclude\":[]}', ''),
(3, 'VTCreateTodoTask', 'Create Todo', 'VTCreateTodoTask', 'modules/com_vtiger_workflow/tasks/VTCreateTodoTask.inc', 'modules/Settings/Workflows/Tasks/VTCreateTodoTask.tpl', '{\"include\":[\"Leads\",\"Accounts\",\"Potentials\",\"Contacts\",\"HelpDesk\",\"Campaigns\",\"Quotes\",\"PurchaseOrder\",\"SalesOrder\",\"Invoice\",\"Project\"],\"exclude\":[\"Calendar\",\"FAQ\",\"Events\"]}', ''),
(4, 'VTCreateEventTask', 'Create Event', 'VTCreateEventTask', 'modules/com_vtiger_workflow/tasks/VTCreateEventTask.inc', 'modules/Settings/Workflows/Tasks/VTCreateEventTask.tpl', '{\"include\":[\"Leads\",\"Accounts\",\"Potentials\",\"Contacts\",\"HelpDesk\",\"Campaigns\",\"Project\"],\"exclude\":[\"Calendar\",\"FAQ\",\"Events\"]}', ''),
(5, 'VTUpdateFieldsTask', 'Update Fields', 'VTUpdateFieldsTask', 'modules/com_vtiger_workflow/tasks/VTUpdateFieldsTask.inc', 'modules/Settings/Workflows/Tasks/VTUpdateFieldsTask.tpl', '{\"include\":[],\"exclude\":[]}', ''),
(6, 'VTCreateEntityTask', 'Create Entity', 'VTCreateEntityTask', 'modules/com_vtiger_workflow/tasks/VTCreateEntityTask.inc', 'modules/Settings/Workflows/Tasks/VTCreateEntityTask.tpl', '{\"include\":[],\"exclude\":[]}', ''),
(7, 'VTSMSTask', 'SMS Task', 'VTSMSTask', 'modules/com_vtiger_workflow/tasks/VTSMSTask.inc', 'modules/Settings/Workflows/Tasks/VTSMSTask.tpl', '{\"include\":[],\"exclude\":[]}', 'SMSNotifier');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflow_tasktypes_seq`
--

CREATE TABLE `com_vtiger_workflow_tasktypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `com_vtiger_workflow_tasktypes_seq`
--

INSERT INTO `com_vtiger_workflow_tasktypes_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_account`
--

CREATE TABLE `vtiger_account` (
  `accountid` int(19) NOT NULL DEFAULT 0,
  `account_no` varchar(100) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `parentid` int(19) DEFAULT 0,
  `account_type` varchar(200) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `annualrevenue` decimal(25,8) DEFAULT NULL,
  `rating` varchar(200) DEFAULT NULL,
  `ownership` varchar(50) DEFAULT NULL,
  `siccode` varchar(50) DEFAULT NULL,
  `tickersymbol` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `otherphone` varchar(30) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `employees` int(10) DEFAULT 0,
  `emailoptout` varchar(3) DEFAULT '0',
  `notify_owner` varchar(3) DEFAULT '0',
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_account`
--

INSERT INTO `vtiger_account` (`accountid`, `account_no`, `accountname`, `parentid`, `account_type`, `industry`, `annualrevenue`, `rating`, `ownership`, `siccode`, `tickersymbol`, `phone`, `otherphone`, `email1`, `email2`, `website`, `fax`, `employees`, `emailoptout`, `notify_owner`, `isconvertedfromlead`, `tags`) VALUES
(2, 'ACC1', 'Lê Lâm Mỹ Ngọc', 0, '', 'Education', '0.00000000', '', '', '', '', '0908123445', '', 'myngoc1506@gmail.com', '', '', '', 0, '0', '0', '0', ''),
(3, 'ACC2', 'Phan Thúy An', 0, '', '', '0.00000000', '', '', '', '', '0903898442', '', '', '', '', '', 0, '0', '0', '0', ''),
(4, 'ACC3', 'Đào Thiện Khiêm', 28, '', 'Education', '0.00000000', '', '', '', '', '0912344566', '', '', '', '', '', 0, '0', '0', '0', ''),
(13, 'ACC4', 'Tạp hóa Ngọc Mai', 0, '', '', '0.00000000', '', '', '', '', '0909123456', '', 'tranm2519032@gstudent.ctu.edu.vn', '', '', '', 0, '0', '0', '0', ''),
(25, 'ACC5', 'KH cá nhân', 0, '', '', '0.00000000', 'Active', '', '', '', '', '', '', '', '', '', 0, '0', '0', '1', ''),
(28, 'ACC6', 'Sở Giáo dục Đào tạo', 0, '', '', '0.00000000', '', '', '', '', '', '', '', '', '', '', 0, '0', '0', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountbillads`
--

CREATE TABLE `vtiger_accountbillads` (
  `accountaddressid` int(19) NOT NULL DEFAULT 0,
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_accountbillads`
--

INSERT INTO `vtiger_accountbillads` (`accountaddressid`, `bill_city`, `bill_code`, `bill_country`, `bill_state`, `bill_street`, `bill_pobox`) VALUES
(2, '', '', '', '', '', ''),
(3, '', '', '', '', '', ''),
(4, '', '', '', '', 'Cần Thơ', ''),
(13, '', '', '', '', '', ''),
(25, '', '', '', '', '', ''),
(28, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountrating`
--

CREATE TABLE `vtiger_accountrating` (
  `accountratingid` int(19) NOT NULL,
  `rating` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountscf`
--

CREATE TABLE `vtiger_accountscf` (
  `accountid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_accountscf`
--

INSERT INTO `vtiger_accountscf` (`accountid`) VALUES
(2),
(3),
(4),
(13),
(25),
(28);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountshipads`
--

CREATE TABLE `vtiger_accountshipads` (
  `accountaddressid` int(19) NOT NULL DEFAULT 0,
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_accountshipads`
--

INSERT INTO `vtiger_accountshipads` (`accountaddressid`, `ship_city`, `ship_code`, `ship_country`, `ship_state`, `ship_pobox`, `ship_street`) VALUES
(2, '', '', '', '', '', ''),
(3, '', '', '', '', '', ''),
(4, '', '', '', '', '', 'Cần Thơ'),
(13, '', '', '', '', '', ''),
(25, '', '', '', '', '', ''),
(28, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accounttype`
--

CREATE TABLE `vtiger_accounttype` (
  `accounttypeid` int(19) NOT NULL,
  `accounttype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_accounttype`
--

INSERT INTO `vtiger_accounttype` (`accounttypeid`, `accounttype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Analyst', 1, 2, 1, NULL),
(3, 'Competitor', 1, 3, 2, NULL),
(4, 'Customer', 1, 4, 3, NULL),
(5, 'Integrator', 1, 5, 4, NULL),
(6, 'Investor', 1, 6, 5, NULL),
(7, 'Partner', 1, 7, 6, NULL),
(8, 'Press', 1, 8, 7, NULL),
(9, 'Prospect', 1, 9, 8, NULL),
(10, 'Reseller', 1, 10, 9, NULL),
(11, 'Other', 1, 11, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accounttype_seq`
--

CREATE TABLE `vtiger_accounttype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_accounttype_seq`
--

INSERT INTO `vtiger_accounttype_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_actionmapping`
--

CREATE TABLE `vtiger_actionmapping` (
  `actionid` int(19) NOT NULL,
  `actionname` varchar(200) NOT NULL,
  `securitycheck` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_actionmapping`
--

INSERT INTO `vtiger_actionmapping` (`actionid`, `actionname`, `securitycheck`) VALUES
(0, 'Save', 0),
(0, 'SavePriceBook', 1),
(0, 'SaveVendor', 1),
(1, 'DetailViewAjax', 1),
(1, 'EditView', 0),
(1, 'PriceBookEditView', 1),
(1, 'QuickCreate', 1),
(1, 'VendorEditView', 1),
(2, 'Delete', 0),
(2, 'DeletePriceBook', 1),
(2, 'DeleteVendor', 1),
(3, 'index', 0),
(3, 'Popup', 1),
(4, 'DetailView', 0),
(4, 'PriceBookDetailView', 1),
(4, 'TagCloud', 1),
(4, 'VendorDetailView', 1),
(5, 'Import', 0),
(6, 'Export', 0),
(7, 'CreateView', 0),
(8, 'Merge', 0),
(9, 'ConvertLead', 0),
(10, 'DuplicatesHandling', 0),
(11, 'ReceiveIncomingCalls', 0),
(12, 'MakeOutgoingCalls', 0),
(13, 'Print', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity`
--

CREATE TABLE `vtiger_activity` (
  `activityid` int(19) NOT NULL DEFAULT 0,
  `subject` varchar(255) DEFAULT NULL,
  `semodule` varchar(20) DEFAULT NULL,
  `activitytype` varchar(200) NOT NULL,
  `date_start` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `time_start` varchar(50) DEFAULT NULL,
  `time_end` varchar(50) DEFAULT NULL,
  `sendnotification` varchar(3) NOT NULL DEFAULT '0',
  `duration_hours` varchar(200) DEFAULT NULL,
  `duration_minutes` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `eventstatus` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `notime` varchar(3) NOT NULL DEFAULT '0',
  `visibility` varchar(50) NOT NULL DEFAULT 'all',
  `recurringtype` varchar(200) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_activity`
--

INSERT INTO `vtiger_activity` (`activityid`, `subject`, `semodule`, `activitytype`, `date_start`, `due_date`, `time_start`, `time_end`, `sendnotification`, `duration_hours`, `duration_minutes`, `status`, `eventstatus`, `priority`, `location`, `notime`, `visibility`, `recurringtype`, `tags`) VALUES
(6, 'Chăm sóc khách hàng - Lần 1', NULL, 'Task', '2021-01-21', '2021-01-21', '07:31:00', '', '0', '9', '29', 'Planned', '', '', '', '0', 'Private', '', ''),
(12, 'Liên hệ điện thoại', NULL, 'Task', '2021-01-21', '2021-01-21', '09:51:00', '', '0', '7', '9', 'Planned', '', '', '', '0', 'Private', '', ''),
(14, 'Trao đổi trực tiếp', NULL, 'Task', '2021-01-21', '2021-01-21', '13:43:00', '', '0', '3', '17', 'Not Started', '', '', '', '0', 'Private', '', ''),
(18, '$companydetails-logoname$', '', 'Emails', '2021-01-21', NULL, '15:50', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'all', NULL, ''),
(34, 'Gửi mail giải đáp thắc mắc cho khách hàng', NULL, 'Task', '2021-01-22', '2021-01-22', '04:31:00', '', '0', '12', '29', 'Completed', '', '', '', '0', 'Private', '', ''),
(35, 'BẢNG CHIẾT KHẤU CHO KHÁCH SỈ', '', 'Emails', '2021-01-22', NULL, '04:39', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'all', NULL, ''),
(36, 'Gửi email trả lời', NULL, 'Task', '2021-01-22', '2021-01-22', '04:41:00', '', '0', '12', '19', 'Completed', '', '', '', '0', 'Private', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activitycf`
--

CREATE TABLE `vtiger_activitycf` (
  `activityid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_activitycf`
--

INSERT INTO `vtiger_activitycf` (`activityid`) VALUES
(6),
(12),
(14),
(34),
(36);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activityproductrel`
--

CREATE TABLE `vtiger_activityproductrel` (
  `activityid` int(19) NOT NULL DEFAULT 0,
  `productid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activitytype`
--

CREATE TABLE `vtiger_activitytype` (
  `activitytypeid` int(19) NOT NULL,
  `activitytype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_activitytype`
--

INSERT INTO `vtiger_activitytype` (`activitytypeid`, `activitytype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Call', 0, 12, 0, NULL),
(2, 'Meeting', 0, 13, 1, NULL),
(3, 'Mobile Call', 0, 295, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activitytype_seq`
--

CREATE TABLE `vtiger_activitytype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_activitytype_seq`
--

INSERT INTO `vtiger_activitytype_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_recurring_info`
--

CREATE TABLE `vtiger_activity_recurring_info` (
  `activityid` int(19) NOT NULL,
  `recurrenceid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_reminder`
--

CREATE TABLE `vtiger_activity_reminder` (
  `activity_id` int(11) NOT NULL,
  `reminder_time` int(11) NOT NULL,
  `reminder_sent` int(2) NOT NULL,
  `recurringid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_activity_reminder`
--

INSERT INTO `vtiger_activity_reminder` (`activity_id`, `reminder_time`, `reminder_sent`, `recurringid`) VALUES
(6, 0, 0, 0),
(12, 0, 0, 0),
(34, 0, 0, 0),
(36, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_reminder_popup`
--

CREATE TABLE `vtiger_activity_reminder_popup` (
  `reminderid` int(19) NOT NULL,
  `semodule` varchar(100) NOT NULL,
  `recordid` int(19) NOT NULL,
  `date_start` date NOT NULL,
  `time_start` varchar(100) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_view`
--

CREATE TABLE `vtiger_activity_view` (
  `activity_viewid` int(19) NOT NULL,
  `activity_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_activity_view`
--

INSERT INTO `vtiger_activity_view` (`activity_viewid`, `activity_view`, `sortorderid`, `presence`) VALUES
(1, 'Today', 0, 1),
(2, 'This Week', 1, 1),
(3, 'This Month', 2, 1),
(4, 'This Year', 3, 1),
(5, 'Agenda', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_view_seq`
--

CREATE TABLE `vtiger_activity_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_activity_view_seq`
--

INSERT INTO `vtiger_activity_view_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_announcement`
--

CREATE TABLE `vtiger_announcement` (
  `creatorid` int(19) NOT NULL,
  `announcement` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_app2tab`
--

CREATE TABLE `vtiger_app2tab` (
  `tabid` int(11) DEFAULT NULL,
  `appname` varchar(20) DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL,
  `visible` int(3) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_app2tab`
--

INSERT INTO `vtiger_app2tab` (`tabid`, `appname`, `sequence`, `visible`) VALUES
(31, 'INVENTORY', 2, 1),
(35, 'TOOLS', 5, 1),
(37, 'SUPPORT', 3, 1),
(39, 'TOOLS', 4, 1),
(40, 'TOOLS', 1, 1),
(49, 'SETTINGS', 1, 1),
(2, 'SALES', 1, 1),
(20, 'SALES', 2, 1),
(4, 'SALES', 6, 1),
(6, 'SALES', 7, 1),
(14, 'SALES', 3, 1),
(31, 'SALES', 4, 1),
(4, 'MARKETING', 3, 1),
(6, 'MARKETING', 4, 1),
(7, 'MARKETING', 2, 1),
(26, 'MARKETING', 1, 1),
(4, 'INVENTORY', 8, 1),
(6, 'INVENTORY', 9, 1),
(22, 'INVENTORY', 5, 1),
(23, 'INVENTORY', 4, 1),
(14, 'INVENTORY', 1, 1),
(18, 'INVENTORY', 7, 1),
(19, 'INVENTORY', 3, 1),
(21, 'INVENTORY', 6, 1),
(4, 'SUPPORT', 6, 1),
(6, 'SUPPORT', 7, 1),
(13, 'SUPPORT', 1, 1),
(15, 'SUPPORT', 2, 1),
(47, 'SUPPORT', 4, 1),
(45, 'PROJECT', 1, 1),
(44, 'PROJECT', 2, 1),
(43, 'PROJECT', 3, 1),
(4, 'PROJECT', 4, 1),
(6, 'PROJECT', 5, 1),
(42, 'SALES', 5, 1),
(42, 'SUPPORT', 5, 1),
(24, 'TOOLS', 2, 1),
(27, 'TOOLS', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assets`
--

CREATE TABLE `vtiger_assets` (
  `assetsid` int(11) NOT NULL,
  `asset_no` varchar(30) NOT NULL,
  `account` int(19) DEFAULT NULL,
  `product` int(19) NOT NULL,
  `serialnumber` varchar(200) DEFAULT NULL,
  `datesold` date DEFAULT NULL,
  `dateinservice` date DEFAULT NULL,
  `assetstatus` varchar(200) DEFAULT 'In Service',
  `tagnumber` varchar(300) DEFAULT NULL,
  `invoiceid` int(19) DEFAULT NULL,
  `shippingmethod` varchar(200) DEFAULT NULL,
  `shippingtrackingnumber` varchar(200) DEFAULT NULL,
  `assetname` varchar(100) DEFAULT NULL,
  `contact` int(19) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assetscf`
--

CREATE TABLE `vtiger_assetscf` (
  `assetsid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assetstatus`
--

CREATE TABLE `vtiger_assetstatus` (
  `assetstatusid` int(11) NOT NULL,
  `assetstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_assetstatus`
--

INSERT INTO `vtiger_assetstatus` (`assetstatusid`, `assetstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'In Service', 1, 286, 1, NULL),
(2, 'Out-of-service', 1, 287, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assetstatus_seq`
--

CREATE TABLE `vtiger_assetstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_assetstatus_seq`
--

INSERT INTO `vtiger_assetstatus_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asterisk`
--

CREATE TABLE `vtiger_asterisk` (
  `server` varchar(30) DEFAULT NULL,
  `port` varchar(30) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asteriskextensions`
--

CREATE TABLE `vtiger_asteriskextensions` (
  `userid` int(11) DEFAULT NULL,
  `asterisk_extension` varchar(50) DEFAULT NULL,
  `use_asterisk` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_asteriskextensions`
--

INSERT INTO `vtiger_asteriskextensions` (`userid`, `asterisk_extension`, `use_asterisk`) VALUES
(1, NULL, NULL),
(5, NULL, NULL),
(6, NULL, NULL),
(7, NULL, NULL),
(8, NULL, NULL),
(9, NULL, NULL),
(10, NULL, NULL),
(11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asteriskincomingcalls`
--

CREATE TABLE `vtiger_asteriskincomingcalls` (
  `from_number` varchar(50) DEFAULT NULL,
  `from_name` varchar(50) DEFAULT NULL,
  `to_number` varchar(50) DEFAULT NULL,
  `callertype` varchar(30) DEFAULT NULL,
  `flag` int(19) DEFAULT NULL,
  `timer` int(19) DEFAULT NULL,
  `refuid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asteriskincomingevents`
--

CREATE TABLE `vtiger_asteriskincomingevents` (
  `uid` varchar(255) NOT NULL,
  `channel` varchar(100) DEFAULT NULL,
  `from_number` bigint(20) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `to_number` bigint(20) DEFAULT NULL,
  `callertype` varchar(100) DEFAULT NULL,
  `timer` int(20) DEFAULT NULL,
  `flag` varchar(3) DEFAULT NULL,
  `pbxrecordid` int(19) DEFAULT NULL,
  `relcrmid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_attachments`
--

CREATE TABLE `vtiger_attachments` (
  `attachmentsid` int(19) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `path` text DEFAULT NULL,
  `storedname` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_attachments`
--

INSERT INTO `vtiger_attachments` (`attachmentsid`, `name`, `description`, `type`, `path`, `storedname`, `subject`) VALUES
(19, 'nuoc-ngot-dong-gia-chi-tu-5-5k-chai-30k-loc-118k-thung-1_800x400.jpg', '<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\r\n<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body class=\"scayt-enabled\">\r\n<div>\r\n<center>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"borderGrey\" width=\"600px\">\r\n	<tbody>\r\n		<tr style=\"height:50px;\">\r\n			<td colspan=\"6\" style=\"border-top: 1px solid rgb(221, 221, 221); font-family: Helvetica, Verdana, sans-serif; text-align: center;\"><strong><span style=\"color:#FF0000;\">CHƯƠNG TRÌNH KHUYẾN MÃI TẾT 2021</span></strong><br />\r\n			<br />\r\n			<span aria-hidden=\"false\" role=\"presentation\" style=\"display: contents;\"><span class=\"object-value\"><span class=\"objectBox objectBox-string\" title=\"Object\">Nước ngọt đồng giá chỉ từ 5.5k/chai, 30k/lốc, 118k/thùng </span></span></span><br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\" style=\"font-family: Helvetica,Verdana,sans-serif;font-size: 11px;color: #666666;\">\r\n			<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td colspan=\"2\" id=\"social\" valign=\"middle\">\r\n						<center>\r\n						<div>&nbsp;<a href=\"\" target=\"_blank\"> follow on Twitter</a> | <a href=\"\" target=\"_blank\">follow on Facebook</a></div>\r\n						</center>\r\n						</td>\r\n					</tr>\r\n					<!--copy right data-->\r\n					<tr>\r\n						<td valign=\"top\" width=\"350px\">\r\n						<center>\r\n						<div><em>Copyright © 2021 <a href=\"http://www.nhom2crm.com\" target=\"_blank\">www.nhom2crm.com</a>, All rights reserved.</em></div>\r\n						</center>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>\r\n', 'image/jpeg', 'storage/2021/January/week3/', 'b470b649b21dd937c01fc7f7e8e94b6f.jpg', NULL),
(20, '52._Nguyen_Thai_Thi_Ngoc_Tran.jpg', '', 'image/jpeg', 'storage/2021/January/week3/', '91fc7cec718418b5c6e36d471a43d132.jpg', NULL),
(21, 'nhu.png', '', 'image/png', 'storage/2021/January/week3/', '2c3caf84d8e93005c94a79607bf5154b.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_attachmentsfolder`
--

CREATE TABLE `vtiger_attachmentsfolder` (
  `folderid` int(19) NOT NULL,
  `foldername` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `createdby` int(19) NOT NULL,
  `sequence` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_attachmentsfolder`
--

INSERT INTO `vtiger_attachmentsfolder` (`folderid`, `foldername`, `description`, `createdby`, `sequence`) VALUES
(1, 'Default', 'This is a Default Folder', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_attachmentsfolder_seq`
--

CREATE TABLE `vtiger_attachmentsfolder_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_attachmentsfolder_seq`
--

INSERT INTO `vtiger_attachmentsfolder_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_audit_trial`
--

CREATE TABLE `vtiger_audit_trial` (
  `auditid` int(19) NOT NULL,
  `userid` int(19) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `recordid` varchar(20) DEFAULT NULL,
  `actiondate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_blocks`
--

CREATE TABLE `vtiger_blocks` (
  `blockid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `blocklabel` varchar(100) NOT NULL,
  `sequence` int(10) DEFAULT NULL,
  `show_title` int(2) DEFAULT NULL,
  `visible` int(2) NOT NULL DEFAULT 0,
  `create_view` int(2) NOT NULL DEFAULT 0,
  `edit_view` int(2) NOT NULL DEFAULT 0,
  `detail_view` int(2) NOT NULL DEFAULT 0,
  `display_status` int(1) NOT NULL DEFAULT 1,
  `iscustom` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_blocks`
--

INSERT INTO `vtiger_blocks` (`blockid`, `tabid`, `blocklabel`, `sequence`, `show_title`, `visible`, `create_view`, `edit_view`, `detail_view`, `display_status`, `iscustom`) VALUES
(1, 2, 'LBL_OPPORTUNITY_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(2, 2, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(3, 2, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(4, 4, 'LBL_CONTACT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(5, 4, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(6, 4, 'LBL_CUSTOMER_PORTAL_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(7, 4, 'LBL_ADDRESS_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(8, 4, 'LBL_DESCRIPTION_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(9, 6, 'LBL_ACCOUNT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(10, 6, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(11, 6, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(12, 6, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(13, 7, 'LBL_LEAD_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(14, 7, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(15, 7, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(16, 7, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(17, 8, 'LBL_NOTE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(18, 8, 'LBL_FILE_INFORMATION', 3, 1, 0, 0, 0, 0, 1, 0),
(19, 9, 'LBL_TASK_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(20, 9, 'LBL_DESCRIPTION_INFORMATION', 3, 1, 0, 0, 0, 0, 1, 0),
(21, 10, 'LBL_EMAIL_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(22, 10, 'Emails_Block1', 2, 1, 0, 0, 0, 0, 1, 0),
(23, 10, 'Emails_Block2', 3, 1, 0, 0, 0, 0, 1, 0),
(24, 10, 'Emails_Block3', 4, 1, 0, 0, 0, 0, 1, 0),
(25, 13, 'LBL_TICKET_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(26, 13, '', 2, 1, 0, 0, 0, 0, 1, 0),
(27, 13, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(28, 13, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(29, 13, 'LBL_TICKET_RESOLUTION', 5, 0, 0, 1, 0, 0, 1, 0),
(30, 13, 'LBL_COMMENTS', 6, 0, 0, 1, 0, 0, 1, 0),
(31, 14, 'LBL_PRODUCT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(32, 14, 'LBL_PRICING_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(33, 14, 'LBL_STOCK_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(34, 14, 'LBL_CUSTOM_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(35, 14, 'LBL_IMAGE_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(36, 14, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(37, 15, 'LBL_FAQ_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(38, 15, 'LBL_COMMENT_INFORMATION', 4, 0, 0, 1, 0, 0, 1, 0),
(39, 16, 'LBL_EVENT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(40, 16, 'LBL_REMINDER_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(41, 16, 'LBL_DESCRIPTION_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(42, 18, 'LBL_VENDOR_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(43, 18, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(44, 18, 'LBL_VENDOR_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(45, 18, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(46, 19, 'LBL_PRICEBOOK_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(47, 19, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(48, 19, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(49, 20, 'LBL_QUOTE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(50, 20, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(51, 20, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(52, 20, 'LBL_RELATED_PRODUCTS', 4, 0, 0, 0, 0, 0, 1, 0),
(53, 20, 'LBL_TERMS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(54, 20, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(55, 21, 'LBL_PO_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(56, 21, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(57, 21, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(58, 21, 'LBL_RELATED_PRODUCTS', 4, 0, 0, 0, 0, 0, 1, 0),
(59, 21, 'LBL_TERMS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(60, 21, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(61, 22, 'LBL_SO_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(62, 22, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(63, 22, 'LBL_ADDRESS_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(64, 22, 'LBL_RELATED_PRODUCTS', 5, 0, 0, 0, 0, 0, 1, 0),
(65, 22, 'LBL_TERMS_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(66, 22, 'LBL_DESCRIPTION_INFORMATION', 7, 0, 0, 0, 0, 0, 1, 0),
(67, 23, 'LBL_INVOICE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(68, 23, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(69, 23, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(70, 23, 'LBL_RELATED_PRODUCTS', 4, 0, 0, 0, 0, 0, 1, 0),
(71, 23, 'LBL_TERMS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(72, 23, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(73, 4, 'LBL_IMAGE_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(74, 26, 'LBL_CAMPAIGN_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(75, 26, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(76, 26, 'LBL_EXPECTATIONS_AND_ACTUALS', 3, 0, 0, 0, 0, 0, 1, 0),
(77, 29, 'LBL_USERLOGIN_ROLE', 1, 0, 0, 0, 0, 0, 1, 0),
(78, 29, 'LBL_CURRENCY_CONFIGURATION', 3, 0, 0, 0, 0, 0, 1, 0),
(79, 29, 'LBL_MORE_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(80, 29, 'LBL_ADDRESS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(81, 26, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(82, 29, 'LBL_USER_IMAGE_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(83, 29, 'LBL_USER_ADV_OPTIONS', 6, 0, 0, 0, 0, 0, 1, 0),
(84, 8, 'LBL_DESCRIPTION', 2, 0, 0, 0, 0, 0, 1, 0),
(85, 22, 'Recurring Invoice Information', 2, 0, 0, 0, 0, 0, 1, 0),
(86, 9, 'LBL_CUSTOM_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(87, 16, 'LBL_CUSTOM_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(88, 31, 'LBL_SERVICE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(89, 31, 'LBL_PRICING_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(90, 31, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(91, 31, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(92, 35, 'LBL_PBXMANAGER_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(93, 37, 'LBL_SERVICE_CONTRACT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(94, 37, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(95, 38, 'LBL_MODCOMMENTS_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(96, 38, 'LBL_OTHER_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(97, 38, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(98, 42, 'LBL_SMSNOTIFIER_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(99, 42, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(100, 42, 'StatusInformation', 3, 0, 0, 0, 0, 0, 1, 0),
(101, 43, 'LBL_PROJECT_MILESTONE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(102, 43, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(103, 43, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(104, 44, 'LBL_PROJECT_TASK_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(105, 44, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(106, 44, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(107, 45, 'LBL_PROJECT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(108, 45, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(109, 45, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(110, 47, 'LBL_ASSET_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(111, 47, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(112, 47, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(113, 23, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(114, 22, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(115, 21, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(116, 20, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(117, 16, 'LBL_RECURRENCE_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(118, 29, 'LBL_CALENDAR_SETTINGS', 2, 0, 0, 0, 0, 0, 1, 0),
(119, 16, 'LBL_RELATED_TO', 4, 0, 0, 0, 0, 0, 1, 0),
(120, 9, 'LBL_REMINDER_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_blocks_seq`
--

CREATE TABLE `vtiger_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_blocks_seq`
--

INSERT INTO `vtiger_blocks_seq` (`id`) VALUES
(120);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendarsharedtype`
--

CREATE TABLE `vtiger_calendarsharedtype` (
  `calendarsharedtypeid` int(11) NOT NULL,
  `calendarsharedtype` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_calendarsharedtype`
--

INSERT INTO `vtiger_calendarsharedtype` (`calendarsharedtypeid`, `calendarsharedtype`, `sortorderid`, `presence`) VALUES
(1, 'public', 0, 1),
(2, 'private', 1, 1),
(3, 'seletedusers', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendarsharedtype_seq`
--

CREATE TABLE `vtiger_calendarsharedtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_calendarsharedtype_seq`
--

INSERT INTO `vtiger_calendarsharedtype_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_default_activitytypes`
--

CREATE TABLE `vtiger_calendar_default_activitytypes` (
  `id` int(19) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  `fieldname` varchar(50) DEFAULT NULL,
  `defaultcolor` varchar(50) DEFAULT NULL,
  `isdefault` int(11) DEFAULT 1,
  `conditions` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_calendar_default_activitytypes`
--

INSERT INTO `vtiger_calendar_default_activitytypes` (`id`, `module`, `fieldname`, `defaultcolor`, `isdefault`, `conditions`) VALUES
(1, 'Events', '[\"date_start\",\"due_date\"]', '#17309A', 1, ''),
(2, 'Calendar', '[\"date_start\",\"due_date\"]', '#3A87AD', 1, ''),
(3, 'Potentials', '[\"closingdate\"]', '#AA6705', 1, ''),
(4, 'Contacts', '[\"support_end_date\"]', '#953B39', 1, ''),
(5, 'Contacts', '[\"birthday\"]', '#545252', 1, ''),
(6, 'Invoice', '[\"duedate\"]', '#87865D', 1, ''),
(7, 'Project', '[\"startdate\",\"targetenddate\"]', '#C71585', 1, ''),
(8, 'ProjectTask', '[\"startdate\",\"enddate\"]', '#006400', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_default_activitytypes_seq`
--

CREATE TABLE `vtiger_calendar_default_activitytypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_calendar_default_activitytypes_seq`
--

INSERT INTO `vtiger_calendar_default_activitytypes_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_user_activitytypes`
--

CREATE TABLE `vtiger_calendar_user_activitytypes` (
  `id` int(19) NOT NULL,
  `defaultid` int(19) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `visible` int(19) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_calendar_user_activitytypes`
--

INSERT INTO `vtiger_calendar_user_activitytypes` (`id`, `defaultid`, `userid`, `color`, `visible`) VALUES
(1, 1, 1, '#17309A', 1),
(2, 2, 1, '#3A87AD', 1),
(3, 3, 1, '#AA6705', 1),
(4, 4, 1, '#953B39', 1),
(5, 5, 1, '#545252', 1),
(6, 6, 1, '#87865D', 1),
(7, 7, 1, '#C71585', 1),
(8, 8, 1, '#006400', 1),
(9, 1, 5, '#17309A', 1),
(10, 2, 5, '#3A87AD', 1),
(11, 3, 5, '#AA6705', 1),
(12, 4, 5, '#953B39', 1),
(13, 5, 5, '#545252', 1),
(14, 6, 5, '#87865D', 1),
(15, 7, 5, '#C71585', 1),
(16, 8, 5, '#006400', 1),
(17, 1, 6, '#17309A', 1),
(18, 2, 6, '#3A87AD', 1),
(19, 3, 6, '#AA6705', 1),
(20, 4, 6, '#953B39', 1),
(21, 5, 6, '#545252', 1),
(22, 6, 6, '#87865D', 1),
(23, 7, 6, '#C71585', 1),
(24, 8, 6, '#006400', 1),
(25, 1, 7, '#17309A', 1),
(26, 2, 7, '#3A87AD', 1),
(27, 3, 7, '#AA6705', 1),
(28, 4, 7, '#953B39', 1),
(29, 5, 7, '#545252', 1),
(30, 6, 7, '#87865D', 1),
(31, 7, 7, '#C71585', 1),
(32, 8, 7, '#006400', 1),
(33, 1, 8, '#17309A', 1),
(34, 2, 8, '#3A87AD', 1),
(35, 3, 8, '#AA6705', 1),
(36, 4, 8, '#953B39', 1),
(37, 5, 8, '#545252', 1),
(38, 6, 8, '#87865D', 1),
(39, 7, 8, '#C71585', 1),
(40, 8, 8, '#006400', 1),
(41, 1, 9, '#17309A', 1),
(42, 2, 9, '#3A87AD', 1),
(43, 3, 9, '#AA6705', 1),
(44, 4, 9, '#953B39', 1),
(45, 5, 9, '#545252', 1),
(46, 6, 9, '#87865D', 1),
(47, 7, 9, '#C71585', 1),
(48, 8, 9, '#006400', 1),
(49, 1, 10, '#17309A', 1),
(50, 2, 10, '#3A87AD', 1),
(51, 3, 10, '#AA6705', 1),
(52, 4, 10, '#953B39', 1),
(53, 5, 10, '#545252', 1),
(54, 6, 10, '#87865D', 1),
(55, 7, 10, '#C71585', 1),
(56, 8, 10, '#006400', 1),
(57, 1, 11, '#17309A', 1),
(58, 2, 11, '#3A87AD', 1),
(59, 3, 11, '#AA6705', 1),
(60, 4, 11, '#953B39', 1),
(61, 5, 11, '#545252', 1),
(62, 6, 11, '#87865D', 1),
(63, 7, 11, '#C71585', 1),
(64, 8, 11, '#006400', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_user_activitytypes_seq`
--

CREATE TABLE `vtiger_calendar_user_activitytypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_calendar_user_activitytypes_seq`
--

INSERT INTO `vtiger_calendar_user_activitytypes_seq` (`id`) VALUES
(64);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_callduration`
--

CREATE TABLE `vtiger_callduration` (
  `calldurationid` int(11) NOT NULL,
  `callduration` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_callduration`
--

INSERT INTO `vtiger_callduration` (`calldurationid`, `callduration`, `sortorderid`, `presence`) VALUES
(1, '5', 0, 1),
(2, '10', 1, 1),
(3, '30', 2, 1),
(4, '60', 3, 1),
(5, '120', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_callduration_seq`
--

CREATE TABLE `vtiger_callduration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_callduration_seq`
--

INSERT INTO `vtiger_callduration_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaign`
--

CREATE TABLE `vtiger_campaign` (
  `campaign_no` varchar(100) NOT NULL,
  `campaignname` varchar(255) DEFAULT NULL,
  `campaigntype` varchar(200) DEFAULT NULL,
  `campaignstatus` varchar(200) DEFAULT NULL,
  `expectedrevenue` decimal(25,8) DEFAULT NULL,
  `budgetcost` decimal(25,8) DEFAULT NULL,
  `actualcost` decimal(25,8) DEFAULT NULL,
  `expectedresponse` varchar(200) DEFAULT NULL,
  `numsent` decimal(11,0) DEFAULT NULL,
  `product_id` int(19) DEFAULT NULL,
  `sponsor` varchar(255) DEFAULT NULL,
  `targetaudience` varchar(255) DEFAULT NULL,
  `targetsize` int(19) DEFAULT NULL,
  `expectedresponsecount` int(19) DEFAULT NULL,
  `expectedsalescount` int(19) DEFAULT NULL,
  `expectedroi` decimal(25,8) DEFAULT NULL,
  `actualresponsecount` int(19) DEFAULT NULL,
  `actualsalescount` int(19) DEFAULT NULL,
  `actualroi` decimal(25,8) DEFAULT NULL,
  `campaignid` int(19) NOT NULL,
  `closingdate` date DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_campaign`
--

INSERT INTO `vtiger_campaign` (`campaign_no`, `campaignname`, `campaigntype`, `campaignstatus`, `expectedrevenue`, `budgetcost`, `actualcost`, `expectedresponse`, `numsent`, `product_id`, `sponsor`, `targetaudience`, `targetsize`, `expectedresponsecount`, `expectedsalescount`, `expectedroi`, `actualresponsecount`, `actualsalescount`, `actualroi`, `campaignid`, `closingdate`, `tags`) VALUES
('CAM1', 'Xuân sum họp', 'Advertisement', 'Planning', '0.00000000', '0.00000000', '0.00000000', '', '0', 8, '', '', 0, 0, 0, '0.00000000', 0, 0, '0.00000000', 9, '2021-03-10', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignaccountrel`
--

CREATE TABLE `vtiger_campaignaccountrel` (
  `campaignid` int(19) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `campaignrelstatusid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaigncontrel`
--

CREATE TABLE `vtiger_campaigncontrel` (
  `campaignid` int(19) NOT NULL DEFAULT 0,
  `contactid` int(19) NOT NULL DEFAULT 0,
  `campaignrelstatusid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignleadrel`
--

CREATE TABLE `vtiger_campaignleadrel` (
  `campaignid` int(19) NOT NULL DEFAULT 0,
  `leadid` int(19) NOT NULL DEFAULT 0,
  `campaignrelstatusid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignrelstatus`
--

CREATE TABLE `vtiger_campaignrelstatus` (
  `campaignrelstatusid` int(19) DEFAULT NULL,
  `campaignrelstatus` varchar(256) DEFAULT NULL,
  `sortorderid` int(19) DEFAULT NULL,
  `presence` int(19) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_campaignrelstatus`
--

INSERT INTO `vtiger_campaignrelstatus` (`campaignrelstatusid`, `campaignrelstatus`, `sortorderid`, `presence`, `color`) VALUES
(2, 'Contacted - Successful', 1, 1, NULL),
(3, 'Contacted - Unsuccessful', 2, 1, NULL),
(4, 'Contacted - Never Contact Again', 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignrelstatus_seq`
--

CREATE TABLE `vtiger_campaignrelstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_campaignrelstatus_seq`
--

INSERT INTO `vtiger_campaignrelstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignscf`
--

CREATE TABLE `vtiger_campaignscf` (
  `campaignid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_campaignscf`
--

INSERT INTO `vtiger_campaignscf` (`campaignid`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignstatus`
--

CREATE TABLE `vtiger_campaignstatus` (
  `campaignstatusid` int(19) NOT NULL,
  `campaignstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_campaignstatus`
--

INSERT INTO `vtiger_campaignstatus` (`campaignstatusid`, `campaignstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Planning', 1, 15, 1, NULL),
(3, 'Active', 1, 16, 2, NULL),
(4, 'Inactive', 1, 17, 3, NULL),
(5, 'Completed', 1, 18, 4, NULL),
(6, 'Cancelled', 1, 19, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignstatus_seq`
--

CREATE TABLE `vtiger_campaignstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_campaignstatus_seq`
--

INSERT INTO `vtiger_campaignstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaigntype`
--

CREATE TABLE `vtiger_campaigntype` (
  `campaigntypeid` int(19) NOT NULL,
  `campaigntype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_campaigntype`
--

INSERT INTO `vtiger_campaigntype` (`campaigntypeid`, `campaigntype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Hội thảo', 1, 21, 1, NULL),
(3, 'Hội thảo/trao đổi trực tuyến', 1, 22, 2, NULL),
(4, 'Hội chợ thương mại', 1, 23, 3, NULL),
(5, 'Quan hệ công chúng', 1, 24, 4, NULL),
(6, 'Đối tác', 1, 25, 5, NULL),
(7, 'Tiếp thị giới thiệu', 1, 26, 6, NULL),
(8, 'Quảng cáo', 1, 27, 7, NULL),
(9, 'Quảng cáo qua banner', 1, 28, 8, NULL),
(10, 'Gửi thư trực tiếp', 1, 29, 9, NULL),
(11, 'Email', 1, 30, 10, NULL),
(12, 'Telemarketing', 1, 31, 11, NULL),
(13, 'Others', 1, 32, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaigntype_seq`
--

CREATE TABLE `vtiger_campaigntype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_campaigntype_seq`
--

INSERT INTO `vtiger_campaigntype_seq` (`id`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_carrier`
--

CREATE TABLE `vtiger_carrier` (
  `carrierid` int(19) NOT NULL,
  `carrier` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_carrier`
--

INSERT INTO `vtiger_carrier` (`carrierid`, `carrier`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'FedEx', 1, 33, 0, NULL),
(2, 'UPS', 1, 34, 1, NULL),
(3, 'USPS', 1, 35, 2, NULL),
(4, 'DHL', 1, 36, 3, NULL),
(5, 'BlueDart', 1, 37, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_carrier_seq`
--

CREATE TABLE `vtiger_carrier_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_carrier_seq`
--

INSERT INTO `vtiger_carrier_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cntactivityrel`
--

CREATE TABLE `vtiger_cntactivityrel` (
  `contactid` int(19) NOT NULL DEFAULT 0,
  `activityid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactaddress`
--

CREATE TABLE `vtiger_contactaddress` (
  `contactaddressid` int(19) NOT NULL DEFAULT 0,
  `mailingcity` varchar(40) DEFAULT NULL,
  `mailingstreet` varchar(250) DEFAULT NULL,
  `mailingcountry` varchar(40) DEFAULT NULL,
  `othercountry` varchar(30) DEFAULT NULL,
  `mailingstate` varchar(30) DEFAULT NULL,
  `mailingpobox` varchar(30) DEFAULT NULL,
  `othercity` varchar(40) DEFAULT NULL,
  `otherstate` varchar(50) DEFAULT NULL,
  `mailingzip` varchar(30) DEFAULT NULL,
  `otherzip` varchar(30) DEFAULT NULL,
  `otherstreet` varchar(250) DEFAULT NULL,
  `otherpobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_contactaddress`
--

INSERT INTO `vtiger_contactaddress` (`contactaddressid`, `mailingcity`, `mailingstreet`, `mailingcountry`, `othercountry`, `mailingstate`, `mailingpobox`, `othercity`, `otherstate`, `mailingzip`, `otherzip`, `otherstreet`, `otherpobox`) VALUES
(16, '', '', '', '', '', '', '', '', '', '', '', ''),
(17, '', '', '', '', '', '', '', '', '', '', '', ''),
(26, '', '', '', '', '', '', '', '', '', '', '', ''),
(30, '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactdetails`
--

CREATE TABLE `vtiger_contactdetails` (
  `contactid` int(19) NOT NULL DEFAULT 0,
  `contact_no` varchar(100) NOT NULL,
  `accountid` int(19) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(80) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `reportsto` varchar(30) DEFAULT NULL,
  `training` varchar(50) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  `contacttype` varchar(50) DEFAULT NULL,
  `otheremail` varchar(100) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `donotcall` varchar(3) DEFAULT NULL,
  `emailoptout` varchar(3) DEFAULT '0',
  `imagename` varchar(150) DEFAULT NULL,
  `reference` varchar(3) DEFAULT NULL,
  `notify_owner` varchar(3) DEFAULT '0',
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_contactdetails`
--

INSERT INTO `vtiger_contactdetails` (`contactid`, `contact_no`, `accountid`, `salutation`, `firstname`, `lastname`, `email`, `phone`, `mobile`, `title`, `department`, `fax`, `reportsto`, `training`, `usertype`, `contacttype`, `otheremail`, `secondaryemail`, `donotcall`, `emailoptout`, `imagename`, `reference`, `notify_owner`, `isconvertedfromlead`, `tags`) VALUES
(16, 'CON1', 0, 'Mrs.', 'Mai', 'Lê', '', '', '', '', '', '', '0', NULL, NULL, NULL, NULL, '', '0', '0', '', '0', '0', '0', ''),
(17, 'CON2', 0, 'Mrs.', 'Mai', 'Lê', '', '', '', '', '', '', '0', NULL, NULL, NULL, NULL, '', '0', '0', '', '0', '0', '0', ''),
(26, 'CON3', 25, 'Ms.', 'Hoa', 'Trần', '', '', '0973123321', '', '', '', '0', NULL, NULL, NULL, NULL, '', '0', '0', '', '0', '0', '1', ''),
(30, 'CON4', 0, 'Ms.', '', 'Lan', '', '', '', '', '', '', '0', NULL, NULL, NULL, NULL, '', '0', '0', '', '0', '0', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactscf`
--

CREATE TABLE `vtiger_contactscf` (
  `contactid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_contactscf`
--

INSERT INTO `vtiger_contactscf` (`contactid`) VALUES
(16),
(17),
(26),
(30);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactsubdetails`
--

CREATE TABLE `vtiger_contactsubdetails` (
  `contactsubscriptionid` int(19) NOT NULL DEFAULT 0,
  `homephone` varchar(50) DEFAULT NULL,
  `otherphone` varchar(50) DEFAULT NULL,
  `assistant` varchar(30) DEFAULT NULL,
  `assistantphone` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `laststayintouchrequest` int(30) DEFAULT 0,
  `laststayintouchsavedate` int(19) DEFAULT 0,
  `leadsource` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_contactsubdetails`
--

INSERT INTO `vtiger_contactsubdetails` (`contactsubscriptionid`, `homephone`, `otherphone`, `assistant`, `assistantphone`, `birthday`, `laststayintouchrequest`, `laststayintouchsavedate`, `leadsource`) VALUES
(16, '', '', '', '', NULL, 0, 0, ''),
(17, '', '', '', '', NULL, 0, 0, ''),
(26, '', '', '', '', NULL, 0, 0, ''),
(30, '', '', '', '', NULL, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contpotentialrel`
--

CREATE TABLE `vtiger_contpotentialrel` (
  `contactid` int(19) NOT NULL DEFAULT 0,
  `potentialid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_contpotentialrel`
--

INSERT INTO `vtiger_contpotentialrel` (`contactid`, `potentialid`) VALUES
(26, 27);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_priority`
--

CREATE TABLE `vtiger_contract_priority` (
  `contract_priorityid` int(11) NOT NULL,
  `contract_priority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_contract_priority`
--

INSERT INTO `vtiger_contract_priority` (`contract_priorityid`, `contract_priority`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Low', 1, 229, 1, NULL),
(2, 'Normal', 1, 230, 2, NULL),
(3, 'High', 1, 231, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_priority_seq`
--

CREATE TABLE `vtiger_contract_priority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_contract_priority_seq`
--

INSERT INTO `vtiger_contract_priority_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_status`
--

CREATE TABLE `vtiger_contract_status` (
  `contract_statusid` int(11) NOT NULL,
  `contract_status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_contract_status`
--

INSERT INTO `vtiger_contract_status` (`contract_statusid`, `contract_status`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Undefined', 1, 223, 1, NULL),
(2, 'In Planning', 1, 224, 2, NULL),
(3, 'In Progress', 1, 225, 3, NULL),
(4, 'On Hold', 1, 226, 4, NULL),
(5, 'Complete', 0, 227, 5, NULL),
(6, 'Archived', 1, 228, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_status_seq`
--

CREATE TABLE `vtiger_contract_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_contract_status_seq`
--

INSERT INTO `vtiger_contract_status_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_type`
--

CREATE TABLE `vtiger_contract_type` (
  `contract_typeid` int(11) NOT NULL,
  `contract_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_contract_type`
--

INSERT INTO `vtiger_contract_type` (`contract_typeid`, `contract_type`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Support', 1, 232, 1, NULL),
(2, 'Services', 1, 233, 2, NULL),
(3, 'Administrative', 1, 234, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_type_seq`
--

CREATE TABLE `vtiger_contract_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_contract_type_seq`
--

INSERT INTO `vtiger_contract_type_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_convertleadmapping`
--

CREATE TABLE `vtiger_convertleadmapping` (
  `cfmid` int(19) NOT NULL,
  `leadfid` int(19) NOT NULL,
  `accountfid` int(19) DEFAULT NULL,
  `contactfid` int(19) DEFAULT NULL,
  `potentialfid` int(19) DEFAULT NULL,
  `editable` int(19) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_convertleadmapping`
--

INSERT INTO `vtiger_convertleadmapping` (`cfmid`, `leadfid`, `accountfid`, `contactfid`, `potentialfid`, `editable`) VALUES
(1, 43, 1, 0, 110, 0),
(2, 49, 14, 0, 0, 1),
(3, 40, 3, 69, 0, 1),
(4, 44, 5, 77, 0, 1),
(5, 52, 13, 0, 0, 1),
(6, 46, 9, 80, 0, 0),
(7, 48, 4, 0, 0, 1),
(8, 61, 26, 98, 0, 1),
(9, 60, 30, 0, 0, 1),
(10, 62, 32, 104, 0, 1),
(11, 63, 28, 100, 0, 1),
(12, 59, 24, 96, 0, 1),
(13, 64, 34, 106, 0, 1),
(14, 61, 27, 0, 0, 1),
(15, 60, 31, 0, 0, 1),
(16, 62, 33, 0, 0, 1),
(17, 63, 29, 0, 0, 1),
(18, 59, 25, 0, 0, 1),
(19, 64, 35, 0, 0, 1),
(20, 65, 36, 109, 125, 1),
(21, 37, 0, 66, 0, 1),
(22, 38, 0, 67, 0, 0),
(23, 41, 0, 70, 0, 0),
(24, 42, 0, 71, 0, 1),
(25, 45, 0, 76, 0, 1),
(26, 55, 0, 83, 0, 1),
(27, 47, 0, 74, 117, 1),
(28, 50, 0, 0, 0, 1),
(29, 53, 10, 0, 0, 1),
(30, 51, 17, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_convertpotentialmapping`
--

CREATE TABLE `vtiger_convertpotentialmapping` (
  `cfmid` int(19) NOT NULL,
  `potentialfid` int(19) NOT NULL,
  `projectfid` int(19) DEFAULT NULL,
  `editable` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_convertpotentialmapping`
--

INSERT INTO `vtiger_convertpotentialmapping` (`cfmid`, `potentialfid`, `projectfid`, `editable`) VALUES
(1, 110, 633, NULL),
(2, 125, 649, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentity`
--

CREATE TABLE `vtiger_crmentity` (
  `crmid` int(19) NOT NULL,
  `smcreatorid` int(19) NOT NULL DEFAULT 0,
  `smownerid` int(19) NOT NULL DEFAULT 0,
  `modifiedby` int(19) NOT NULL DEFAULT 0,
  `setype` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `createdtime` datetime NOT NULL,
  `modifiedtime` datetime NOT NULL,
  `viewedtime` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) DEFAULT 1,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `smgroupid` int(19) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_crmentity`
--

INSERT INTO `vtiger_crmentity` (`crmid`, `smcreatorid`, `smownerid`, `modifiedby`, `setype`, `description`, `createdtime`, `modifiedtime`, `viewedtime`, `status`, `version`, `presence`, `deleted`, `smgroupid`, `source`, `label`) VALUES
(2, 1, 7, 1, 'Accounts', '', '2020-12-13 02:49:14', '2020-12-13 02:49:14', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Lê Lâm Mỹ Ngọc'),
(3, 1, 7, 1, 'Accounts', '', '2020-12-13 02:50:13', '2020-12-13 02:50:13', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Phan Thúy An'),
(4, 1, 8, 9, 'Accounts', '', '2020-12-13 02:53:18', '2021-01-22 04:13:19', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Đào Thiện Khiêm'),
(5, 1, 7, 1, 'Leads', '', '2020-12-13 02:58:30', '2020-12-13 02:58:30', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Hòa Nguyễn'),
(6, 1, 1, 1, 'Calendar', '', '2021-01-21 07:32:54', '2021-01-21 07:32:54', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Chăm sóc khách hàng - Lần 1'),
(7, 1, 7, 9, 'Products', '', '2021-01-21 09:22:36', '2021-01-21 17:54:39', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Coca-cola 330ml (24 lon)'),
(8, 1, 7, 1, 'Products', 'Coca-cola Plus được chế biến từ các thành phần Nước bão hòa C02, chất xơ, màu tự nhiên, chất điều chỉnh độ Acid, chất tạo ngọt tổng hợp, chất bảo quản, hỗn hợp hương tự nhiên, Caffeine.', '2021-01-21 09:24:03', '2021-01-21 09:38:17', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Coca-cola Plus 330ml (24 lon)'),
(9, 1, 6, 1, 'Campaigns', '', '2021-01-21 09:26:46', '2021-01-21 09:27:38', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Xuân sum họp'),
(10, 1, 8, 1, 'Leads', '', '2021-01-21 09:46:57', '2021-01-21 09:48:08', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Lan Nguyễn'),
(11, 1, 8, 1, 'Leads', '', '2021-01-21 09:50:57', '2021-01-21 13:22:26', NULL, NULL, 0, 1, 1, 0, 'CRM', 'Lan Nguyễn'),
(12, 1, 8, 1, 'Calendar', '', '2021-01-21 09:51:54', '2021-01-21 09:51:54', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Liên hệ điện thoại'),
(13, 1, 7, 1, 'Accounts', '', '2021-01-21 13:42:06', '2021-01-21 15:50:34', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Tạp hóa Ngọc Mai'),
(14, 1, 7, 1, 'Calendar', '', '2021-01-21 13:44:43', '2021-01-21 13:45:07', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Trao đổi trực tiếp'),
(15, 1, 7, 1, 'Quotes', '', '2021-01-21 13:52:01', '2021-01-21 13:53:43', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Trao đổi trực tiếp'),
(16, 1, 7, 1, 'Contacts', '', '2021-01-21 14:00:59', '2021-01-21 14:00:59', NULL, NULL, 0, 1, 0, 0, 'CRM', NULL),
(17, 1, 7, 1, 'Contacts', '', '2021-01-21 14:01:10', '2021-01-21 14:49:53', NULL, NULL, 0, 1, 1, 0, 'CRM', NULL),
(18, 1, 1, 1, 'Emails', '<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\r\n<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body class=\"scayt-enabled\">\r\n<div>\r\n<center>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"borderGrey\" width=\"600px\">\r\n	<tbody>\r\n		<tr style=\"height:50px;\">\r\n			<td colspan=\"6\" style=\"border-top: 1px solid rgb(221, 221, 221); font-family: Helvetica, Verdana, sans-serif; text-align: center;\"><strong><span style=\"color:#FF0000;\">CHƯƠNG TRÌNH KHUYẾN MÃI TẾT 2021</span></strong><br />\r\n			<br />\r\n			<span aria-hidden=\"false\" role=\"presentation\" style=\"display: contents;\"><span class=\"object-value\"><span class=\"objectBox objectBox-string\" title=\"Object\">Nước ngọt đồng giá chỉ từ 5.5k/chai, 30k/lốc, 118k/thùng </span></span></span><br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\" style=\"font-family: Helvetica,Verdana,sans-serif;font-size: 11px;color: #666666;\">\r\n			<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td colspan=\"2\" id=\"social\" valign=\"middle\">\r\n						<center>\r\n						<div>&nbsp;<a href=\"\" target=\"_blank\"> follow on Twitter</a> | <a href=\"\" target=\"_blank\">follow on Facebook</a></div>\r\n						</center>\r\n						</td>\r\n					</tr>\r\n					<!--copy right data-->\r\n					<tr>\r\n						<td valign=\"top\" width=\"350px\">\r\n						<center>\r\n						<div><em>Copyright © 2021 <a href=\"http://www.nhom2crm.com\" target=\"_blank\">www.nhom2crm.com</a>, All rights reserved.</em></div>\r\n						</center>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>\r\n', '2021-01-21 15:50:34', '2021-01-21 15:50:34', NULL, NULL, 0, 1, 0, 0, 'CRM', '$companydetails-logoname$'),
(19, 1, 1, 0, 'Emails Attachment', '<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\r\n<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body class=\"scayt-enabled\">\r\n<div>\r\n<center>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"borderGrey\" width=\"600px\">\r\n	<tbody>\r\n		<tr style=\"height:50px;\">\r\n			<td colspan=\"6\" style=\"border-top: 1px solid rgb(221, 221, 221); font-family: Helvetica, Verdana, sans-serif; text-align: center;\"><strong><span style=\"color:#FF0000;\">CHƯƠNG TRÌNH KHUYẾN MÃI TẾT 2021</span></strong><br />\r\n			<br />\r\n			<span aria-hidden=\"false\" role=\"presentation\" style=\"display: contents;\"><span class=\"object-value\"><span class=\"objectBox objectBox-string\" title=\"Object\">Nước ngọt đồng giá chỉ từ 5.5k/chai, 30k/lốc, 118k/thùng </span></span></span><br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\" style=\"font-family: Helvetica,Verdana,sans-serif;font-size: 11px;color: #666666;\">\r\n			<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td colspan=\"2\" id=\"social\" valign=\"middle\">\r\n						<center>\r\n						<div>&nbsp;<a href=\"\" target=\"_blank\"> follow on Twitter</a> | <a href=\"\" target=\"_blank\">follow on Facebook</a></div>\r\n						</center>\r\n						</td>\r\n					</tr>\r\n					<!--copy right data-->\r\n					<tr>\r\n						<td valign=\"top\" width=\"350px\">\r\n						<center>\r\n						<div><em>Copyright © 2021 <a href=\"http://www.nhom2crm.com\" target=\"_blank\">www.nhom2crm.com</a>, All rights reserved.</em></div>\r\n						</center>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>\r\n', '2021-01-21 15:50:34', '2021-01-21 15:50:34', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(20, 1, 1, 0, 'Users Image', '', '2021-01-21 16:10:17', '2021-01-21 16:10:17', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(21, 1, 1, 0, 'Users Image', '', '2021-01-21 17:16:21', '2021-01-21 17:16:21', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(22, 1, 1, 1, 'Products', '6 lon nước giải khát có gas La Vie Sparkling hương chanh bạc hà 330ml', '2021-01-21 18:00:55', '2021-01-21 18:00:55', NULL, NULL, 0, 1, 0, 0, 'CRM', 'La Vie Sparkling hương chanh bạc hà 330ml'),
(23, 9, 9, 9, 'Products', 'Nước bão hòa CO2, đường, chất điều chỉnh độ axit ( 330, 331(iii), 296), hương chanh và hương bạc hà ( Mojito ) tự nhiên, chất bảo quản (202, 211), chất nhũ hóa (414, 444)', '2021-01-21 23:53:44', '2021-01-21 23:53:44', NULL, NULL, 0, 1, 0, 0, 'CRM', '7 Up Mojito hương chanh bạc hà 330ml'),
(24, 9, 9, 9, 'Leads', '', '2021-01-22 00:38:55', '2021-01-22 00:40:18', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Hoa Trần'),
(25, 9, 9, 9, 'Accounts', '', '2021-01-22 00:40:18', '2021-01-22 00:40:18', NULL, NULL, 0, 1, 0, 0, 'CRM', 'KH cá nhân'),
(26, 9, 10, 9, 'Contacts', '', '2021-01-22 00:40:18', '2021-01-22 04:18:40', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Hoa Trần'),
(27, 9, 9, 9, 'Potentials', '', '2021-01-22 00:40:18', '2021-01-22 00:40:18', NULL, NULL, 0, 1, 0, 0, 'CRM', 'KH cá nhân'),
(28, 9, 9, 9, 'Accounts', '', '2021-01-22 04:11:40', '2021-01-22 04:11:40', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Sở Giáo dục Đào tạo'),
(29, 9, 9, 9, 'Potentials', '', '2021-01-22 04:16:35', '2021-01-22 04:16:35', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Mua hàng số lượng lớn'),
(30, 10, 10, 10, 'Contacts', '', '2021-01-22 04:22:36', '2021-01-22 04:22:36', NULL, NULL, 0, 1, 0, 0, 'CRM', ' Lan'),
(31, 10, 10, 9, 'HelpDesk', 'Mua số lượng bao nhiêu thì được chiết khấu?', '2021-01-22 04:23:38', '2021-01-22 04:42:04', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Chính sách ưu đãi'),
(32, 10, 10, 10, 'Products', '', '2021-01-22 04:26:37', '2021-01-22 04:26:37', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Thùng Coca-cola 330ml (24 lon)'),
(33, 10, 10, 10, 'Faq', NULL, '2021-01-22 04:28:24', '2021-01-22 04:28:24', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Mua số lượng bao nhiêu được tính giá sỉ?'),
(34, 10, 10, 10, 'Calendar', '', '2021-01-22 04:31:53', '2021-01-22 04:31:53', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Gửi mail giải đáp thắc mắc cho khách hàng'),
(35, 9, 9, 9, 'Emails', '<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\r\n<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body class=\"scayt-enabled\">\r\n<div>\r\n<center>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"borderGrey\" width=\"600px\">\r\n	<tbody>\r\n		<tr style=\"height:50px;\">\r\n			<td colspan=\"6\" style=\"border-top: 1px solid rgb(221, 221, 221); font-family: Helvetica, Verdana, sans-serif; text-align: center;\"><span style=\"color:#FF0000;\"><strong>BẢNG CHIẾT KHẤU CHO KHÁCH SỈ</strong></span><br />\r\n			<br />\r\n			<em>(Chưa cập nhật)</em><br />\r\n			<br />\r\n			<br />\r\n			Cảm ơn quý khách! Hẹn gặp lại!</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\" style=\"font-family: Helvetica,Verdana,sans-serif;font-size: 11px;color: #666666;\">\r\n			<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td colspan=\"2\" id=\"social\" valign=\"middle\">\r\n						<center>\r\n						<div>&nbsp;<a href=\"\" target=\"_blank\"> follow on Twitter</a> | <a href=\"\" target=\"_blank\">follow on Facebook</a></div>\r\n						</center>\r\n						</td>\r\n					</tr>\r\n					<!--copy right data-->\r\n					<tr>\r\n						<td valign=\"top\" width=\"350px\">\r\n						<center>\r\n						<div><em>Copyright © 2021 <a href=\"http://www.nhom2crm.com\" target=\"_blank\">www.nhom2crm.com</a>, All rights reserved.</em></div>\r\n						</center>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>\r\n', '2021-01-22 04:39:35', '2021-01-22 04:39:35', NULL, NULL, 0, 1, 0, 0, 'CRM', 'BẢNG CHIẾT KHẤU CHO KHÁCH SỈ'),
(36, 9, 10, 9, 'Calendar', '', '2021-01-22 04:42:04', '2021-01-22 04:42:04', NULL, NULL, 0, 1, 0, 0, 'CRM', 'Gửi email trả lời');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentityrel`
--

CREATE TABLE `vtiger_crmentityrel` (
  `crmid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relcrmid` int(11) NOT NULL,
  `relmodule` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_crmentityrel`
--

INSERT INTO `vtiger_crmentityrel` (`crmid`, `module`, `relcrmid`, `relmodule`) VALUES
(4, 'Accounts', 6, 'Calendar'),
(11, 'Leads', 12, 'Calendar'),
(13, 'Accounts', 14, 'Calendar'),
(13, 'Accounts', 15, 'Quotes'),
(13, 'Accounts', 18, 'Emails'),
(31, 'HelpDesk', 34, 'Calendar'),
(31, 'HelpDesk', 36, 'Calendar');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentity_seq`
--

CREATE TABLE `vtiger_crmentity_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_crmentity_seq`
--

INSERT INTO `vtiger_crmentity_seq` (`id`) VALUES
(36);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentity_user_field`
--

CREATE TABLE `vtiger_crmentity_user_field` (
  `recordid` int(19) NOT NULL,
  `userid` int(19) NOT NULL,
  `starred` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_crmentity_user_field`
--

INSERT INTO `vtiger_crmentity_user_field` (`recordid`, `userid`, `starred`) VALUES
(2, 1, '0'),
(3, 1, '0'),
(4, 1, '1'),
(5, 1, '0'),
(6, 1, '0'),
(7, 1, '0'),
(8, 1, '0'),
(9, 1, '1'),
(10, 1, '0'),
(11, 1, '0'),
(12, 1, '0'),
(13, 1, '1'),
(14, 1, '0'),
(15, 1, '0'),
(16, 1, '0'),
(17, 1, '0'),
(18, 1, '0'),
(9, 9, '1'),
(7, 9, '1'),
(22, 1, '0'),
(23, 9, '0'),
(24, 9, '1'),
(25, 9, '0'),
(26, 9, '1'),
(27, 9, '0'),
(4, 9, '0'),
(28, 9, '0'),
(29, 9, '0'),
(30, 10, '0'),
(31, 10, '1'),
(32, 10, '0'),
(33, 10, '0'),
(34, 10, '0'),
(35, 9, '0'),
(30, 9, '1'),
(36, 9, '0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmsetup`
--

CREATE TABLE `vtiger_crmsetup` (
  `userid` int(11) DEFAULT NULL,
  `setup_status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_crmsetup`
--

INSERT INTO `vtiger_crmsetup` (`userid`, `setup_status`) VALUES
(1, 1),
(8, 1),
(9, 1),
(11, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cron_task`
--

CREATE TABLE `vtiger_cron_task` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `handler_file` varchar(100) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `laststart` int(11) UNSIGNED DEFAULT NULL,
  `lastend` int(11) UNSIGNED DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_cron_task`
--

INSERT INTO `vtiger_cron_task` (`id`, `name`, `handler_file`, `frequency`, `laststart`, `lastend`, `status`, `module`, `sequence`, `description`) VALUES
(1, 'Workflow', 'cron/modules/com_vtiger_workflow/com_vtiger_workflow.service', 900, NULL, NULL, 1, 'com_vtiger_workflow', 1, 'Recommended frequency for Workflow is 15 mins'),
(2, 'RecurringInvoice', 'cron/modules/SalesOrder/RecurringInvoice.service', 43200, NULL, NULL, 1, 'SalesOrder', 2, 'Recommended frequency for RecurringInvoice is 12 hours'),
(3, 'SendReminder', 'cron/SendReminder.service', 900, NULL, NULL, 1, 'Calendar', 3, 'Recommended frequency for SendReminder is 15 mins'),
(5, 'MailScanner', 'cron/MailScanner.service', 900, NULL, NULL, 1, 'Settings', 5, 'Recommended frequency for MailScanner is 15 mins'),
(6, 'Scheduled Import', 'cron/modules/Import/ScheduledImport.service', 900, NULL, NULL, 0, 'Import', 6, 'Recommended frequency for MailScanner is 15 mins'),
(7, 'ScheduleReports', 'cron/modules/Reports/ScheduleReports.service', 900, NULL, NULL, 1, 'Reports', 7, 'Recommended frequency for ScheduleReports is 15 mins');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currencies`
--

CREATE TABLE `vtiger_currencies` (
  `currencyid` int(19) NOT NULL,
  `currency_name` varchar(200) DEFAULT NULL,
  `currency_code` varchar(50) DEFAULT NULL,
  `currency_symbol` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_currencies`
--

INSERT INTO `vtiger_currencies` (`currencyid`, `currency_name`, `currency_code`, `currency_symbol`) VALUES
(1, 'Albania, Leke', 'ALL', 'Lek'),
(2, 'Argentina, Pesos', 'ARS', '$'),
(3, 'Aruba, Guilders', 'AWG', 'ƒ'),
(4, 'Australia, Dollars', 'AUD', '$'),
(5, 'Azerbaijan, New Manats', 'AZN', 'ман'),
(6, 'Bahamas, Dollars', 'BSD', '$'),
(7, 'Bahrain, Dinar', 'BHD', 'BD'),
(8, 'Barbados, Dollars', 'BBD', '$'),
(9, 'Belarus, Rubles', 'BYR', 'p.'),
(10, 'Belize, Dollars', 'BZD', 'BZ$'),
(11, 'Bermuda, Dollars', 'BMD', '$'),
(12, 'Bolivia, Bolivianos', 'BOB', '$b'),
(13, 'China, Yuan Renminbi', 'CNY', '¥'),
(14, 'Convertible Marka', 'BAM', 'KM'),
(15, 'Botswana, Pulas', 'BWP', 'P'),
(16, 'Bulgaria, Leva', 'BGN', 'лв'),
(17, 'Brazil, Reais', 'BRL', 'R$'),
(18, 'Great Britain Pounds', 'GBP', '£'),
(19, 'Brunei Darussalam, Dollars', 'BND', '$'),
(20, 'Canada, Dollars', 'CAD', '$'),
(21, 'Cayman Islands, Dollars', 'KYD', '$'),
(22, 'Chile, Pesos', 'CLP', '$'),
(23, 'Colombia, Pesos', 'COP', '$'),
(24, 'Costa Rica, Colón', 'CRC', '₡'),
(25, 'Croatia, Kuna', 'HRK', 'kn'),
(26, 'Cuba, Pesos', 'CUP', '₱'),
(27, 'Czech Republic, Koruny', 'CZK', 'Kč'),
(28, 'Cyprus, Pounds', 'CYP', '£'),
(29, 'Denmark, Kroner', 'DKK', 'kr'),
(30, 'Dominican Republic, Pesos', 'DOP', 'RD$'),
(31, 'East Caribbean, Dollars', 'XCD', '$'),
(32, 'Egypt, Pounds', 'EGP', 'E£'),
(33, 'El Salvador, Colón', 'SVC', '₡'),
(34, 'England, Pounds', 'GBP', '£'),
(35, 'Estonia, Krooni', 'EEK', 'kr'),
(36, 'Euro', 'EUR', '€'),
(37, 'Falkland Islands, Pounds', 'FKP', '£'),
(38, 'Fiji, Dollars', 'FJD', '$'),
(39, 'Ghana, Cedis', 'GHC', '¢'),
(40, 'Gibraltar, Pounds', 'GIP', '£'),
(41, 'Guatemala, Quetzales', 'GTQ', 'Q'),
(42, 'Guernsey, Pounds', 'GGP', '£'),
(43, 'Guyana, Dollars', 'GYD', '$'),
(44, 'Honduras, Lempiras', 'HNL', 'L'),
(45, 'Hong Kong, Dollars', 'HKD', 'HK$'),
(46, 'Hungary, Forint', 'HUF', 'Ft'),
(47, 'Iceland, Krona', 'ISK', 'kr'),
(48, 'India, Rupees', 'INR', '₹'),
(49, 'Indonesia, Rupiahs', 'IDR', 'Rp'),
(50, 'Iran, Rials', 'IRR', '﷼'),
(51, 'Isle of Man, Pounds', 'IMP', '£'),
(52, 'Israel, New Shekels', 'ILS', '₪'),
(53, 'Jamaica, Dollars', 'JMD', 'J$'),
(54, 'Japan, Yen', 'JPY', '¥'),
(55, 'Jersey, Pounds', 'JEP', '£'),
(56, 'Jordan, Dinar', 'JOD', 'JOD'),
(57, 'Kazakhstan, Tenge', 'KZT', '〒'),
(58, 'Kenya, Shilling', 'KES', 'KES'),
(59, 'Korea (North), Won', 'KPW', '₩'),
(60, 'Korea (South), Won', 'KRW', '₩'),
(61, 'Kuwait, Dinar', 'KWD', 'KWD'),
(62, 'Kyrgyzstan, Soms', 'KGS', 'лв'),
(63, 'Laos, Kips', 'LAK', '₭'),
(64, 'Latvia, Lati', 'LVL', 'Ls'),
(65, 'Lebanon, Pounds', 'LBP', '£'),
(66, 'Liberia, Dollars', 'LRD', '$'),
(67, 'Switzerland Francs', 'CHF', 'CHF'),
(68, 'Lithuania, Litai', 'LTL', 'Lt'),
(69, 'MADAGASCAR, Malagasy Ariary', 'MGA', 'MGA'),
(70, 'Macedonia, Denars', 'MKD', 'ден'),
(71, 'Malaysia, Ringgits', 'MYR', 'RM'),
(72, 'Malta, Liri', 'MTL', '₤'),
(73, 'Mauritius, Rupees', 'MUR', '₨'),
(74, 'Mexico, Pesos', 'MXN', '$'),
(75, 'Mongolia, Tugriks', 'MNT', '₮'),
(76, 'Mozambique, Meticais', 'MZN', 'MT'),
(77, 'Namibia, Dollars', 'NAD', '$'),
(78, 'Nepal, Rupees', 'NPR', '₨'),
(79, 'Netherlands Antilles, Guilders', 'ANG', 'ƒ'),
(80, 'New Zealand, Dollars', 'NZD', '$'),
(81, 'Nicaragua, Cordobas', 'NIO', 'C$'),
(82, 'Nigeria, Nairas', 'NGN', '₦'),
(83, 'North Korea, Won', 'KPW', '₩'),
(84, 'Norway, Krone', 'NOK', 'kr'),
(85, 'Oman, Rials', 'OMR', '﷼'),
(86, 'Pakistan, Rupees', 'PKR', '₨'),
(87, 'Panama, Balboa', 'PAB', 'B/.'),
(88, 'Paraguay, Guarani', 'PYG', 'Gs'),
(89, 'Peru, Nuevos Soles', 'PEN', 'S/.'),
(90, 'Philippines, Pesos', 'PHP', 'Php'),
(91, 'Poland, Zlotych', 'PLN', 'zł'),
(92, 'Qatar, Rials', 'QAR', '﷼'),
(93, 'Romania, New Lei', 'RON', 'lei'),
(94, 'Russia, Rubles', 'RUB', 'руб'),
(95, 'Saint Helena, Pounds', 'SHP', '£'),
(96, 'Saudi Arabia, Riyals', 'SAR', '﷼'),
(97, 'Serbia, Dinars', 'RSD', 'Дин.'),
(98, 'Seychelles, Rupees', 'SCR', '₨'),
(99, 'Singapore, Dollars', 'SGD', '$'),
(100, 'Solomon Islands, Dollars', 'SBD', '$'),
(101, 'Somalia, Shillings', 'SOS', 'S'),
(102, 'South Africa, Rand', 'ZAR', 'R'),
(103, 'South Korea, Won', 'KRW', '₩'),
(104, 'Sri Lanka, Rupees', 'LKR', '₨'),
(105, 'Sweden, Kronor', 'SEK', 'kr'),
(106, 'Switzerland, Francs', 'CHF', 'CHF'),
(107, 'Suriname, Dollars', 'SRD', '$'),
(108, 'Syria, Pounds', 'SYP', '£'),
(109, 'Taiwan, New Dollars', 'TWD', 'NT$'),
(110, 'Thailand, Baht', 'THB', '฿'),
(111, 'Trinidad and Tobago, Dollars', 'TTD', 'TT$'),
(112, 'Turkey, New Lira', 'TRY', 'YTL'),
(113, 'Turkey, Liras', 'TRL', '₤'),
(114, 'Tuvalu, Dollars', 'TVD', '$'),
(115, 'Ukraine, Hryvnia', 'UAH', '₴'),
(116, 'United Arab Emirates, Dirham', 'AED', 'AED'),
(117, 'United Kingdom, Pounds', 'GBP', '£'),
(118, 'United Republic of Tanzania, Shilling', 'TZS', 'TZS'),
(119, 'USA, Dollars', 'USD', '$'),
(120, 'Uruguay, Pesos', 'UYU', '$U'),
(121, 'Uzbekistan, Sums', 'UZS', 'лв'),
(122, 'Venezuela, Bolivares Fuertes', 'VEF', 'Bs'),
(123, 'Vietnam, Dong', 'VND', '₫'),
(124, 'Zambia, Kwacha', 'ZMK', 'ZMK'),
(125, 'Yemen, Rials', 'YER', '﷼'),
(126, 'Zimbabwe Dollars', 'ZWD', 'Z$'),
(127, 'Malawi, Kwacha', 'MWK', 'MK'),
(128, 'Tunisian, Dinar', 'TD', 'TD'),
(129, 'Moroccan, Dirham', 'MAD', 'DH'),
(130, 'Iraqi Dinar', 'IQD', 'ID'),
(131, 'Maldivian Ruffiya', 'MVR', 'MVR'),
(132, 'Ugandan Shilling', 'UGX', 'Sh'),
(133, 'Sudanese Pound', 'SDG', '£'),
(134, 'CFA Franc BCEAO', 'XOF', 'CFA'),
(135, 'CFA Franc BEAC', 'XAF', 'CFA'),
(136, 'Haiti, Gourde', 'HTG', 'G'),
(137, 'Libya, Dinar', 'LYD', 'LYD'),
(138, 'CFP Franc', 'XPF', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currencies_seq`
--

CREATE TABLE `vtiger_currencies_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_currencies_seq`
--

INSERT INTO `vtiger_currencies_seq` (`id`) VALUES
(138);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency`
--

CREATE TABLE `vtiger_currency` (
  `currencyid` int(19) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_decimal_separator`
--

CREATE TABLE `vtiger_currency_decimal_separator` (
  `currency_decimal_separatorid` int(19) NOT NULL,
  `currency_decimal_separator` varchar(2) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_currency_decimal_separator`
--

INSERT INTO `vtiger_currency_decimal_separator` (`currency_decimal_separatorid`, `currency_decimal_separator`, `sortorderid`, `presence`) VALUES
(1, '.', 0, 1),
(2, ',', 1, 1),
(3, '\'', 2, 1),
(4, ' ', 3, 1),
(5, '$', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_decimal_separator_seq`
--

CREATE TABLE `vtiger_currency_decimal_separator_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_currency_decimal_separator_seq`
--

INSERT INTO `vtiger_currency_decimal_separator_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_pattern`
--

CREATE TABLE `vtiger_currency_grouping_pattern` (
  `currency_grouping_patternid` int(19) NOT NULL,
  `currency_grouping_pattern` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_currency_grouping_pattern`
--

INSERT INTO `vtiger_currency_grouping_pattern` (`currency_grouping_patternid`, `currency_grouping_pattern`, `sortorderid`, `presence`) VALUES
(1, '123,456,789', 0, 1),
(2, '123456789', 1, 1),
(3, '123456,789', 2, 1),
(4, '12,34,56,789', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_pattern_seq`
--

CREATE TABLE `vtiger_currency_grouping_pattern_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_currency_grouping_pattern_seq`
--

INSERT INTO `vtiger_currency_grouping_pattern_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_separator`
--

CREATE TABLE `vtiger_currency_grouping_separator` (
  `currency_grouping_separatorid` int(19) NOT NULL,
  `currency_grouping_separator` varchar(2) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_currency_grouping_separator`
--

INSERT INTO `vtiger_currency_grouping_separator` (`currency_grouping_separatorid`, `currency_grouping_separator`, `sortorderid`, `presence`) VALUES
(1, ',', 0, 1),
(2, '.', 1, 1),
(3, '\'', 2, 1),
(4, ' ', 3, 1),
(5, '$', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_separator_seq`
--

CREATE TABLE `vtiger_currency_grouping_separator_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_currency_grouping_separator_seq`
--

INSERT INTO `vtiger_currency_grouping_separator_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_info`
--

CREATE TABLE `vtiger_currency_info` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(100) DEFAULT NULL,
  `currency_code` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(30) DEFAULT NULL,
  `conversion_rate` decimal(12,5) DEFAULT NULL,
  `currency_status` varchar(25) DEFAULT NULL,
  `defaultid` varchar(10) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_currency_info`
--

INSERT INTO `vtiger_currency_info` (`id`, `currency_name`, `currency_code`, `currency_symbol`, `conversion_rate`, `currency_status`, `defaultid`, `deleted`) VALUES
(1, 'Vietnam, Dong', 'VND', '₫', '1.00000', 'Active', '-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_info_seq`
--

CREATE TABLE `vtiger_currency_info_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_currency_info_seq`
--

INSERT INTO `vtiger_currency_info_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_symbol_placement`
--

CREATE TABLE `vtiger_currency_symbol_placement` (
  `currency_symbol_placementid` int(19) NOT NULL,
  `currency_symbol_placement` varchar(30) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_currency_symbol_placement`
--

INSERT INTO `vtiger_currency_symbol_placement` (`currency_symbol_placementid`, `currency_symbol_placement`, `sortorderid`, `presence`) VALUES
(1, '$1.0', 0, 1),
(2, '1.0$', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_symbol_placement_seq`
--

CREATE TABLE `vtiger_currency_symbol_placement_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_currency_symbol_placement_seq`
--

INSERT INTO `vtiger_currency_symbol_placement_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customaction`
--

CREATE TABLE `vtiger_customaction` (
  `cvid` int(19) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerdetails`
--

CREATE TABLE `vtiger_customerdetails` (
  `customerid` int(19) NOT NULL,
  `portal` varchar(3) DEFAULT NULL,
  `support_start_date` date DEFAULT NULL,
  `support_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_customerdetails`
--

INSERT INTO `vtiger_customerdetails` (`customerid`, `portal`, `support_start_date`, `support_end_date`) VALUES
(16, '0', '2021-01-21', '2022-01-21'),
(17, '0', NULL, NULL),
(26, '0', NULL, NULL),
(30, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_fields`
--

CREATE TABLE `vtiger_customerportal_fields` (
  `tabid` int(19) NOT NULL,
  `fieldinfo` text DEFAULT NULL,
  `records_visible` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_customerportal_fields`
--

INSERT INTO `vtiger_customerportal_fields` (`tabid`, `fieldinfo`, `records_visible`) VALUES
(4, '{\"lastname\":1,\"assigned_user_id\":1}', 1),
(6, '{\"accountname\":1,\"assigned_user_id\":1}', 1),
(8, '{\"notes_title\":1,\"assigned_user_id\":1,\"filename\":0}', 1),
(13, '{\"ticket_title\":1,\"assigned_user_id\":1,\"ticketpriorities\":1,\"ticketstatus\":1,\"description\":1,\"product_id\":1,\"ticketseverities\":1,\"ticketcategories\":1}', 1),
(14, '{\"productname\":1,\"assigned_user_id\":1}', 1),
(15, '{\"faqstatus\":1,\"question\":1,\"faq_answer\":1}', 1),
(20, '{\"subject\":1,\"quotestage\":1,\"account_id\":1,\"assigned_user_id\":1,\"bill_street\":1,\"ship_street\":1}', 1),
(23, '{\"subject\":1,\"account_id\":1,\"assigned_user_id\":1,\"bill_street\":1,\"ship_street\":1}', 1),
(31, '{\"servicename\":1}', 1),
(37, '{\"subject\":1,\"assigned_user_id\":1}', NULL),
(43, '{\"projectmilestonename\":1,\"projectid\":1,\"assigned_user_id\":1}', 1),
(44, '{\"projecttaskname\":1,\"projectid\":1,\"assigned_user_id\":1}', 1),
(45, '{\"projectname\":1,\"assigned_user_id\":1}', 1),
(47, '{\"product\":1,\"serialnumber\":1,\"assigned_user_id\":1,\"datesold\":1,\"dateinservice\":1,\"assetstatus\":1,\"assetname\":1,\"account\":1}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_prefs`
--

CREATE TABLE `vtiger_customerportal_prefs` (
  `tabid` int(19) NOT NULL,
  `prefkey` varchar(100) NOT NULL,
  `prefvalue` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_customerportal_prefs`
--

INSERT INTO `vtiger_customerportal_prefs` (`tabid`, `prefkey`, `prefvalue`) VALUES
(0, 'defaultassignee', 1),
(0, 'userid', 1),
(4, 'showrelatedinfo', 1),
(6, 'showrelatedinfo', 1),
(8, 'showrelatedinfo', 1),
(13, 'showrelatedinfo', 1),
(14, 'showrelatedinfo', 1),
(15, 'showrelatedinfo', 1),
(20, 'showrelatedinfo', 1),
(23, 'showrelatedinfo', 1),
(31, 'showrelatedinfo', 1),
(43, 'showrelatedinfo', 1),
(44, 'showrelatedinfo', 1),
(45, 'showrelatedinfo', 1),
(47, 'showrelatedinfo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_relatedmoduleinfo`
--

CREATE TABLE `vtiger_customerportal_relatedmoduleinfo` (
  `tabid` int(19) NOT NULL,
  `relatedmodules` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_customerportal_relatedmoduleinfo`
--

INSERT INTO `vtiger_customerportal_relatedmoduleinfo` (`tabid`, `relatedmodules`) VALUES
(8, '[{\"name\":\"History\",\"value\":1}]'),
(13, '[{\"name\":\"History\",\"value\":1},{\"name\":\"ModComments\",\"value\":1},{\"name\":\"Documents\",\"value\":1}]'),
(14, '[{\"name\":\"History\",\"value\":1}]'),
(20, '[{\"name\":\"History\",\"value\":1}]'),
(23, '[{\"name\":\"History\",\"value\":1}]'),
(31, '[{\"name\":\"History\",\"value\":1}]'),
(37, '[{\"name\":\"History\",\"value\":1}]'),
(43, '[{\"name\":\"History\",\"value\":1}]'),
(44, '[{\"name\":\"History\",\"value\":1},{\"name\":\"ModComments\",\"value\":1}]'),
(45, '[{\"name\":\"History\",\"value\":1},{\"name\":\"ModComments\",\"value\":1},{\"name\":\"ProjectTask\",\"value\":1},{\"name\":\"ProjectMilestone\",\"value\":1},{\"name\":\"Documents\",\"value\":1}]'),
(47, '[{\"name\":\"History\",\"value\":1}]');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_settings`
--

CREATE TABLE `vtiger_customerportal_settings` (
  `id` int(11) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `default_assignee` int(11) DEFAULT NULL,
  `support_notification` int(11) DEFAULT NULL,
  `announcement` text DEFAULT NULL,
  `shortcuts` text DEFAULT NULL,
  `widgets` text DEFAULT NULL,
  `charts` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_customerportal_settings`
--

INSERT INTO `vtiger_customerportal_settings` (`id`, `url`, `default_assignee`, `support_notification`, `announcement`, `shortcuts`, `widgets`, `charts`) VALUES
(1, NULL, 1, NULL, NULL, '{\"Documents\":{\"LBL_ADD_DOCUMENT\":1},\"HelpDesk\":{\"LBL_CREATE_TICKET\":1,\"LBL_OPEN_TICKETS\":1}}', '{\"widgets\":{\"HelpDesk\":1,\"Documents\":1,\"Faq\":1}}', '{\"charts\":{\"OpenTicketsByPriority\":1,\"TicketsClosureTimeByPriority\":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_tabs`
--

CREATE TABLE `vtiger_customerportal_tabs` (
  `tabid` int(19) NOT NULL,
  `visible` int(1) DEFAULT 1,
  `sequence` int(1) DEFAULT NULL,
  `createrecord` tinyint(1) NOT NULL DEFAULT 0,
  `editrecord` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_customerportal_tabs`
--

INSERT INTO `vtiger_customerportal_tabs` (`tabid`, `visible`, `sequence`, `createrecord`, `editrecord`) VALUES
(4, 0, 9, 0, 1),
(6, 0, 10, 0, 1),
(8, 1, 8, 1, 0),
(13, 1, 2, 1, 1),
(14, 1, 6, 0, 0),
(15, 1, 3, 0, 0),
(20, 1, 5, 0, 0),
(23, 1, 4, 0, 0),
(31, 1, 7, 0, 0),
(37, 1, 25, 0, 0),
(43, 1, 13, 0, 0),
(44, 1, 12, 0, 0),
(45, 1, 11, 0, 0),
(47, 1, 14, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customview`
--

CREATE TABLE `vtiger_customview` (
  `cvid` int(19) NOT NULL,
  `viewname` varchar(100) NOT NULL,
  `setdefault` int(1) DEFAULT 0,
  `setmetrics` int(1) DEFAULT 0,
  `entitytype` varchar(25) NOT NULL,
  `status` int(1) DEFAULT 1,
  `userid` int(19) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_customview`
--

INSERT INTO `vtiger_customview` (`cvid`, `viewname`, `setdefault`, `setmetrics`, `entitytype`, `status`, `userid`) VALUES
(1, 'All', 1, 0, 'Leads', 0, 1),
(2, 'Hot Leads', 0, 1, 'Leads', 3, 1),
(3, 'This Month Leads', 0, 0, 'Leads', 3, 1),
(4, 'All', 1, 0, 'Accounts', 0, 1),
(5, 'Prospect Accounts', 0, 1, 'Accounts', 3, 1),
(6, 'New This Week', 0, 0, 'Accounts', 3, 1),
(7, 'All', 1, 0, 'Contacts', 0, 1),
(8, 'Contacts Address', 0, 0, 'Contacts', 3, 1),
(9, 'Todays Birthday', 0, 0, 'Contacts', 3, 1),
(10, 'All', 1, 0, 'Potentials', 0, 1),
(11, 'Potentials Won', 0, 1, 'Potentials', 3, 1),
(12, 'Prospecting', 0, 0, 'Potentials', 3, 1),
(13, 'All', 1, 0, 'HelpDesk', 0, 1),
(14, 'Open Tickets', 0, 1, 'HelpDesk', 3, 1),
(15, 'High Prioriy Tickets', 0, 0, 'HelpDesk', 3, 1),
(16, 'All', 1, 0, 'Quotes', 0, 1),
(17, 'Open Quotes', 0, 1, 'Quotes', 3, 1),
(18, 'Rejected Quotes', 0, 0, 'Quotes', 3, 1),
(19, 'All', 1, 0, 'Calendar', 0, 1),
(20, 'All', 1, 0, 'Emails', 0, 1),
(21, 'All', 1, 0, 'Invoice', 0, 1),
(22, 'All', 1, 0, 'Documents', 0, 1),
(23, 'All', 1, 0, 'PriceBooks', 0, 1),
(24, 'All', 1, 0, 'Products', 0, 1),
(25, 'All', 1, 0, 'PurchaseOrder', 0, 1),
(26, 'All', 1, 0, 'SalesOrder', 0, 1),
(27, 'All', 1, 0, 'Vendors', 0, 1),
(28, 'All', 1, 0, 'Faq', 0, 1),
(29, 'All', 1, 0, 'Campaigns', 0, 1),
(30, 'All', 1, 0, 'Webmails', 0, 1),
(31, 'Drafted FAQ', 0, 0, 'Faq', 3, 1),
(32, 'Published FAQ', 0, 0, 'Faq', 3, 1),
(33, 'Open Purchase Orders', 0, 0, 'PurchaseOrder', 3, 1),
(34, 'Received Purchase Orders', 0, 0, 'PurchaseOrder', 3, 1),
(35, 'Open Invoices', 0, 0, 'Invoice', 3, 1),
(36, 'Paid Invoices', 0, 0, 'Invoice', 3, 1),
(37, 'Pending Sales Orders', 0, 0, 'SalesOrder', 3, 1),
(38, 'All', 1, 0, 'Services', 0, 1),
(39, 'All', 1, 0, 'PBXManager', 0, 1),
(40, 'All', 1, 0, 'ServiceContracts', 0, 1),
(41, 'All', 0, 0, 'ModComments', 0, 1),
(42, 'All', 0, 0, 'SMSNotifier', 0, 1),
(46, 'All', 1, 0, 'Assets', 0, 1),
(47, 'All', 1, 0, 'ProjectMilestone', 0, 1),
(48, 'All', 1, 0, 'ProjectTask', 0, 1),
(49, 'All', 1, 0, 'Project', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customview_seq`
--

CREATE TABLE `vtiger_customview_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_customview_seq`
--

INSERT INTO `vtiger_customview_seq` (`id`) VALUES
(50);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cv2group`
--

CREATE TABLE `vtiger_cv2group` (
  `cvid` int(25) NOT NULL,
  `groupid` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cv2role`
--

CREATE TABLE `vtiger_cv2role` (
  `cvid` int(25) NOT NULL,
  `roleid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cv2rs`
--

CREATE TABLE `vtiger_cv2rs` (
  `cvid` int(25) NOT NULL,
  `rsid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cv2users`
--

CREATE TABLE `vtiger_cv2users` (
  `cvid` int(25) NOT NULL,
  `userid` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvadvfilter`
--

CREATE TABLE `vtiger_cvadvfilter` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `comparator` varchar(20) DEFAULT NULL,
  `value` varchar(512) DEFAULT NULL,
  `groupid` int(11) DEFAULT 1,
  `column_condition` varchar(255) DEFAULT 'and'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_cvadvfilter`
--

INSERT INTO `vtiger_cvadvfilter` (`cvid`, `columnindex`, `columnname`, `comparator`, `value`, `groupid`, `column_condition`) VALUES
(2, 0, 'vtiger_leaddetails:leadstatus:leadstatus:Leads_Lead_Status:V', 'e', 'Hot', 1, 'and'),
(5, 0, 'vtiger_account:account_type:accounttype:Accounts_Type:V', 'e', 'Prospect', 1, 'and'),
(11, 0, 'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V', 'e', 'Closed Won', 1, 'and'),
(12, 0, 'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V', 'e', 'Prospecting', 1, 'and'),
(14, 0, 'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V', 'n', 'Closed', 1, 'and'),
(15, 0, 'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V', 'e', 'High', 1, 'and'),
(17, 0, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V', 'n', 'Accepted', 1, 'and'),
(17, 1, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V', 'n', 'Rejected', 1, 'and'),
(18, 0, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V', 'e', 'Rejected', 1, 'and'),
(31, 0, 'vtiger_faq:status:faqstatus:Faq_Status:V', 'e', 'Draft', 1, 'and'),
(32, 0, 'vtiger_faq:status:faqstatus:Faq_Status:V', 'e', 'Published', 1, 'and'),
(33, 0, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V', 'e', 'Created, Approved, Delivered', 1, 'and'),
(34, 0, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V', 'e', 'Received Shipment', 1, 'and'),
(35, 0, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V', 'e', 'Created, Approved, Sent', 1, 'and'),
(36, 0, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V', 'e', 'Paid', 1, 'and'),
(37, 0, 'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V', 'e', 'Created, Approved', 1, 'and');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvadvfilter_grouping`
--

CREATE TABLE `vtiger_cvadvfilter_grouping` (
  `groupid` int(11) NOT NULL,
  `cvid` int(19) NOT NULL,
  `group_condition` varchar(255) DEFAULT NULL,
  `condition_expression` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_cvadvfilter_grouping`
--

INSERT INTO `vtiger_cvadvfilter_grouping` (`groupid`, `cvid`, `group_condition`, `condition_expression`) VALUES
(1, 2, '', ''),
(1, 5, '', ''),
(1, 11, '', ''),
(1, 12, '', ''),
(1, 14, '', ''),
(1, 15, '', ''),
(1, 17, '', ''),
(1, 18, '', ''),
(1, 31, '', ''),
(1, 32, '', ''),
(1, 33, '', ''),
(1, 34, '', ''),
(1, 35, '', ''),
(1, 36, '', ''),
(1, 37, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvcolumnlist`
--

CREATE TABLE `vtiger_cvcolumnlist` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_cvcolumnlist`
--

INSERT INTO `vtiger_cvcolumnlist` (`cvid`, `columnindex`, `columnname`) VALUES
(1, 1, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(1, 2, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(1, 3, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(1, 4, 'vtiger_leadaddress:phone:phone:Leads_Phone:V'),
(1, 5, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(1, 6, 'vtiger_leaddetails:email:email:Leads_Email:V'),
(1, 7, 'vtiger_crmentity:smownerid:assigned_user_id:Leads_Assigned_To:V'),
(2, 0, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(2, 1, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(2, 2, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(2, 3, 'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),
(2, 4, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(2, 5, 'vtiger_leaddetails:email:email:Leads_Email:E'),
(3, 0, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(3, 1, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(3, 2, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(3, 3, 'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),
(3, 4, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(3, 5, 'vtiger_leaddetails:email:email:Leads_Email:E'),
(4, 1, 'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),
(4, 2, 'vtiger_accountbillads:bill_city:bill_city:Accounts_Billing_City:V'),
(4, 3, 'vtiger_account:website:website:Accounts_Website:V'),
(4, 4, 'vtiger_account:phone:phone:Accounts_Phone:V'),
(4, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),
(5, 0, 'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),
(5, 1, 'vtiger_account:phone:phone:Accounts_Phone:V'),
(5, 2, 'vtiger_account:website:website:Accounts_Website:V'),
(5, 3, 'vtiger_account:rating:rating:Accounts_Rating:V'),
(5, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),
(6, 0, 'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),
(6, 1, 'vtiger_account:phone:phone:Accounts_Phone:V'),
(6, 2, 'vtiger_account:website:website:Accounts_Website:V'),
(6, 3, 'vtiger_accountbillads:bill_city:bill_city:Accounts_City:V'),
(6, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),
(7, 1, 'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),
(7, 2, 'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),
(7, 3, 'vtiger_contactdetails:title:title:Contacts_Title:V'),
(7, 4, 'vtiger_contactdetails:accountid:account_id:Contacts_Account_Name:V'),
(7, 5, 'vtiger_contactdetails:email:email:Contacts_Email:V'),
(7, 6, 'vtiger_contactdetails:phone:phone:Contacts_Office_Phone:V'),
(7, 7, 'vtiger_crmentity:smownerid:assigned_user_id:Contacts_Assigned_To:V'),
(8, 0, 'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),
(8, 1, 'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),
(8, 2, 'vtiger_contactaddress:mailingstreet:mailingstreet:Contacts_Mailing_Street:V'),
(8, 3, 'vtiger_contactaddress:mailingcity:mailingcity:Contacts_Mailing_City:V'),
(8, 4, 'vtiger_contactaddress:mailingstate:mailingstate:Contacts_Mailing_State:V'),
(8, 5, 'vtiger_contactaddress:mailingzip:mailingzip:Contacts_Mailing_Zip:V'),
(8, 6, 'vtiger_contactaddress:mailingcountry:mailingcountry:Contacts_Mailing_Country:V'),
(9, 0, 'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),
(9, 1, 'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),
(9, 2, 'vtiger_contactdetails:title:title:Contacts_Title:V'),
(9, 3, 'vtiger_contactdetails:accountid:account_id:Contacts_Account_Name:I'),
(9, 4, 'vtiger_contactdetails:email:email:Contacts_Email:E'),
(9, 5, 'vtiger_contactsubdetails:otherphone:otherphone:Contacts_Phone:V'),
(9, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Contacts_Assigned_To:V'),
(10, 1, 'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),
(10, 2, 'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),
(10, 3, 'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V'),
(10, 4, 'vtiger_potential:leadsource:leadsource:Potentials_Lead_Source:V'),
(10, 5, 'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),
(10, 6, 'vtiger_potential:amount:amount:Potentials_Amount:N'),
(10, 7, 'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),
(10, 8, 'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),
(11, 0, 'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),
(11, 1, 'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),
(11, 2, 'vtiger_potential:amount:amount:Potentials_Amount:N'),
(11, 3, 'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),
(11, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),
(11, 5, 'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),
(12, 0, 'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),
(12, 1, 'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),
(12, 2, 'vtiger_potential:amount:amount:Potentials_Amount:N'),
(12, 3, 'vtiger_potential:leadsource:leadsource:Potentials_Lead_Source:V'),
(12, 4, 'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),
(12, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),
(12, 6, 'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),
(13, 1, 'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),
(13, 2, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:V'),
(13, 3, 'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V'),
(13, 4, 'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V'),
(13, 5, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(13, 6, 'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),
(14, 0, 'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),
(14, 1, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:I'),
(14, 2, 'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V'),
(14, 3, 'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:I'),
(14, 4, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(14, 5, 'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),
(15, 0, 'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),
(15, 1, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:I'),
(15, 2, 'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V'),
(15, 3, 'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:I'),
(15, 4, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(15, 5, 'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),
(16, 1, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(16, 2, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),
(16, 3, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:V'),
(16, 4, 'vtiger_quotes:accountid:account_id:Quotes_Account_Name:V'),
(16, 5, 'vtiger_quotes:total:hdnGrandTotal:Quotes_Total:N'),
(16, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(17, 0, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(17, 1, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),
(17, 2, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:I'),
(17, 3, 'vtiger_quotes:accountid:account_id:Quotes_Account_Name:I'),
(17, 4, 'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),
(17, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(18, 0, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(18, 1, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:I'),
(18, 2, 'vtiger_quotes:accountid:account_id:Quotes_Account_Name:I'),
(18, 3, 'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),
(18, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(19, 0, 'vtiger_activity:status:taskstatus:Calendar_Status:V'),
(19, 1, 'vtiger_activity:activitytype:activitytype:Calendar_Activity_Type:V'),
(19, 2, 'vtiger_activity:subject:subject:Calendar_Subject:V'),
(19, 3, 'vtiger_seactivityrel:crmid:parent_id:Calendar_Related_To:V'),
(19, 4, 'vtiger_activity:date_start:date_start:Calendar_Start_Date_&_Time:DT'),
(19, 5, 'vtiger_activity:due_date:due_date:Calendar_Due_Date:D'),
(19, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Calendar_Assigned_To:V'),
(20, 0, 'vtiger_activity:subject:subject:Emails_Subject:V'),
(20, 1, 'vtiger_emaildetails:to_email:saved_toid:Emails_To:V'),
(20, 2, 'vtiger_activity:date_start:date_start:Emails_Date_&_Time_Sent:DT'),
(21, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(21, 2, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:V'),
(21, 3, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(21, 4, 'vtiger_invoice:total:hdnGrandTotal:Invoice_Total:N'),
(21, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(22, 1, 'vtiger_notes:title:notes_title:Documents_Title:V'),
(22, 2, 'vtiger_notes:filename:filename:Documents_File_Name:V'),
(22, 3, 'vtiger_crmentity:modifiedtime:modifiedtime:Documents_Modified_Time:DT'),
(22, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Documents_Assigned_To:V'),
(23, 1, 'vtiger_pricebook:bookname:bookname:PriceBooks_Price_Book_Name:V'),
(23, 2, 'vtiger_pricebook:active:active:PriceBooks_Active:C'),
(23, 3, 'vtiger_pricebook:currency_id:currency_id:PriceBooks_Currency:V'),
(24, 1, 'vtiger_products:productname:productname:Products_Product_Name:V'),
(24, 2, 'vtiger_products:productcode:productcode:Products_Part_Number:V'),
(24, 3, 'vtiger_products:commissionrate:commissionrate:Products_Commission_Rate:N'),
(24, 4, 'vtiger_products:qtyinstock:qtyinstock:Products_Qty_In_Stock:NN'),
(24, 5, 'vtiger_products:qty_per_unit:qty_per_unit:Products_Qty/Unit:N'),
(24, 6, 'vtiger_products:unit_price:unit_price:Products_Unit_Price:N'),
(25, 1, 'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),
(25, 2, 'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:V'),
(25, 3, 'vtiger_purchaseorder:tracking_no:tracking_no:PurchaseOrder_Tracking_Number:V'),
(25, 4, 'vtiger_purchaseorder:total:hdnGrandTotal:PurchaseOrder_Total:N'),
(25, 5, 'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),
(26, 1, 'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),
(26, 2, 'vtiger_salesorder:accountid:account_id:SalesOrder_Account_Name:V'),
(26, 3, 'vtiger_salesorder:quoteid:quote_id:SalesOrder_Quote_Name:V'),
(26, 4, 'vtiger_salesorder:total:hdnGrandTotal:SalesOrder_Total:N'),
(26, 5, 'vtiger_crmentity:smownerid:assigned_user_id:SalesOrder_Assigned_To:V'),
(27, 1, 'vtiger_vendor:vendorname:vendorname:Vendors_Vendor_Name:V'),
(27, 2, 'vtiger_vendor:phone:phone:Vendors_Phone:V'),
(27, 3, 'vtiger_vendor:email:email:Vendors_Email:V'),
(27, 4, 'vtiger_vendor:category:category:Vendors_Category:V'),
(27, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Vendors_Assigned_To:V'),
(28, 1, 'vtiger_faq:question:question:Faq_Question:V'),
(28, 2, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(28, 3, 'vtiger_faq:product_id:product_id:Faq_Product_Name:V'),
(28, 4, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),
(28, 5, 'vtiger_crmentity:modifiedtime:modifiedtime:Faq_Modified_Time:DT'),
(29, 1, 'vtiger_campaign:campaignname:campaignname:Campaigns_Campaign_Name:V'),
(29, 2, 'vtiger_campaign:campaigntype:campaigntype:Campaigns_Campaign_Type:V'),
(29, 3, 'vtiger_campaign:campaignstatus:campaignstatus:Campaigns_Campaign_Status:V'),
(29, 4, 'vtiger_campaign:expectedrevenue:expectedrevenue:Campaigns_Expected_Revenue:N'),
(29, 5, 'vtiger_campaign:closingdate:closingdate:Campaigns_Expected_Close_Date:D'),
(29, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Campaigns_Assigned_To:V'),
(30, 0, 'subject:subject:subject:Subject:V'),
(30, 1, 'from:fromname:fromname:From:N'),
(30, 2, 'to:tpname:toname:To:N'),
(30, 3, 'body:body:body:Body:V'),
(31, 0, 'vtiger_faq:question:question:Faq_Question:V'),
(31, 1, 'vtiger_faq:status:faqstatus:Faq_Status:V'),
(31, 2, 'vtiger_faq:product_id:product_id:Faq_Product_Name:I'),
(31, 3, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(31, 4, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),
(32, 0, 'vtiger_faq:question:question:Faq_Question:V'),
(32, 1, 'vtiger_faq:answer:faq_answer:Faq_Answer:V'),
(32, 2, 'vtiger_faq:status:faqstatus:Faq_Status:V'),
(32, 3, 'vtiger_faq:product_id:product_id:Faq_Product_Name:I'),
(32, 4, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(32, 5, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),
(33, 0, 'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),
(33, 1, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V'),
(33, 2, 'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:I'),
(33, 3, 'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),
(33, 4, 'vtiger_purchaseorder:duedate:duedate:PurchaseOrder_Due_Date:V'),
(34, 0, 'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),
(34, 1, 'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:I'),
(34, 2, 'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),
(34, 3, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V'),
(34, 4, 'vtiger_purchaseorder:carrier:carrier:PurchaseOrder_Carrier:V'),
(34, 5, 'vtiger_poshipads:ship_street:ship_street:PurchaseOrder_Shipping_Address:V'),
(35, 0, 'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),
(35, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(35, 2, 'vtiger_invoice:accountid:account_id:Invoice_Account_Name:I'),
(35, 3, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:I'),
(35, 4, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(35, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(35, 6, 'vtiger_crmentity:createdtime:createdtime:Invoice_Created_Time:DT'),
(36, 0, 'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),
(36, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(36, 2, 'vtiger_invoice:accountid:account_id:Invoice_Account_Name:I'),
(36, 3, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:I'),
(36, 4, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(36, 5, 'vtiger_invoiceshipads:ship_street:ship_street:Invoice_Shipping_Address:V'),
(36, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(37, 0, 'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),
(37, 1, 'vtiger_salesorder:accountid:account_id:SalesOrder_Account_Name:I'),
(37, 2, 'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V'),
(37, 3, 'vtiger_crmentity:smownerid:assigned_user_id:SalesOrder_Assigned_To:V'),
(37, 4, 'vtiger_soshipads:ship_street:ship_street:SalesOrder_Shipping_Address:V'),
(37, 5, 'vtiger_salesorder:carrier:carrier:SalesOrder_Carrier:V'),
(38, 1, 'vtiger_service:servicename:servicename:Services_Service_Name:V'),
(38, 2, 'vtiger_service:service_usageunit:service_usageunit:Services_Usage_Unit:V'),
(38, 3, 'vtiger_service:unit_price:unit_price:Services_Price:N'),
(38, 4, 'vtiger_service:qty_per_unit:qty_per_unit:Services_No_of_Units:N'),
(38, 5, 'vtiger_service:servicecategory:servicecategory:Services_Service_Category:V'),
(38, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Services_Owner:I'),
(39, 0, 'vtiger_pbxmanager:callstatus:callstatus:PBXManager_Call_Status:V'),
(39, 1, 'vtiger_pbxmanager:customernumber:customernumber:PBXManager_Customer_Number:V'),
(39, 2, 'vtiger_pbxmanager:customer:customer:PBXManager_Customer:V'),
(39, 3, 'vtiger_pbxmanager:user:user:PBXManager_User:V'),
(39, 4, 'vtiger_pbxmanager:recordingurl:recordingurl:PBXManager_Recording_URL:V'),
(39, 5, 'vtiger_pbxmanager:totalduration:totalduration:PBXManager_Total_Duration:I'),
(39, 6, 'vtiger_pbxmanager:starttime:starttime:PBXManager_Start_Time:DT'),
(40, 1, 'vtiger_servicecontracts:subject:subject:ServiceContracts_Subject:V'),
(40, 2, 'vtiger_servicecontracts:sc_related_to:sc_related_to:ServiceContracts_Related_to:V'),
(40, 3, 'vtiger_crmentity:smownerid:assigned_user_id:ServiceContracts_Assigned_To:V'),
(40, 4, 'vtiger_servicecontracts:start_date:start_date:ServiceContracts_Start_Date:D'),
(40, 5, 'vtiger_servicecontracts:due_date:due_date:ServiceContracts_Due_date:D'),
(40, 7, 'vtiger_servicecontracts:progress:progress:ServiceContracts_Progress:N'),
(40, 8, 'vtiger_servicecontracts:contract_status:contract_status:ServiceContracts_Status:V'),
(41, 0, 'vtiger_modcomments:commentcontent:commentcontent:ModComments_Comment:V'),
(41, 1, 'vtiger_modcomments:related_to:related_to:ModComments_Related_To:V'),
(41, 2, 'vtiger_crmentity:modifiedtime:modifiedtime:ModComments_Modified_Time:DT'),
(41, 3, 'vtiger_crmentity:smownerid:assigned_user_id:ModComments_Assigned_To:V'),
(42, 0, 'vtiger_smsnotifier:message:message:SMSNotifier_message:V'),
(42, 2, 'vtiger_crmentity:smownerid:assigned_user_id:SMSNotifier_Assigned_To:V'),
(42, 3, 'vtiger_crmentity:createdtime:createdtime:SMSNotifier_Created_Time:DT'),
(42, 4, 'vtiger_crmentity:modifiedtime:modifiedtime:SMSNotifier_Modified_Time:DT'),
(46, 1, 'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),
(46, 2, 'vtiger_assets:account:account:Assets_Customer_Name:V'),
(46, 3, 'vtiger_assets:product:product:Assets_Product_Name:V'),
(47, 0, 'vtiger_projectmilestone:projectmilestonename:projectmilestonename:ProjectMilestone_Project_Milestone_Name:V'),
(47, 1, 'vtiger_projectmilestone:projectmilestonedate:projectmilestonedate:ProjectMilestone_Milestone_Date:D'),
(47, 3, 'vtiger_crmentity:description:description:ProjectMilestone_description:V'),
(47, 4, 'vtiger_crmentity:createdtime:createdtime:ProjectMilestone_Created_Time:DT'),
(47, 5, 'vtiger_crmentity:modifiedtime:modifiedtime:ProjectMilestone_Modified_Time:DT'),
(48, 2, 'vtiger_projecttask:projecttaskname:projecttaskname:ProjectTask_Project_Task_Name:V'),
(48, 3, 'vtiger_projecttask:projectid:projectid:ProjectTask_Related_to:V'),
(48, 4, 'vtiger_projecttask:projecttaskpriority:projecttaskpriority:ProjectTask_Priority:V'),
(48, 5, 'vtiger_projecttask:projecttaskprogress:projecttaskprogress:ProjectTask_Progress:V'),
(48, 6, 'vtiger_projecttask:projecttaskhours:projecttaskhours:ProjectTask_Worked_Hours:V'),
(48, 7, 'vtiger_projecttask:startdate:startdate:ProjectTask_Start_Date:D'),
(48, 8, 'vtiger_projecttask:enddate:enddate:ProjectTask_End_Date:D'),
(48, 9, 'vtiger_crmentity:smownerid:assigned_user_id:ProjectTask_Assigned_To:V'),
(49, 0, 'vtiger_project:projectname:projectname:Project_Project_Name:V'),
(49, 1, 'vtiger_project:linktoaccountscontacts:linktoaccountscontacts:Project_Related_to:V'),
(49, 2, 'vtiger_project:startdate:startdate:Project_Start_Date:D'),
(49, 3, 'vtiger_project:targetenddate:targetenddate:Project_Target_End_Date:D'),
(49, 4, 'vtiger_project:actualenddate:actualenddate:Project_Actual_End_Date:D'),
(49, 5, 'vtiger_project:targetbudget:targetbudget:Project_Target_Budget:V'),
(49, 6, 'vtiger_project:progress:progress:Project_Progress:V'),
(49, 7, 'vtiger_project:projectstatus:projectstatus:Project_Status:V'),
(49, 8, 'vtiger_crmentity:smownerid:assigned_user_id:Project_Assigned_To:V'),
(49, 19, 'vtiger_project:contactid:contactid:Project_Contact_Name:V');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvstdfilter`
--

CREATE TABLE `vtiger_cvstdfilter` (
  `cvid` int(19) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `stdfilter` varchar(250) DEFAULT '',
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_cvstdfilter`
--

INSERT INTO `vtiger_cvstdfilter` (`cvid`, `columnname`, `stdfilter`, `startdate`, `enddate`) VALUES
(3, 'vtiger_crmentity:modifiedtime:modifiedtime:Leads_Modified_Time', 'thismonth', '2005-06-01', '2005-06-30'),
(6, 'vtiger_crmentity:createdtime:createdtime:Accounts_Created_Time', 'thisweek', '2005-06-19', '2005-06-25'),
(9, 'vtiger_contactsubdetails:birthday:birthday:Contacts_Birthdate', 'today', '2005-06-25', '2005-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_dashboard_tabs`
--

CREATE TABLE `vtiger_dashboard_tabs` (
  `id` int(19) NOT NULL,
  `tabname` varchar(50) DEFAULT NULL,
  `isdefault` int(1) DEFAULT 0,
  `sequence` int(5) DEFAULT 2,
  `appname` varchar(20) DEFAULT NULL,
  `modulename` varchar(50) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_dashboard_tabs`
--

INSERT INTO `vtiger_dashboard_tabs` (`id`, `tabname`, `isdefault`, `sequence`, `appname`, `modulename`, `userid`) VALUES
(2, 'My Dashboard', 1, 1, '', '', 1),
(6, 'My Dashboard', 1, 1, '', '', 6),
(7, 'My Dashboard', 1, 1, '', '', 7),
(11, 'My Dashboard', 1, 1, '', '', 8),
(17, 'Marketing', 0, 2, NULL, NULL, 1),
(19, 'Quản lý bán hàng', 0, 3, NULL, NULL, 1),
(20, 'My Dashboard', 1, 1, '', '', 9),
(22, 'My Dashboard', 1, 1, '', '', 10),
(23, 'My Dashboard', 1, 1, '', '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_grp2grp`
--

CREATE TABLE `vtiger_datashare_grp2grp` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_grp2role`
--

CREATE TABLE `vtiger_datashare_grp2role` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_grp2rs`
--

CREATE TABLE `vtiger_datashare_grp2rs` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_module_rel`
--

CREATE TABLE `vtiger_datashare_module_rel` (
  `shareid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `relationtype` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_relatedmodules`
--

CREATE TABLE `vtiger_datashare_relatedmodules` (
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `tabid` int(19) DEFAULT NULL,
  `relatedto_tabid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_datashare_relatedmodules`
--

INSERT INTO `vtiger_datashare_relatedmodules` (`datashare_relatedmodule_id`, `tabid`, `relatedto_tabid`) VALUES
(1, 6, 2),
(2, 6, 13),
(3, 6, 20),
(4, 6, 22),
(5, 6, 23),
(6, 2, 20),
(7, 2, 22),
(8, 20, 22),
(9, 22, 23);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_relatedmodules_seq`
--

CREATE TABLE `vtiger_datashare_relatedmodules_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_datashare_relatedmodules_seq`
--

INSERT INTO `vtiger_datashare_relatedmodules_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_relatedmodule_permission`
--

CREATE TABLE `vtiger_datashare_relatedmodule_permission` (
  `shareid` int(19) NOT NULL,
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_role2group`
--

CREATE TABLE `vtiger_datashare_role2group` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_role2role`
--

CREATE TABLE `vtiger_datashare_role2role` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_role2rs`
--

CREATE TABLE `vtiger_datashare_role2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_rs2grp`
--

CREATE TABLE `vtiger_datashare_rs2grp` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_rs2role`
--

CREATE TABLE `vtiger_datashare_rs2role` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_rs2rs`
--

CREATE TABLE `vtiger_datashare_rs2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_date_format`
--

CREATE TABLE `vtiger_date_format` (
  `date_formatid` int(19) NOT NULL,
  `date_format` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_date_format`
--

INSERT INTO `vtiger_date_format` (`date_formatid`, `date_format`, `sortorderid`, `presence`) VALUES
(1, 'dd-mm-yyyy', 0, 1),
(2, 'mm-dd-yyyy', 1, 1),
(3, 'yyyy-mm-dd', 2, 1),
(4, 'dd.mm.yyyy', 3, 1),
(5, 'dd/mm/yyyy', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_date_format_seq`
--

CREATE TABLE `vtiger_date_format_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_date_format_seq`
--

INSERT INTO `vtiger_date_format_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_dayoftheweek`
--

CREATE TABLE `vtiger_dayoftheweek` (
  `dayoftheweekid` int(11) NOT NULL,
  `dayoftheweek` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_dayoftheweek`
--

INSERT INTO `vtiger_dayoftheweek` (`dayoftheweekid`, `dayoftheweek`, `sortorderid`, `presence`) VALUES
(1, 'Sunday', 0, 1),
(2, 'Monday', 1, 1),
(3, 'Tuesday', 2, 1),
(4, 'Wednesday', 3, 1),
(5, 'Thursday', 4, 1),
(6, 'Friday', 5, 1),
(7, 'Saturday', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_dayoftheweek_seq`
--

CREATE TABLE `vtiger_dayoftheweek_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_dayoftheweek_seq`
--

INSERT INTO `vtiger_dayoftheweek_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultactivitytype`
--

CREATE TABLE `vtiger_defaultactivitytype` (
  `defaultactivitytypeid` int(11) NOT NULL,
  `defaultactivitytype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_defaultactivitytype`
--

INSERT INTO `vtiger_defaultactivitytype` (`defaultactivitytypeid`, `defaultactivitytype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Call', 1, 299, 1),
(2, 'Meeting', 1, 300, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultactivitytype_seq`
--

CREATE TABLE `vtiger_defaultactivitytype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_defaultactivitytype_seq`
--

INSERT INTO `vtiger_defaultactivitytype_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultcalendarview`
--

CREATE TABLE `vtiger_defaultcalendarview` (
  `defaultcalendarviewid` int(11) NOT NULL,
  `defaultcalendarview` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_defaultcalendarview`
--

INSERT INTO `vtiger_defaultcalendarview` (`defaultcalendarviewid`, `defaultcalendarview`, `sortorderid`, `presence`) VALUES
(1, 'ListView', 0, 1),
(2, 'MyCalendar', 1, 1),
(3, 'SharedCalendar', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultcalendarview_seq`
--

CREATE TABLE `vtiger_defaultcalendarview_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_defaultcalendarview_seq`
--

INSERT INTO `vtiger_defaultcalendarview_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultcv`
--

CREATE TABLE `vtiger_defaultcv` (
  `tabid` int(19) NOT NULL,
  `defaultviewname` varchar(50) NOT NULL,
  `query` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaulteventstatus`
--

CREATE TABLE `vtiger_defaulteventstatus` (
  `defaulteventstatusid` int(11) NOT NULL,
  `defaulteventstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_defaulteventstatus`
--

INSERT INTO `vtiger_defaulteventstatus` (`defaulteventstatusid`, `defaulteventstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Planned', 1, 296, 1),
(2, 'Held', 1, 297, 2),
(3, 'Not Held', 1, 298, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaulteventstatus_seq`
--

CREATE TABLE `vtiger_defaulteventstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_defaulteventstatus_seq`
--

INSERT INTO `vtiger_defaulteventstatus_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultlandingpage`
--

CREATE TABLE `vtiger_defaultlandingpage` (
  `defaultlandingpageid` int(11) NOT NULL,
  `defaultlandingpage` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_defaultlandingpage`
--

INSERT INTO `vtiger_defaultlandingpage` (`defaultlandingpageid`, `defaultlandingpage`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'true', 1, 303, 1, NULL),
(2, 'false', 1, 304, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultlandingpage_seq`
--

CREATE TABLE `vtiger_defaultlandingpage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_defaultlandingpage_seq`
--

INSERT INTO `vtiger_defaultlandingpage_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_default_record_view`
--

CREATE TABLE `vtiger_default_record_view` (
  `default_record_viewid` int(11) NOT NULL,
  `default_record_view` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_default_record_view`
--

INSERT INTO `vtiger_default_record_view` (`default_record_viewid`, `default_record_view`, `sortorderid`, `presence`) VALUES
(1, 'Summary', 0, 1),
(2, 'Detail', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_default_record_view_seq`
--

CREATE TABLE `vtiger_default_record_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_default_record_view_seq`
--

INSERT INTO `vtiger_default_record_view_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_def_org_field`
--

CREATE TABLE `vtiger_def_org_field` (
  `tabid` int(10) DEFAULT NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) DEFAULT NULL,
  `readonly` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_def_org_field`
--

INSERT INTO `vtiger_def_org_field` (`tabid`, `fieldid`, `visible`, `readonly`) VALUES
(6, 1, 0, 0),
(6, 2, 0, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(7, 37, 0, 0),
(7, 38, 0, 0),
(7, 39, 0, 0),
(7, 40, 0, 0),
(7, 41, 0, 0),
(7, 42, 0, 0),
(7, 43, 0, 0),
(7, 44, 0, 0),
(7, 45, 0, 0),
(7, 46, 0, 0),
(7, 47, 0, 0),
(7, 48, 0, 0),
(7, 49, 0, 0),
(7, 50, 0, 0),
(7, 51, 0, 0),
(7, 52, 0, 0),
(7, 53, 0, 0),
(7, 54, 0, 0),
(7, 55, 0, 0),
(7, 56, 0, 0),
(7, 57, 0, 0),
(7, 58, 0, 0),
(7, 59, 0, 0),
(7, 60, 0, 0),
(7, 61, 0, 0),
(7, 62, 0, 0),
(7, 63, 0, 0),
(7, 64, 0, 0),
(7, 65, 0, 0),
(4, 66, 0, 0),
(4, 67, 0, 0),
(4, 68, 0, 0),
(4, 69, 0, 0),
(4, 70, 0, 0),
(4, 71, 0, 0),
(4, 72, 0, 0),
(4, 73, 0, 0),
(4, 74, 0, 0),
(4, 75, 0, 0),
(4, 76, 0, 0),
(4, 77, 0, 0),
(4, 78, 0, 0),
(4, 79, 0, 0),
(4, 80, 0, 0),
(4, 81, 0, 0),
(4, 82, 0, 0),
(4, 83, 0, 0),
(4, 84, 0, 0),
(4, 85, 0, 0),
(4, 86, 0, 0),
(4, 87, 0, 0),
(4, 88, 0, 0),
(4, 89, 0, 0),
(4, 90, 0, 0),
(4, 91, 0, 0),
(4, 92, 0, 0),
(4, 93, 0, 0),
(4, 94, 0, 0),
(4, 95, 0, 0),
(4, 96, 0, 0),
(4, 97, 0, 0),
(4, 98, 0, 0),
(4, 99, 0, 0),
(4, 100, 0, 0),
(4, 101, 0, 0),
(4, 102, 0, 0),
(4, 103, 0, 0),
(4, 104, 0, 0),
(4, 105, 0, 0),
(4, 106, 0, 0),
(4, 107, 0, 0),
(4, 108, 0, 0),
(4, 109, 0, 0),
(2, 110, 0, 0),
(2, 111, 0, 0),
(2, 112, 0, 0),
(2, 113, 0, 0),
(2, 114, 0, 0),
(2, 115, 0, 0),
(2, 116, 0, 0),
(2, 117, 0, 0),
(2, 118, 0, 0),
(2, 119, 0, 0),
(2, 120, 0, 0),
(2, 121, 0, 0),
(2, 122, 0, 0),
(2, 123, 0, 0),
(2, 124, 0, 0),
(2, 125, 0, 0),
(26, 126, 0, 0),
(26, 127, 0, 0),
(26, 128, 0, 0),
(26, 129, 0, 0),
(26, 130, 0, 0),
(26, 131, 0, 0),
(26, 132, 0, 0),
(26, 133, 0, 0),
(26, 134, 0, 0),
(26, 135, 0, 0),
(26, 136, 0, 0),
(26, 137, 0, 0),
(26, 138, 0, 0),
(26, 139, 0, 0),
(26, 140, 0, 0),
(26, 141, 0, 0),
(26, 142, 0, 0),
(26, 143, 0, 0),
(26, 144, 0, 0),
(26, 145, 0, 0),
(26, 146, 0, 0),
(26, 147, 0, 0),
(26, 148, 0, 0),
(26, 149, 0, 0),
(26, 150, 0, 0),
(4, 151, 0, 0),
(6, 152, 0, 0),
(7, 153, 0, 0),
(26, 154, 0, 0),
(13, 155, 0, 0),
(13, 156, 0, 0),
(13, 157, 0, 0),
(13, 158, 0, 0),
(13, 159, 0, 0),
(13, 160, 0, 0),
(13, 161, 0, 0),
(13, 162, 0, 0),
(13, 163, 0, 0),
(13, 164, 0, 0),
(13, 165, 0, 0),
(13, 166, 0, 0),
(13, 167, 0, 0),
(13, 168, 0, 0),
(13, 169, 0, 0),
(13, 170, 0, 0),
(13, 171, 0, 0),
(13, 172, 0, 0),
(13, 173, 0, 0),
(14, 174, 0, 0),
(14, 175, 0, 0),
(14, 176, 0, 0),
(14, 177, 0, 0),
(14, 178, 0, 0),
(14, 179, 0, 0),
(14, 180, 0, 0),
(14, 181, 0, 0),
(14, 182, 0, 0),
(14, 183, 0, 0),
(14, 184, 0, 0),
(14, 185, 0, 0),
(14, 186, 0, 0),
(14, 187, 0, 0),
(14, 188, 0, 0),
(14, 189, 0, 0),
(14, 190, 0, 0),
(14, 191, 0, 0),
(14, 192, 0, 0),
(14, 193, 0, 0),
(14, 194, 0, 0),
(14, 195, 0, 0),
(14, 196, 0, 0),
(14, 197, 0, 0),
(14, 198, 0, 0),
(14, 199, 0, 0),
(14, 200, 0, 0),
(14, 201, 0, 0),
(14, 202, 0, 0),
(14, 203, 0, 0),
(14, 204, 0, 0),
(8, 205, 0, 0),
(8, 206, 0, 0),
(8, 207, 0, 0),
(8, 208, 0, 0),
(8, 209, 0, 0),
(8, 210, 0, 0),
(8, 211, 0, 0),
(8, 212, 0, 0),
(8, 213, 0, 0),
(8, 214, 0, 0),
(8, 215, 0, 0),
(8, 216, 0, 0),
(8, 217, 0, 0),
(8, 218, 0, 0),
(8, 219, 0, 0),
(10, 220, 0, 0),
(10, 221, 0, 0),
(10, 222, 0, 0),
(10, 223, 0, 0),
(10, 224, 0, 0),
(10, 225, 0, 0),
(10, 226, 0, 0),
(10, 227, 0, 0),
(10, 228, 0, 0),
(10, 229, 0, 0),
(10, 230, 0, 0),
(10, 231, 0, 0),
(9, 232, 0, 0),
(9, 233, 0, 0),
(9, 234, 0, 0),
(9, 235, 0, 0),
(9, 236, 0, 0),
(9, 237, 0, 0),
(9, 238, 0, 0),
(9, 239, 0, 0),
(9, 240, 0, 0),
(9, 241, 0, 0),
(9, 242, 0, 0),
(9, 243, 0, 0),
(9, 244, 0, 0),
(9, 245, 0, 0),
(9, 246, 0, 0),
(9, 247, 0, 0),
(9, 248, 0, 0),
(9, 249, 0, 0),
(9, 250, 0, 0),
(9, 251, 0, 0),
(9, 252, 0, 0),
(9, 253, 0, 0),
(9, 254, 0, 0),
(9, 255, 0, 0),
(16, 256, 0, 0),
(16, 257, 0, 0),
(16, 258, 0, 0),
(16, 259, 0, 0),
(16, 260, 0, 0),
(16, 261, 0, 0),
(16, 262, 0, 0),
(16, 263, 0, 0),
(16, 264, 0, 0),
(16, 265, 0, 0),
(16, 266, 0, 0),
(16, 267, 0, 0),
(16, 268, 0, 0),
(16, 269, 0, 0),
(16, 270, 0, 0),
(16, 271, 0, 0),
(16, 272, 0, 0),
(16, 273, 0, 0),
(16, 274, 0, 0),
(16, 275, 0, 0),
(16, 276, 0, 0),
(16, 277, 0, 0),
(16, 278, 0, 0),
(15, 279, 0, 0),
(15, 280, 0, 0),
(15, 281, 0, 0),
(15, 282, 0, 0),
(15, 283, 0, 0),
(15, 284, 0, 0),
(15, 285, 0, 0),
(15, 286, 0, 0),
(15, 287, 0, 0),
(15, 288, 0, 0),
(18, 289, 0, 0),
(18, 290, 0, 0),
(18, 291, 0, 0),
(18, 292, 0, 0),
(18, 293, 0, 0),
(18, 294, 0, 0),
(18, 295, 0, 0),
(18, 296, 0, 0),
(18, 297, 0, 0),
(18, 298, 0, 0),
(18, 299, 0, 0),
(18, 300, 0, 0),
(18, 301, 0, 0),
(18, 302, 0, 0),
(18, 303, 0, 0),
(18, 304, 0, 0),
(18, 305, 0, 0),
(19, 306, 0, 0),
(19, 307, 0, 0),
(19, 308, 0, 0),
(19, 309, 0, 0),
(19, 310, 0, 0),
(19, 311, 0, 0),
(19, 312, 0, 0),
(19, 313, 0, 0),
(20, 314, 0, 0),
(20, 315, 0, 0),
(20, 316, 0, 0),
(20, 317, 0, 0),
(20, 318, 0, 0),
(20, 319, 0, 0),
(20, 320, 0, 0),
(20, 321, 0, 0),
(20, 322, 0, 0),
(20, 323, 0, 0),
(20, 324, 0, 0),
(20, 325, 0, 0),
(20, 326, 0, 0),
(20, 327, 0, 0),
(20, 328, 0, 0),
(20, 329, 0, 0),
(20, 330, 0, 0),
(20, 331, 0, 0),
(20, 332, 0, 0),
(20, 333, 0, 0),
(20, 334, 0, 0),
(20, 335, 0, 0),
(20, 336, 0, 0),
(20, 337, 0, 0),
(20, 338, 0, 0),
(20, 339, 0, 0),
(20, 340, 0, 0),
(20, 341, 0, 0),
(20, 342, 0, 0),
(20, 343, 0, 0),
(20, 344, 0, 0),
(20, 345, 0, 0),
(20, 346, 0, 0),
(20, 347, 0, 0),
(20, 348, 0, 0),
(20, 349, 0, 0),
(20, 350, 0, 0),
(21, 351, 0, 0),
(21, 352, 0, 0),
(21, 353, 0, 0),
(21, 354, 0, 0),
(21, 355, 0, 0),
(21, 356, 0, 0),
(21, 357, 0, 0),
(21, 358, 0, 0),
(21, 359, 0, 0),
(21, 360, 0, 0),
(21, 361, 0, 0),
(21, 362, 0, 0),
(21, 363, 0, 0),
(21, 364, 0, 0),
(21, 365, 0, 0),
(21, 366, 0, 0),
(21, 367, 0, 0),
(21, 368, 0, 0),
(21, 369, 0, 0),
(21, 370, 0, 0),
(21, 371, 0, 0),
(21, 372, 0, 0),
(21, 373, 0, 0),
(21, 374, 0, 0),
(21, 375, 0, 0),
(21, 376, 0, 0),
(21, 377, 0, 0),
(21, 378, 0, 0),
(21, 379, 0, 0),
(21, 380, 0, 0),
(21, 381, 0, 0),
(21, 382, 0, 0),
(21, 383, 0, 0),
(21, 384, 0, 0),
(21, 385, 0, 0),
(21, 386, 0, 0),
(21, 387, 0, 0),
(21, 388, 0, 0),
(22, 389, 0, 0),
(22, 390, 0, 0),
(22, 391, 0, 0),
(22, 392, 0, 0),
(22, 393, 0, 0),
(22, 394, 0, 0),
(22, 395, 0, 0),
(22, 396, 0, 0),
(22, 397, 0, 0),
(22, 398, 0, 0),
(22, 399, 0, 0),
(22, 400, 0, 0),
(22, 401, 0, 0),
(22, 402, 0, 0),
(22, 403, 0, 0),
(22, 404, 0, 0),
(22, 405, 0, 0),
(22, 406, 0, 0),
(22, 407, 0, 0),
(22, 408, 0, 0),
(22, 409, 0, 0),
(22, 410, 0, 0),
(22, 411, 0, 0),
(22, 412, 0, 0),
(22, 413, 0, 0),
(22, 414, 0, 0),
(22, 415, 0, 0),
(22, 416, 0, 0),
(22, 417, 0, 0),
(22, 418, 0, 0),
(22, 419, 0, 0),
(22, 420, 0, 0),
(22, 421, 0, 0),
(22, 422, 0, 0),
(22, 423, 0, 0),
(22, 424, 0, 0),
(22, 425, 0, 0),
(22, 426, 0, 0),
(22, 427, 0, 0),
(22, 428, 0, 0),
(22, 429, 0, 0),
(22, 430, 0, 0),
(22, 431, 0, 0),
(22, 432, 0, 0),
(22, 433, 0, 0),
(22, 434, 0, 0),
(22, 435, 0, 0),
(23, 436, 0, 0),
(23, 437, 0, 0),
(23, 438, 0, 0),
(23, 439, 0, 0),
(23, 440, 0, 0),
(23, 441, 0, 0),
(23, 442, 0, 0),
(23, 443, 0, 0),
(23, 444, 0, 0),
(23, 445, 0, 0),
(23, 446, 0, 0),
(23, 447, 0, 0),
(23, 448, 0, 0),
(23, 449, 0, 0),
(23, 450, 0, 0),
(23, 451, 0, 0),
(23, 452, 0, 0),
(23, 453, 0, 0),
(23, 454, 0, 0),
(23, 455, 0, 0),
(23, 456, 0, 0),
(23, 457, 0, 0),
(23, 458, 0, 0),
(23, 459, 0, 0),
(23, 460, 0, 0),
(23, 461, 0, 0),
(23, 462, 0, 0),
(23, 463, 0, 0),
(23, 464, 0, 0),
(23, 465, 0, 0),
(23, 466, 0, 0),
(23, 467, 0, 0),
(23, 468, 0, 0),
(23, 469, 0, 0),
(23, 470, 0, 0),
(23, 471, 0, 0),
(23, 472, 0, 0),
(23, 473, 0, 0),
(23, 474, 0, 0),
(29, 475, 0, 0),
(29, 479, 0, 0),
(29, 480, 0, 0),
(29, 482, 0, 0),
(29, 489, 0, 0),
(29, 490, 0, 0),
(29, 491, 0, 0),
(29, 492, 0, 0),
(29, 493, 0, 0),
(29, 495, 0, 0),
(29, 496, 0, 0),
(29, 497, 0, 0),
(29, 498, 0, 0),
(29, 499, 0, 0),
(29, 504, 0, 0),
(29, 505, 0, 0),
(29, 506, 0, 0),
(29, 507, 0, 0),
(29, 515, 0, 0),
(10, 520, 0, 0),
(10, 521, 0, 0),
(10, 522, 0, 0),
(10, 523, 0, 0),
(10, 524, 0, 0),
(10, 525, 0, 0),
(31, 526, 0, 0),
(31, 527, 0, 0),
(31, 528, 0, 0),
(31, 529, 0, 0),
(31, 530, 0, 0),
(31, 531, 0, 0),
(31, 532, 0, 0),
(31, 533, 0, 0),
(31, 534, 0, 0),
(31, 535, 0, 0),
(31, 536, 0, 0),
(31, 537, 0, 0),
(31, 538, 0, 0),
(31, 539, 0, 0),
(31, 540, 0, 0),
(31, 541, 0, 0),
(31, 542, 0, 0),
(31, 543, 0, 0),
(31, 544, 0, 0),
(31, 545, 0, 0),
(31, 546, 0, 0),
(31, 547, 0, 0),
(35, 548, 0, 0),
(35, 549, 0, 0),
(35, 550, 0, 0),
(35, 551, 0, 0),
(35, 552, 0, 0),
(35, 553, 0, 0),
(35, 554, 0, 0),
(35, 555, 0, 0),
(35, 556, 0, 0),
(35, 557, 0, 0),
(35, 558, 0, 0),
(35, 559, 0, 0),
(35, 560, 0, 0),
(35, 561, 0, 0),
(35, 562, 0, 0),
(35, 563, 0, 0),
(35, 564, 0, 0),
(29, 565, 0, 0),
(37, 566, 0, 0),
(37, 567, 0, 0),
(37, 568, 0, 0),
(37, 569, 0, 0),
(37, 570, 0, 0),
(37, 571, 0, 0),
(37, 572, 0, 0),
(37, 573, 0, 0),
(37, 574, 0, 0),
(37, 575, 0, 0),
(37, 576, 0, 0),
(37, 577, 0, 0),
(37, 578, 0, 0),
(37, 579, 0, 0),
(37, 580, 0, 0),
(37, 581, 0, 0),
(37, 582, 0, 0),
(37, 583, 0, 0),
(37, 584, 0, 0),
(37, 585, 0, 0),
(37, 586, 0, 0),
(37, 587, 0, 0),
(38, 588, 0, 0),
(38, 589, 0, 0),
(38, 590, 0, 0),
(38, 591, 0, 0),
(38, 592, 0, 0),
(38, 593, 0, 0),
(38, 594, 0, 0),
(38, 595, 0, 0),
(42, 596, 0, 0),
(42, 597, 0, 0),
(42, 598, 0, 0),
(42, 599, 0, 0),
(42, 600, 0, 0),
(42, 601, 0, 0),
(43, 602, 0, 0),
(43, 603, 0, 0),
(43, 604, 0, 0),
(43, 605, 0, 0),
(43, 606, 0, 0),
(43, 607, 0, 0),
(43, 608, 0, 0),
(43, 609, 0, 0),
(43, 610, 0, 0),
(43, 611, 0, 0),
(43, 612, 0, 0),
(43, 613, 0, 0),
(43, 614, 0, 0),
(44, 615, 0, 0),
(44, 616, 0, 0),
(44, 617, 0, 0),
(44, 618, 0, 0),
(44, 619, 0, 0),
(44, 620, 0, 0),
(44, 621, 0, 0),
(44, 622, 0, 0),
(44, 623, 0, 0),
(44, 624, 0, 0),
(44, 625, 0, 0),
(44, 626, 0, 0),
(44, 627, 0, 0),
(44, 628, 0, 0),
(44, 629, 0, 0),
(44, 630, 0, 0),
(44, 631, 0, 0),
(44, 632, 0, 0),
(45, 633, 0, 0),
(45, 634, 0, 0),
(45, 635, 0, 0),
(45, 636, 0, 0),
(45, 637, 0, 0),
(45, 638, 0, 0),
(45, 639, 0, 0),
(45, 640, 0, 0),
(45, 641, 0, 0),
(45, 642, 0, 0),
(45, 643, 0, 0),
(45, 644, 0, 0),
(45, 645, 0, 0),
(45, 646, 0, 0),
(45, 647, 0, 0),
(45, 648, 0, 0),
(45, 649, 0, 0),
(45, 650, 0, 0),
(45, 651, 0, 0),
(45, 652, 0, 0),
(47, 653, 0, 0),
(47, 654, 0, 0),
(47, 655, 0, 0),
(47, 656, 0, 0),
(47, 657, 0, 0),
(47, 658, 0, 0),
(47, 659, 0, 0),
(47, 660, 0, 0),
(47, 661, 0, 0),
(47, 662, 0, 0),
(47, 663, 0, 0),
(47, 664, 0, 0),
(47, 665, 0, 0),
(47, 666, 0, 0),
(47, 667, 0, 0),
(47, 668, 0, 0),
(47, 669, 0, 0),
(47, 670, 0, 0),
(47, 671, 0, 0),
(47, 672, 0, 0),
(47, 673, 0, 0),
(2, 674, 0, 0),
(29, 675, 0, 0),
(23, 676, 0, 0),
(23, 677, 0, 0),
(23, 678, 0, 0),
(23, 679, 0, 0),
(23, 680, 0, 0),
(23, 681, 0, 0),
(23, 682, 0, 0),
(23, 683, 0, 0),
(23, 684, 0, 0),
(22, 685, 0, 0),
(22, 686, 0, 0),
(22, 687, 0, 0),
(22, 688, 0, 0),
(22, 689, 0, 0),
(22, 690, 0, 0),
(22, 691, 0, 0),
(22, 692, 0, 0),
(22, 693, 0, 0),
(21, 694, 0, 0),
(21, 695, 0, 0),
(21, 696, 0, 0),
(21, 697, 0, 0),
(21, 698, 0, 0),
(21, 699, 0, 0),
(21, 700, 0, 0),
(21, 701, 0, 0),
(21, 702, 0, 0),
(20, 703, 0, 0),
(20, 704, 0, 0),
(20, 705, 0, 0),
(20, 706, 0, 0),
(20, 707, 0, 0),
(20, 708, 0, 0),
(20, 709, 0, 0),
(20, 710, 0, 0),
(20, 711, 0, 0),
(29, 712, 0, 0),
(44, 713, 0, 0),
(38, 714, 0, 0),
(29, 715, 0, 0),
(29, 716, 0, 0),
(29, 717, 0, 0),
(23, 718, 0, 0),
(22, 719, 0, 0),
(21, 720, 0, 0),
(20, 721, 0, 0),
(29, 722, 0, 0),
(6, 723, 0, 0),
(4, 724, 0, 0),
(2, 725, 0, 0),
(29, 726, 0, 0),
(23, 727, 0, 0),
(23, 728, 0, 0),
(21, 729, 0, 0),
(21, 730, 0, 0),
(18, 731, 0, 0),
(7, 732, 0, 0),
(38, 733, 0, 0),
(38, 734, 0, 0),
(23, 735, 0, 0),
(20, 736, 0, 0),
(21, 737, 0, 0),
(22, 738, 0, 0),
(29, 739, 0, 0),
(2, 740, 0, 0),
(13, 741, 0, 0),
(29, 742, 0, 0),
(29, 743, 0, 0),
(29, 744, 0, 0),
(29, 745, 0, 0),
(14, 772, 0, 0),
(31, 773, 0, 0),
(23, 774, 0, 0),
(29, 775, 0, 0),
(23, 776, 0, 0),
(23, 777, 0, 0),
(23, 778, 0, 0),
(20, 779, 0, 0),
(20, 780, 0, 0),
(20, 781, 0, 0),
(21, 782, 0, 0),
(22, 783, 0, 0),
(22, 784, 0, 0),
(22, 785, 0, 0),
(38, 786, 0, 0),
(38, 787, 0, 0),
(38, 788, 0, 0),
(2, 789, 0, 0),
(4, 790, 0, 0),
(6, 791, 0, 0),
(7, 792, 0, 0),
(8, 793, 0, 0),
(9, 794, 0, 0),
(10, 795, 0, 0),
(13, 796, 0, 0),
(14, 797, 0, 0),
(15, 798, 0, 0),
(16, 799, 0, 0),
(18, 800, 0, 0),
(19, 801, 0, 0),
(20, 802, 0, 0),
(21, 803, 0, 0),
(22, 804, 0, 0),
(23, 805, 0, 0),
(26, 806, 0, 0),
(10, 807, 0, 0),
(2, 808, 0, 0),
(4, 809, 0, 0),
(6, 810, 0, 0),
(7, 811, 0, 0),
(8, 812, 0, 0),
(9, 813, 0, 0),
(10, 814, 0, 0),
(13, 815, 0, 0),
(14, 816, 0, 0),
(15, 817, 0, 0),
(16, 818, 0, 0),
(18, 819, 0, 0),
(19, 820, 0, 0),
(20, 821, 0, 0),
(21, 822, 0, 0),
(22, 823, 0, 0),
(23, 824, 0, 0),
(26, 825, 0, 0),
(2, 826, 0, 0),
(4, 827, 0, 0),
(6, 828, 0, 0),
(7, 829, 0, 0),
(8, 830, 0, 0),
(9, 831, 0, 0),
(10, 832, 0, 0),
(13, 833, 0, 0),
(14, 834, 0, 0),
(15, 835, 0, 0),
(16, 836, 0, 0),
(18, 837, 0, 0),
(19, 838, 0, 0),
(20, 839, 0, 0),
(21, 840, 0, 0),
(22, 841, 0, 0),
(23, 842, 0, 0),
(26, 843, 0, 0),
(20, 844, 0, 0),
(21, 845, 0, 0),
(22, 846, 0, 0),
(23, 847, 0, 0),
(45, 848, 0, 0),
(45, 849, 0, 0),
(29, 850, 0, 0),
(22, 851, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_def_org_share`
--

CREATE TABLE `vtiger_def_org_share` (
  `ruleid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `permission` int(19) DEFAULT NULL,
  `editstatus` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_def_org_share`
--

INSERT INTO `vtiger_def_org_share` (`ruleid`, `tabid`, `permission`, `editstatus`) VALUES
(1, 2, 2, 0),
(2, 4, 2, 0),
(3, 6, 2, 0),
(4, 7, 2, 0),
(5, 9, 3, 1),
(6, 13, 2, 0),
(7, 16, 3, 2),
(8, 20, 2, 0),
(9, 21, 2, 0),
(10, 22, 2, 0),
(11, 23, 2, 0),
(12, 26, 2, 0),
(13, 8, 2, 0),
(14, 14, 2, 0),
(15, 31, 2, 0),
(16, 35, 3, 0),
(17, 37, 2, 0),
(18, 38, 2, 0),
(19, 42, 2, 0),
(20, 43, 2, 0),
(21, 44, 2, 0),
(22, 45, 2, 0),
(23, 47, 2, 0),
(24, 18, 2, 0),
(25, 10, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_def_org_share_seq`
--

CREATE TABLE `vtiger_def_org_share_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_def_org_share_seq`
--

INSERT INTO `vtiger_def_org_share_seq` (`id`) VALUES
(25);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_durationhrs`
--

CREATE TABLE `vtiger_durationhrs` (
  `hrsid` int(19) NOT NULL,
  `hrs` varchar(50) DEFAULT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_durationmins`
--

CREATE TABLE `vtiger_durationmins` (
  `minsid` int(19) NOT NULL,
  `mins` varchar(50) DEFAULT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_duration_minutes`
--

CREATE TABLE `vtiger_duration_minutes` (
  `minutesid` int(19) NOT NULL,
  `duration_minutes` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_duration_minutes`
--

INSERT INTO `vtiger_duration_minutes` (`minutesid`, `duration_minutes`, `sortorderid`, `presence`, `color`) VALUES
(1, '00', 0, 1, NULL),
(2, '15', 1, 1, NULL),
(3, '30', 2, 1, NULL),
(4, '45', 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_duration_minutes_seq`
--

CREATE TABLE `vtiger_duration_minutes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_duration_minutes_seq`
--

INSERT INTO `vtiger_duration_minutes_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emaildetails`
--

CREATE TABLE `vtiger_emaildetails` (
  `emailid` int(19) NOT NULL,
  `from_email` varchar(50) NOT NULL DEFAULT '',
  `to_email` text DEFAULT NULL,
  `cc_email` text DEFAULT NULL,
  `bcc_email` text DEFAULT NULL,
  `assigned_user_email` varchar(50) NOT NULL DEFAULT '',
  `idlists` text DEFAULT NULL,
  `email_flag` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_emaildetails`
--

INSERT INTO `vtiger_emaildetails` (`emailid`, `from_email`, `to_email`, `cc_email`, `bcc_email`, `assigned_user_email`, `idlists`, `email_flag`) VALUES
(18, 'vanM2519034@gstudent.ctu.edu.vn', '[\"tranm2519032@gstudent.ctu.edu.vn\"]', '[\"\"]', '[\"\"]', '', '13@1|', 'SENT'),
(35, 'tranm2519032@gstudent.ctu.edu.vn', '[\"lan@gmai.com\"]', '[\"\"]', '[\"\"]', '', '', 'SENT');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emailslookup`
--

CREATE TABLE `vtiger_emailslookup` (
  `crmid` int(20) DEFAULT NULL,
  `setype` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `fieldid` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_emailslookup`
--

INSERT INTO `vtiger_emailslookup` (`crmid`, `setype`, `value`, `fieldid`) VALUES
(2, 'Accounts', 'myngoc1506@gmail.com', 9),
(13, 'Accounts', 'tranm2519032@gstudent.ctu.edu.vn', 9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emails_recipientprefs`
--

CREATE TABLE `vtiger_emails_recipientprefs` (
  `id` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `prefs` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emailtemplates`
--

CREATE TABLE `vtiger_emailtemplates` (
  `foldername` varchar(100) DEFAULT NULL,
  `templatename` varchar(100) DEFAULT NULL,
  `templatepath` varchar(100) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `templateid` int(19) NOT NULL,
  `systemtemplate` int(1) NOT NULL DEFAULT 0,
  `module` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_emailtemplates`
--

INSERT INTO `vtiger_emailtemplates` (`foldername`, `templatename`, `templatepath`, `subject`, `description`, `body`, `deleted`, `templateid`, `systemtemplate`, `module`) VALUES
('Public', 'Announcement for Release', '', 'Announcement for Release', 'Announcement of a release', 'Hello!   <br />\n	<br />\n	On behalf of the vtiger team,  I am pleased to announce the release of vtiger crm4.2 . This is a feature packed release including the mass email template handling, custom view feature, vtiger_reports feature and a host of other utilities. vtiger runs on all platforms.    <br />\n        <br />\n	Notable Features of vtiger are :   <br />\n	<br />\n	-Email Client Integration    <br />\n	-Trouble Ticket Integration   <br />\n	-Invoice Management Integration   <br />\n	-Reports Integration   <br />\n	-Portal Integration   <br />\n	-Enhanced Word Plugin Support   <br />\n	-Custom View Integration   <br />\n	<br />\n	Known Issues:   <br />\n	-ABCD   <br />\n	-EFGH   <br />\n	-IJKL   <br />\n	-MNOP   <br />\n	-QRST', 0, 1, 0, 'Contacts'),
('Public', 'Pending Invoices', '', 'Invoices Pending', 'Payment Due', 'name <br />\nstreet, <br />\ncity, <br />\nstate, <br />\n zip) <br />\n  <br />\n Dear <br />\n <br />\n Please check the following invoices that are yet to be paid by you: <br />\n <br />\n No. Date      Amount <br />\n 1   1/1/01    $4000 <br />\n 2   2/2//01   $5000 <br />\n 3   3/3/01    $10000 <br />\n 4   7/4/01    $23560 <br />\n <br />\n Kindly let us know if there are any issues that you feel are pending to be discussed. <br />\n We will be more than happy to give you a call. <br />\n We would like to continue our business with you.', 0, 2, 0, 'Contacts'),
('Public', 'Acceptance Proposal', '', 'Acceptance Proposal', 'Acceptance of Proposal', ' Dear <br />\n <br />\nYour proposal on the project XYZW has been reviewed by us <br />\nand is acceptable in its entirety. <br />\n <br />\nWe are eagerly looking forward to this project <br />\nand are pleased about having the opportunity to work <br />\ntogether. We look forward to a long standing relationship <br />\nwith your esteemed firm. <br />\n<br />\nI would like to take this opportunity to invite you <br />\nto a game of golf on Wednesday morning 9am at the <br />\nCuff Links Ground. We will be waiting for you in the <br />\nExecutive Lounge. <br />\n<br />\nLooking forward to seeing you there.', 0, 3, 0, 'Contacts'),
('Public', 'Goods received acknowledgement', '', 'Goods received acknowledgement', 'Acknowledged Receipt of Goods', ' The undersigned hereby acknowledges receipt and delivery of the goods. <br />\nThe undersigned will release the payment subject to the goods being discovered not satisfactory. <br />\n<br />\nSigned under seal this <date>', 0, 4, 0, 'Contacts'),
('Public', 'Accept Order', '', 'Accept Order', 'Acknowledgement/Acceptance of Order', ' Dear <br />\n         We are in receipt of your order as contained in the <br />\n   purchase order form.We consider this to be final and binding on both sides. <br />\nIf there be any exceptions noted, we shall consider them <br />\nonly if the objection is received within ten days of receipt of <br />\nthis notice. <br />\n <br />\nThank you for your patronage.', 0, 5, 0, 'Contacts'),
('Public', 'Address Change', '', 'Change of Address', 'Address Change', 'Dear <br />\n <br />\nWe are relocating our office to <br />\n11111,XYZDEF Cross, <br />\nUVWWX Circle <br />\nThe telephone number for this new location is (101) 1212-1328. <br />\n<br />\nOur Manufacturing Division will continue operations <br />\nat 3250 Lovedale Square Avenue, in Frankfurt. <br />\n<br />\nWe hope to keep in touch with you all. <br />\nPlease update your addressbooks.', 0, 6, 0, 'Contacts'),
('Public', 'Follow Up', '', 'Follow Up', 'Follow Up of meeting', 'Dear <br />\n<br />\nThank you for extending us the opportunity to meet with <br />\nyou and members of your staff. <br />\n<br />\nI know that John Doe serviced your account <br />\nfor many years and made many friends at your firm. He has personally <br />\ndiscussed with me the deep relationship that he had with your firm. <br />\nWhile his presence will be missed, I can promise that we will <br />\ncontinue to provide the fine service that was accorded by <br />\nJohn to your firm. <br />\n<br />\nI was genuinely touched to receive such fine hospitality. <br />\n<br />\nThank you once again.', 0, 7, 0, 'Contacts'),
('Public', 'Target Crossed!', '', 'Target Crossed!', 'Fantastic Sales Spree!', 'Congratulations! <br />\n<br />\nThe numbers are in and I am proud to inform you that our <br />\ntotal sales for the previous quarter <br />\namounts to $100,000,00.00!. This is the first time <br />\nwe have exceeded the target by almost 30%. <br />\nWe have also beat the previous quarter record by a <br />\nwhopping 75%! <br />\n<br />\nLet us meet at Smoking Joe for a drink in the evening! <br />\n\nC you all there guys!', 0, 8, 0, 'Contacts'),
('Public', 'Thanks Note', '', 'Thanks Note', 'Note of thanks', 'Dear <br />\n<br />\nThank you for your confidence in our ability to serve you. <br />\nWe are glad to be given the chance to serve you.I look <br />\nforward to establishing a long term partnership with you. <br />\nConsider me as a friend. <br />\nShould any need arise,please do give us a call.', 0, 9, 0, 'Contacts'),
('Public', 'Customer Login Details', '', 'Customer Portal Login Details', 'Send Portal login details to customer', '<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n        <html>\n        <head>\n          <title></title>\n        </head>\n        <body class=\"scayt-enabled\">\n          <!-- <center> -->\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"borderGrey\" width=\"600px\" style=\"margin-left:0px;\">\n              <tbody>\n                <tr>\n                  <td colspan=\"6\"><!-- Begin Pre header --><!-- // End Pre header \\ --></td>\n                </tr>\n                <tr style=\"height:50px;\">\n                  <td colspan=\"6\" style=\"\n                  font-family: Helvetica,Verdana,sans-serif\">\n                  <div style=\"margin-bottom:10px;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br />\n                    Dear $contacts-firstname$ $contacts-lastname$,</div>\n\n                    <div style=\"margin-top:20px;margin-bottom:20px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">As our customer, you can be assured of getting excellent support from our team. I would like to take this opportunity to introduce the portal we have setup for valuable customers like you. You can submit questions/issues via the portal, see past issues and responses. In addition, Portal provides you access to our knowledge base and documents we shared with you in the past.\n                    </div>\n\n                    <div style=\"margin-top:10px;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">$URL$ to login to the portal, with the credentials below.</div>\n\n                    <div style=\"margin-top:20px;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Your Username: $login_name$</div>\n\n                    <div style=\"margin-bottom:20px;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Your Password: $password$</div>\n                    <div class=\"gmail_extra\" style=\"margin-top:10px;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Thank you,<br />\n                      $contacts-smownerid$</div>\n\n                    </td>\n                  </tr>\n                  <tr>\n                    <td colspan=\"6\" style=\"font-family: Helvetica,Verdana,sans-serif;font-size: 11px;color: #666666;\">\n                      <table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\">\n                        <tbody>\n                          <!--copy right data-->\n                          <tr>\n                            <td valign=\"top\" style=\"\n                            padding-left: 0px;\n                            padding-right: 0px;\n                            width:350px\">\n                                <div style=\"margin-top:20px;\"><em>Powered By <a href=\"www.vtiger.com\">Vtiger</a><div>\n                            </td>\n                          </tr>\n                          <!--subscribers links-->\n                        </tbody>\n                      </table>\n                    </td>\n                  </tr>\n                </tbody>\n              </table>\n            <!-- </center> -->\n          </body>\n          </html>', 0, 10, 0, 'Contacts'),
('Public', 'Support end notification before a week', '', 'VtigerCRM Support Notification', 'Send Notification mail to customer before a week of support end date', '<table width=\"700\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);\">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width=\"50\"> </td>\n            <td>\n            <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;\">\n                                <tr>\n                                    <td align=\"center\" rowspan=\"4\">$logo$</td>\n                                    <td align=\"center\"> </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"left\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;\">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"right\" style=\"padding-right: 100px;\">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">\n                                <tr>\n                                    <td valign=\"top\">\n                                    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\">\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;\">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;\">This is just a notification mail regarding your support end.<br /><span style=\"font-weight: bold;\">Priority:</span> Urgent<br />Your Support is going to expire on next week<br />Please contact support@vtiger.com.<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"center\"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><strong style=\"padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;\"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;\">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><a style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\" href=\"http://www.vtiger.com\">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width=\"1%\" valign=\"top\"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);\">\n                                <tr>\n                                    <td align=\"center\">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Email Id: <a style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);\" href=\"mailto:info@vtiger.com\">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width=\"50\"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>', 0, 11, 0, 'Contacts'),
('Public', 'Support end notification before a month', '', 'VtigerCRM Support Notification', 'Send Notification mail to customer before a month of support end date', '<table width=\"700\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);\">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width=\"50\"> </td>\n            <td>\n            <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;\">\n                                <tr>\n                                    <td align=\"center\" rowspan=\"4\">$logo$</td>\n                                    <td align=\"center\"> </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"left\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;\">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"right\" style=\"padding-right: 100px;\">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">\n                                <tr>\n                                    <td valign=\"top\">\n                                    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\">\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;\">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;\">This is just a notification mail regarding your support end.<br /><span style=\"font-weight: bold;\">Priority:</span> Normal<br />Your Support is going to expire on next month.<br />Please contact support@vtiger.com<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"center\"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><strong style=\"padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;\"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;\">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><a href=\"http://www.vtiger.com\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width=\"1%\" valign=\"top\"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);\">\n                                <tr>\n                                    <td align=\"center\">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Email Id: <a href=\"mailto:info@vtiger.com\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);\">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width=\"50\"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>', 0, 12, 0, 'Contacts'),
('Public', 'Activity Reminder', NULL, 'Reminder', 'Reminder', '<p>This is a reminder notification for the Activity<br/>The details are :<br/> \n							&nbsp; Subject : $events-subject$<br/> \n							&nbsp; Start Date & Time : $events-date_start$<br/>\n							&nbsp; End Date & Time : $events-due_date$<br/> \n							&nbsp; Status : $events-eventstatus$<br/> \n							&nbsp; Location : $events-location$<br/> \n							&nbsp; Description : $events-description$<br/><br/> \n							<p/>', 0, 14, 1, 'Events'),
('Public', 'ToDo Reminder', NULL, 'Activity Reminder', 'Reminder', '<p>This is a reminder notification for the Activity<br/>The details are :<br/>\n								&nbsp; Subject : $calendar-subject$<br/>\n								&nbsp; Start Date & Time : $calendar-date_start$<br/>\n								&nbsp; Due Date : $calendar-due_date$<br/>\n								&nbsp; Status : $calendar-status$<br/>\n								&nbsp; Location : $calendar-location$<br/>\n								&nbsp; Description : $calendar-description$<br/><br/>\n								<p/>', 0, 15, 1, 'Events'),
('Public', 'Invite Users', NULL, 'Invitation', 'Invite Users', '<p>$invitee_name$,<br/><br/>You have been invited for an activity<br/><br/>The details are :<br/>\n								&nbsp; Subject : $events-subject$<br/>\n								&nbsp; Start Date & Time : $events-date_start$<br/> \n								&nbsp; End Date & Time : $events-due_date$<br/>\n								&nbsp; Status : $events-eventstatus$<br/>\n								&nbsp; Priority : $events-priority$<br/>\n								&nbsp; Related To : $events-crmid$<br/>\n								&nbsp; Contact List : $events-contactid$<br/>\n								&nbsp; Location : $events-location$<br/>\n								&nbsp; Description : $events-description$<br/><br/>\n								Thanks & Regards,<br/>\n								$current_user_name$\n								<p/>', 0, 16, 1, 'Events'),
(NULL, 'Ưu đãi Tết', NULL, '$companydetails-logoname$', 'Nước ngọt đồng giá', '<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\r\n<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body class=\"scayt-enabled\">\r\n<div>\r\n<center>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"borderGrey\" width=\"600px\">\r\n	<tbody>\r\n		<tr style=\"height:50px;\">\r\n			<td colspan=\"6\" style=\"border-top: 1px solid rgb(221, 221, 221); font-family: Helvetica, Verdana, sans-serif; text-align: center;\"><strong><span style=\"color:#FF0000;\">CHƯƠNG TR&Igrave;NH KHUYẾN M&Atilde;I TẾT 2021</span></strong><br />\r\n			<br />\r\n			<span aria-hidden=\"false\" role=\"presentation\" style=\"display: contents;\"><span class=\"object-value\"><span class=\"objectBox objectBox-string\" title=\"Object\">Nước ngọt đồng gi&aacute; chỉ từ 5.5k/chai, 30k/lốc, 118k/th&ugrave;ng </span></span></span><br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\" style=\"font-family: Helvetica,Verdana,sans-serif;font-size: 11px;color: #666666;\">\r\n			<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td colspan=\"2\" id=\"social\" valign=\"middle\">\r\n						<center>\r\n						<div>&nbsp;<a href=\"\" target=\"_blank\"> follow on Twitter</a> | <a href=\"\" target=\"_blank\">follow on Facebook</a></div>\r\n						</center>\r\n						</td>\r\n					</tr>\r\n					<!--copy right data-->\r\n					<tr>\r\n						<td valign=\"top\" width=\"350px\">\r\n						<center>\r\n						<div><em>Copyright &copy; 2021 <a href=\"www.nhom2crm.com\" target=\"_blank\">www.nhom2crm.com</a>, All rights reserved.</em></div>\r\n						</center>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>\r\n', 0, 17, 0, 'Accounts'),
(NULL, 'Chiết khấu cho khách sỉ', NULL, 'BẢNG CHIẾT KHẤU CHO KHÁCH SỈ', '', '<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\r\n<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body class=\"scayt-enabled\">\r\n<div>\r\n<center>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"borderGrey\" width=\"600px\">\r\n	<tbody>\r\n		<tr style=\"height:50px;\">\r\n			<td colspan=\"6\" style=\"border-top: 1px solid rgb(221, 221, 221); font-family: Helvetica, Verdana, sans-serif; text-align: center;\"><span style=\"color:#FF0000;\"><strong>BẢNG CHIẾT KHẤU CHO KH&Aacute;CH SỈ</strong></span><br />\r\n			<br />\r\n			<em>(Chưa cập nhật)</em><br />\r\n			<br />\r\n			<br />\r\n			Cảm ơn qu&yacute; kh&aacute;ch! Hẹn gặp lại!</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\" style=\"font-family: Helvetica,Verdana,sans-serif;font-size: 11px;color: #666666;\">\r\n			<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td colspan=\"2\" id=\"social\" valign=\"middle\">\r\n						<center>\r\n						<div>&nbsp;<a href=\"\" target=\"_blank\"> follow on Twitter</a> | <a href=\"\" target=\"_blank\">follow on Facebook</a></div>\r\n						</center>\r\n						</td>\r\n					</tr>\r\n					<!--copy right data-->\r\n					<tr>\r\n						<td valign=\"top\" width=\"350px\">\r\n						<center>\r\n						<div><em>Copyright &copy; 2021 <a href=\"www.nhom2crm.com\" target=\"_blank\">www.nhom2crm.com</a>, All rights reserved.</em></div>\r\n						</center>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>\r\n', 0, 18, 0, 'Accounts');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emailtemplates_seq`
--

CREATE TABLE `vtiger_emailtemplates_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_emailtemplates_seq`
--

INSERT INTO `vtiger_emailtemplates_seq` (`id`) VALUES
(18);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_email_access`
--

CREATE TABLE `vtiger_email_access` (
  `crmid` int(11) DEFAULT NULL,
  `mailid` int(11) DEFAULT NULL,
  `accessdate` date DEFAULT NULL,
  `accesstime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_email_track`
--

CREATE TABLE `vtiger_email_track` (
  `crmid` int(11) DEFAULT NULL,
  `mailid` int(11) DEFAULT NULL,
  `access_count` int(11) DEFAULT NULL,
  `click_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_entityname`
--

CREATE TABLE `vtiger_entityname` (
  `tabid` int(19) NOT NULL DEFAULT 0,
  `modulename` varchar(100) DEFAULT NULL,
  `tablename` varchar(100) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `entityidfield` varchar(150) NOT NULL,
  `entityidcolumn` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_entityname`
--

INSERT INTO `vtiger_entityname` (`tabid`, `modulename`, `tablename`, `fieldname`, `entityidfield`, `entityidcolumn`) VALUES
(2, 'Potentials', 'vtiger_potential', 'potentialname', 'potentialid', 'potential_id'),
(4, 'Contacts', 'vtiger_contactdetails', 'firstname,lastname', 'contactid', 'contact_id'),
(6, 'Accounts', 'vtiger_account', 'accountname', 'accountid', 'account_id'),
(7, 'Leads', 'vtiger_leaddetails', 'firstname,lastname', 'leadid', 'leadid'),
(8, 'Documents', 'vtiger_notes', 'title', 'notesid', 'notesid'),
(9, 'Calendar', 'vtiger_activity', 'subject', 'activityid', 'activityid'),
(10, 'Emails', 'vtiger_activity', 'subject', 'activityid', 'activityid'),
(13, 'HelpDesk', 'vtiger_troubletickets', 'title', 'ticketid', 'ticketid'),
(14, 'Products', 'vtiger_products', 'productname', 'productid', 'product_id'),
(15, 'Faq', 'vtiger_faq', 'question', 'id', 'id'),
(18, 'Vendors', 'vtiger_vendor', 'vendorname', 'vendorid', 'vendor_id'),
(19, 'PriceBooks', 'vtiger_pricebook', 'bookname', 'pricebookid', 'pricebookid'),
(20, 'Quotes', 'vtiger_quotes', 'subject', 'quoteid', 'quote_id'),
(21, 'PurchaseOrder', 'vtiger_purchaseorder', 'subject', 'purchaseorderid', 'purchaseorderid'),
(22, 'SalesOrder', 'vtiger_salesorder', 'subject', 'salesorderid', 'salesorder_id'),
(23, 'Invoice', 'vtiger_invoice', 'subject', 'invoiceid', 'invoiceid'),
(26, 'Campaigns', 'vtiger_campaign', 'campaignname', 'campaignid', 'campaignid'),
(29, 'Users', 'vtiger_users', 'first_name,last_name', 'id', 'id'),
(31, 'Services', 'vtiger_service', 'servicename', 'serviceid', 'serviceid'),
(35, 'PBXManager', 'vtiger_pbxmanager', 'customernumber', 'pbxmanagerid', 'pbxmanagerid'),
(37, 'ServiceContracts', 'vtiger_servicecontracts', 'subject', 'servicecontractsid', 'servicecontractsid'),
(38, 'ModComments', 'vtiger_modcomments', 'commentcontent', 'modcommentsid', 'modcommentsid'),
(42, 'SMSNotifier', 'vtiger_smsnotifier', 'message', 'smsnotifierid', 'smsnotifierid'),
(43, 'ProjectMilestone', 'vtiger_projectmilestone', 'projectmilestonename', 'projectmilestoneid', 'projectmilestoneid'),
(44, 'ProjectTask', 'vtiger_projecttask', 'projecttaskname', 'projecttaskid', 'projecttaskid'),
(45, 'Project', 'vtiger_project', 'projectname', 'projectid', 'projectid'),
(47, 'Assets', 'vtiger_assets', 'assetname', 'assetsid', 'assetsid');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandlers`
--

CREATE TABLE `vtiger_eventhandlers` (
  `eventhandler_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `handler_path` varchar(400) NOT NULL,
  `handler_class` varchar(100) NOT NULL,
  `cond` text DEFAULT NULL,
  `is_active` int(1) NOT NULL,
  `dependent_on` varchar(255) DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_eventhandlers`
--

INSERT INTO `vtiger_eventhandlers` (`eventhandler_id`, `event_name`, `handler_path`, `handler_class`, `cond`, `is_active`, `dependent_on`) VALUES
(1, 'vtiger.entity.aftersave', 'modules/SalesOrder/RecurringInvoiceHandler.php', 'RecurringInvoiceHandler', '', 1, '[]'),
(2, 'vtiger.entity.beforesave', 'data/VTEntityDelta.php', 'VTEntityDelta', '', 1, '[]'),
(3, 'vtiger.entity.aftersave', 'data/VTEntityDelta.php', 'VTEntityDelta', '', 1, '[]'),
(4, 'vtiger.entity.aftersave', 'modules/com_vtiger_workflow/VTEventHandler.inc', 'VTWorkflowEventHandler', '', 1, '[\"VTEntityDelta\"]'),
(5, 'vtiger.entity.afterrestore', 'modules/com_vtiger_workflow/VTEventHandler.inc', 'VTWorkflowEventHandler', '', 1, '[]'),
(6, 'vtiger.entity.aftersave.final', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDeskHandler', '', 1, '[]'),
(7, 'vtiger.entity.aftersave', 'modules/WSAPP/WorkFlowHandlers/WSAPPAssignToTracker.php', 'WSAPPAssignToTracker', '', 1, '[\"VTEntityDelta\"]'),
(8, 'vtiger.entity.aftersave.final', 'modules/ModTracker/ModTrackerHandler.php', 'ModTrackerHandler', '', 1, '[]'),
(9, 'vtiger.entity.beforedelete', 'modules/ModTracker/ModTrackerHandler.php', 'ModTrackerHandler', '', 1, '[]'),
(10, 'vtiger.entity.afterrestore', 'modules/ModTracker/ModTrackerHandler.php', 'ModTrackerHandler', '', 1, '[]'),
(11, 'vtiger.entity.aftersave', 'modules/PBXManager/PBXManagerHandler.php', 'PBXManagerHandler', '', 1, '[\"VTEntityDelta\"]'),
(12, 'vtiger.entity.afterdelete', 'modules/PBXManager/PBXManagerHandler.php', 'PBXManagerHandler', '', 1, '[]'),
(13, 'vtiger.entity.afterrestore', 'modules/PBXManager/PBXManagerHandler.php', 'PBXManagerHandler', '', 1, '[]'),
(14, 'vtiger.batchevent.save', 'modules/PBXManager/PBXManagerHandler.php', 'PBXManagerBatchHandler', '', 1, '[]'),
(15, 'vtiger.batchevent.delete', 'modules/PBXManager/PBXManagerHandler.php', 'PBXManagerBatchHandler', '', 1, '[]'),
(16, 'vtiger.lead.convertlead', 'modules/PBXManager/PBXManagerHandler.php', 'PBXManagerHandler', '', 1, '[]'),
(17, 'vtiger.entity.beforesave', 'modules/ServiceContracts/ServiceContractsHandler.php', 'ServiceContractsHandler', '', 1, '[]'),
(18, 'vtiger.entity.aftersave', 'modules/ServiceContracts/ServiceContractsHandler.php', 'ServiceContractsHandler', '', 1, '[]'),
(19, 'vtiger.entity.aftersave', 'modules/Vtiger/handlers/RecordLabelUpdater.php', 'Vtiger_RecordLabelUpdater_Handler', '', 1, '[]'),
(20, 'vtiger.entity.aftersave', 'modules/Invoice/InvoiceHandler.php', 'InvoiceHandler', '', 1, '[]'),
(21, 'vtiger.entity.aftersave', 'modules/PurchaseOrder/PurchaseOrderHandler.php', 'PurchaseOrderHandler', '', 1, '[]'),
(22, 'vtiger.entity.aftersave', 'modules/ModComments/ModCommentsHandler.php', 'ModCommentsHandler', '', 1, '[]'),
(23, 'vtiger.picklist.afterrename', 'modules/Settings/Picklist/handlers/PickListHandler.php', 'PickListHandler', '', 1, '[]'),
(24, 'vtiger.picklist.afterdelete', 'modules/Settings/Picklist/handlers/PickListHandler.php', 'PickListHandler', '', 1, '[]'),
(25, 'vtiger.entity.aftersave', 'modules/Vtiger/handlers/EmailLookupHandler.php', 'EmailLookupHandler', '', 1, '[\"VTEntityDelta\"]'),
(26, 'vtiger.entity.afterdelete', 'modules/Vtiger/handlers/EmailLookupHandler.php', 'EmailLookupHandler', '', 1, '[]'),
(27, 'vtiger.entity.afterrestore', 'modules/Vtiger/handlers/EmailLookupHandler.php', 'EmailLookupHandler', '', 1, '[]'),
(28, 'vtiger.batchevent.save', 'modules/Vtiger/handlers/EmailLookupHandler.php', 'EmailLookupBatchHandler', '', 1, '[]'),
(29, 'vtiger.lead.convertlead', 'modules/Leads/handlers/LeadHandler.php', 'LeadHandler', '', 1, '[]'),
(30, 'vtiger.entity.beforesave', 'modules/Vtiger/handlers/CheckDuplicateHandler.php', 'CheckDuplicateHandler', '', 1, '[]'),
(31, 'vtiger.entity.beforerestore', 'modules/Vtiger/handlers/CheckDuplicateHandler.php', 'CheckDuplicateHandler', '', 1, '[]'),
(32, 'vtiger.entity.aftersave', 'modules/Vtiger/handlers/FollowRecordHandler.php', 'FollowRecordHandler', '', 1, '[]'),
(33, 'vtiger.field.afterdelete', 'modules/Vtiger/handlers/FieldEventHandler.php', 'FieldEventHandler', '', 1, '[]'),
(34, 'vtiger.entity.beforerelate', 'modules/Vtiger/handlers/RelateEntitesHandler.php', 'RelateEntitesHandler', '', 1, '[]'),
(35, 'vtiger.entity.afterrelate', 'modules/Vtiger/handlers/RelateEntitesHandler.php', 'RelateEntitesHandler', '', 1, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandlers_seq`
--

CREATE TABLE `vtiger_eventhandlers_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_eventhandlers_seq`
--

INSERT INTO `vtiger_eventhandlers_seq` (`id`) VALUES
(35);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandler_module`
--

CREATE TABLE `vtiger_eventhandler_module` (
  `eventhandler_module_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `handler_class` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_eventhandler_module`
--

INSERT INTO `vtiger_eventhandler_module` (`eventhandler_module_id`, `module_name`, `handler_class`) VALUES
(1, 'ModTracker', 'ModTrackerHandler'),
(2, 'ServiceContracts', 'ServiceContractsHandler'),
(3, 'Home', 'Vtiger_RecordLabelUpdater_Handler'),
(4, 'Invoice', 'InvoiceHandler'),
(5, 'PurchaseOrder', 'PurchaseOrderHandler');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandler_module_seq`
--

CREATE TABLE `vtiger_eventhandler_module_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_eventhandler_module_seq`
--

INSERT INTO `vtiger_eventhandler_module_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventstatus`
--

CREATE TABLE `vtiger_eventstatus` (
  `eventstatusid` int(19) NOT NULL,
  `eventstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_eventstatus`
--

INSERT INTO `vtiger_eventstatus` (`eventstatusid`, `eventstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Planned', 0, 38, 0, NULL),
(2, 'Held', 0, 39, 1, NULL),
(3, 'Not Held', 0, 40, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventstatus_seq`
--

CREATE TABLE `vtiger_eventstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_eventstatus_seq`
--

INSERT INTO `vtiger_eventstatus_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_expectedresponse`
--

CREATE TABLE `vtiger_expectedresponse` (
  `expectedresponseid` int(19) NOT NULL,
  `expectedresponse` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_expectedresponse`
--

INSERT INTO `vtiger_expectedresponse` (`expectedresponseid`, `expectedresponse`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Excellent', 1, 42, 1, NULL),
(3, 'Good', 1, 43, 2, NULL),
(4, 'Average', 1, 44, 3, NULL),
(5, 'Poor', 1, 45, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_expectedresponse_seq`
--

CREATE TABLE `vtiger_expectedresponse_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_expectedresponse_seq`
--

INSERT INTO `vtiger_expectedresponse_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_extnstore_users`
--

CREATE TABLE `vtiger_extnstore_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL,
  `instanceurl` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faq`
--

CREATE TABLE `vtiger_faq` (
  `id` int(11) NOT NULL,
  `faq_no` varchar(100) NOT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `category` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_faq`
--

INSERT INTO `vtiger_faq` (`id`, `faq_no`, `product_id`, `question`, `answer`, `category`, `status`, `tags`) VALUES
(33, 'FAQ1', '32', 'Mua số lượng bao nhiêu được tính giá sỉ?', 'Mua từ 10 thùng trở lên được tính giá sỉ', '', 'Published', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcategories`
--

CREATE TABLE `vtiger_faqcategories` (
  `faqcategories_id` int(19) NOT NULL,
  `faqcategories` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_faqcategories`
--

INSERT INTO `vtiger_faqcategories` (`faqcategories_id`, `faqcategories`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'General', 1, 46, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcategories_seq`
--

CREATE TABLE `vtiger_faqcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_faqcategories_seq`
--

INSERT INTO `vtiger_faqcategories_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcf`
--

CREATE TABLE `vtiger_faqcf` (
  `faqid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_faqcf`
--

INSERT INTO `vtiger_faqcf` (`faqid`) VALUES
(33);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcomments`
--

CREATE TABLE `vtiger_faqcomments` (
  `commentid` int(19) NOT NULL,
  `faqid` int(19) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqstatus`
--

CREATE TABLE `vtiger_faqstatus` (
  `faqstatus_id` int(19) NOT NULL,
  `faqstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_faqstatus`
--

INSERT INTO `vtiger_faqstatus` (`faqstatus_id`, `faqstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Draft', 0, 47, 0, NULL),
(2, 'Reviewed', 0, 48, 1, NULL),
(3, 'Published', 0, 49, 2, NULL),
(4, 'Obsolete', 0, 50, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqstatus_seq`
--

CREATE TABLE `vtiger_faqstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_faqstatus_seq`
--

INSERT INTO `vtiger_faqstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_feedback`
--

CREATE TABLE `vtiger_feedback` (
  `userid` int(19) DEFAULT NULL,
  `dontshow` varchar(19) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_field`
--

CREATE TABLE `vtiger_field` (
  `tabid` int(19) NOT NULL,
  `fieldid` int(19) NOT NULL,
  `columnname` varchar(30) NOT NULL,
  `tablename` varchar(100) DEFAULT NULL,
  `generatedtype` int(19) NOT NULL DEFAULT 0,
  `uitype` varchar(30) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `fieldlabel` varchar(50) NOT NULL,
  `readonly` int(1) NOT NULL,
  `presence` int(19) NOT NULL DEFAULT 1,
  `defaultvalue` text DEFAULT NULL,
  `maximumlength` int(19) DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL,
  `block` int(19) DEFAULT NULL,
  `displaytype` int(19) DEFAULT NULL,
  `typeofdata` varchar(100) DEFAULT NULL,
  `quickcreate` int(10) NOT NULL DEFAULT 1,
  `quickcreatesequence` int(19) DEFAULT NULL,
  `info_type` varchar(20) DEFAULT NULL,
  `masseditable` int(10) NOT NULL DEFAULT 1,
  `helpinfo` text DEFAULT NULL,
  `summaryfield` int(10) NOT NULL DEFAULT 0,
  `headerfield` int(1) DEFAULT 0,
  `isunique` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_field`
--

INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `defaultvalue`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`, `summaryfield`, `headerfield`, `isunique`) VALUES
(6, 1, 'accountname', 'vtiger_account', 1, '2', 'accountname', 'Account Name', 1, 0, '', 100, 1, 9, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 1),
(6, 2, 'account_no', 'vtiger_account', 1, '4', 'account_no', 'Account No', 1, 0, '', 100, 2, 9, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(6, 3, 'phone', 'vtiger_account', 1, '11', 'phone', 'Phone', 1, 2, '', 100, 4, 9, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 0, 1, 0),
(6, 4, 'website', 'vtiger_account', 1, '17', 'website', 'Website', 1, 2, '', 100, 3, 9, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 0, 1, 0),
(6, 5, 'fax', 'vtiger_account', 1, '11', 'fax', 'Fax', 1, 2, '', 100, 6, 9, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 6, 'tickersymbol', 'vtiger_account', 1, '1', 'tickersymbol', 'Ticker Symbol', 1, 2, '', 100, 5, 9, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 7, 'otherphone', 'vtiger_account', 1, '11', 'otherphone', 'Other Phone', 1, 2, '', 100, 8, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 8, 'parentid', 'vtiger_account', 1, '51', 'account_id', 'Member Of', 1, 2, '', 100, 7, 9, 1, 'I~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(6, 9, 'email1', 'vtiger_account', 1, '13', 'email1', 'Email', 1, 2, '', 100, 10, 9, 1, 'E~O', 1, NULL, 'BAS', 1, NULL, 0, 1, 0),
(6, 10, 'employees', 'vtiger_account', 1, '7', 'employees', 'Employees', 1, 2, '', 100, 9, 9, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 11, 'email2', 'vtiger_account', 1, '13', 'email2', 'Other Email', 1, 2, '', 100, 11, 9, 1, 'E~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 12, 'ownership', 'vtiger_account', 1, '1', 'ownership', 'Ownership', 1, 2, '', 100, 12, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 13, 'rating', 'vtiger_account', 1, '15', 'rating', 'Rating', 1, 2, '', 100, 14, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 14, 'industry', 'vtiger_account', 1, '15', 'industry', 'industry', 1, 2, '', 100, 13, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 15, 'siccode', 'vtiger_account', 1, '1', 'siccode', 'SIC Code', 1, 2, '', 100, 16, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 16, 'account_type', 'vtiger_account', 1, '15', 'accounttype', 'Type', 1, 2, '', 100, 15, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 17, 'annualrevenue', 'vtiger_account', 1, '71', 'annual_revenue', 'Annual Revenue', 1, 2, '', 100, 18, 9, 1, 'N~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 18, 'emailoptout', 'vtiger_account', 1, '56', 'emailoptout', 'Email Opt Out', 1, 0, '', 100, 17, 9, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 19, 'notify_owner', 'vtiger_account', 1, '56', 'notify_owner', 'Notify Owner', 1, 2, '', 10, 20, 9, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(6, 20, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 19, 9, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1, 0, 0),
(6, 21, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 22, 9, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(6, 22, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 21, 9, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(6, 23, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 23, 9, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(6, 24, 'bill_street', 'vtiger_accountbillads', 1, '21', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 25, 'ship_street', 'vtiger_accountshipads', 1, '21', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 26, 'bill_city', 'vtiger_accountbillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(6, 27, 'ship_city', 'vtiger_accountshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 28, 'bill_state', 'vtiger_accountbillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 29, 'ship_state', 'vtiger_accountshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 30, 'bill_code', 'vtiger_accountbillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 31, 'ship_code', 'vtiger_accountshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 32, 'bill_country', 'vtiger_accountbillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(6, 33, 'ship_country', 'vtiger_accountshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 34, 'bill_pobox', 'vtiger_accountbillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 35, 'ship_pobox', 'vtiger_accountshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(6, 36, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 12, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 37, 'salutation', 'vtiger_leaddetails', 1, '55', 'salutationtype', 'Salutation', 1, 0, '', 100, 1, 13, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 38, 'firstname', 'vtiger_leaddetails', 1, '55', 'firstname', 'First Name', 1, 0, '', 100, 2, 13, 1, 'V~O', 2, 1, 'BAS', 1, NULL, 1, 0, 0),
(7, 39, 'lead_no', 'vtiger_leaddetails', 1, '4', 'lead_no', 'Lead No', 1, 0, '', 100, 3, 13, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(7, 40, 'phone', 'vtiger_leadaddress', 1, '11', 'phone', 'Phone', 1, 2, '', 100, 5, 13, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 0, 1, 0),
(7, 41, 'lastname', 'vtiger_leaddetails', 1, '255', 'lastname', 'Last Name', 1, 0, '', 100, 4, 13, 1, 'V~M', 0, 2, 'BAS', 1, NULL, 1, 0, 0),
(7, 42, 'mobile', 'vtiger_leadaddress', 1, '11', 'mobile', 'Mobile', 1, 2, '', 100, 7, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 43, 'company', 'vtiger_leaddetails', 1, '2', 'company', 'Company', 1, 2, '', 100, 6, 13, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 1, 0, 0),
(7, 44, 'fax', 'vtiger_leadaddress', 1, '11', 'fax', 'Fax', 1, 2, '', 100, 9, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 45, 'designation', 'vtiger_leaddetails', 1, '1', 'designation', 'Designation', 1, 2, '', 100, 8, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 46, 'email', 'vtiger_leaddetails', 1, '13', 'email', 'Email', 1, 2, '', 100, 11, 13, 1, 'E~O', 2, 5, 'BAS', 1, NULL, 0, 1, 0),
(7, 47, 'leadsource', 'vtiger_leaddetails', 1, '15', 'leadsource', 'Lead Source', 1, 2, '', 100, 10, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(7, 48, 'website', 'vtiger_leadsubdetails', 1, '17', 'website', 'Website', 1, 2, '', 100, 13, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 1, 0, 0),
(7, 49, 'industry', 'vtiger_leaddetails', 1, '15', 'industry', 'Industry', 1, 2, '', 100, 12, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(7, 50, 'leadstatus', 'vtiger_leaddetails', 1, '15', 'leadstatus', 'Lead Status', 1, 2, '', 100, 15, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 51, 'annualrevenue', 'vtiger_leaddetails', 1, '71', 'annualrevenue', 'Annual Revenue', 1, 2, '', 100, 14, 13, 1, 'N~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(7, 52, 'rating', 'vtiger_leaddetails', 1, '15', 'rating', 'Rating', 1, 2, '', 100, 17, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(7, 53, 'noofemployees', 'vtiger_leaddetails', 1, '1', 'noofemployees', 'No Of Employees', 1, 2, '', 100, 16, 13, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(7, 54, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 19, 13, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1, 0, 0),
(7, 55, 'secondaryemail', 'vtiger_leaddetails', 1, '13', 'secondaryemail', 'Secondary Email', 1, 2, '', 100, 18, 13, 1, 'E~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(7, 56, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 21, 13, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(7, 57, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 20, 13, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(7, 58, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 23, 13, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(7, 59, 'lane', 'vtiger_leadaddress', 1, '21', 'lane', 'Street', 1, 2, '', 100, 1, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 60, 'code', 'vtiger_leadaddress', 1, '1', 'code', 'Postal Code', 1, 2, '', 100, 3, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 61, 'city', 'vtiger_leadaddress', 1, '1', 'city', 'City', 1, 2, '', 100, 4, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(7, 62, 'country', 'vtiger_leadaddress', 1, '1', 'country', 'Country', 1, 2, '', 100, 5, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(7, 63, 'state', 'vtiger_leadaddress', 1, '1', 'state', 'State', 1, 2, '', 100, 6, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 64, 'pobox', 'vtiger_leadaddress', 1, '1', 'pobox', 'Po Box', 1, 2, '', 100, 2, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(7, 65, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 16, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 66, 'salutation', 'vtiger_contactdetails', 1, '55', 'salutationtype', 'Salutation', 1, 0, '', 100, 1, 4, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 67, 'firstname', 'vtiger_contactdetails', 1, '55', 'firstname', 'First Name', 1, 0, '', 100, 2, 4, 1, 'V~O', 2, 1, 'BAS', 1, NULL, 1, 0, 0),
(4, 68, 'contact_no', 'vtiger_contactdetails', 1, '4', 'contact_no', 'Contact Id', 1, 0, '', 100, 3, 4, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(4, 69, 'phone', 'vtiger_contactdetails', 1, '11', 'phone', 'Office Phone', 1, 2, '', 100, 5, 4, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 0, 1, 0),
(4, 70, 'lastname', 'vtiger_contactdetails', 1, '255', 'lastname', 'Last Name', 1, 0, '', 100, 4, 4, 1, 'V~M', 0, 2, 'BAS', 1, NULL, 1, 0, 0),
(4, 71, 'mobile', 'vtiger_contactdetails', 1, '11', 'mobile', 'Mobile', 1, 2, '', 100, 7, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 72, 'accountid', 'vtiger_contactdetails', 1, '51', 'account_id', 'Account Name', 1, 0, '', 100, 6, 4, 1, 'I~O', 2, 3, 'BAS', 1, NULL, 1, 0, 0),
(4, 73, 'homephone', 'vtiger_contactsubdetails', 1, '11', 'homephone', 'Home Phone', 1, 2, '', 100, 9, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 74, 'leadsource', 'vtiger_contactsubdetails', 1, '15', 'leadsource', 'Lead Source', 1, 2, '', 100, 8, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 75, 'otherphone', 'vtiger_contactsubdetails', 1, '11', 'otherphone', 'Other Phone', 1, 2, '', 100, 11, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 76, 'title', 'vtiger_contactdetails', 1, '1', 'title', 'Title', 1, 2, '', 100, 10, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(4, 77, 'fax', 'vtiger_contactdetails', 1, '11', 'fax', 'Fax', 1, 2, '', 100, 13, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 78, 'department', 'vtiger_contactdetails', 1, '1', 'department', 'Department', 1, 2, '', 100, 12, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 79, 'birthday', 'vtiger_contactsubdetails', 1, '5', 'birthday', 'Birthdate', 1, 2, '', 100, 16, 4, 1, 'D~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 80, 'email', 'vtiger_contactdetails', 1, '13', 'email', 'Email', 1, 2, '', 100, 15, 4, 1, 'E~O', 2, 5, 'BAS', 1, NULL, 0, 1, 0),
(4, 81, 'reportsto', 'vtiger_contactdetails', 1, '57', 'contact_id', 'Reports To', 1, 2, '', 100, 18, 4, 1, 'V~O', 1, NULL, 'ADV', 0, NULL, 0, 0, 0),
(4, 82, 'assistant', 'vtiger_contactsubdetails', 1, '1', 'assistant', 'Assistant', 1, 2, '', 100, 17, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 83, 'secondaryemail', 'vtiger_contactdetails', 1, '13', 'secondaryemail', 'Secondary Email', 1, 2, '', 100, 20, 4, 1, 'E~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 84, 'assistantphone', 'vtiger_contactsubdetails', 1, '11', 'assistantphone', 'Assistant Phone', 1, 2, '', 100, 19, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 85, 'donotcall', 'vtiger_contactdetails', 1, '56', 'donotcall', 'Do Not Call', 1, 2, '', 100, 22, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 86, 'emailoptout', 'vtiger_contactdetails', 1, '56', 'emailoptout', 'Email Opt Out', 1, 0, '', 100, 21, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 87, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 24, 4, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1, 0, 0),
(4, 88, 'reference', 'vtiger_contactdetails', 1, '56', 'reference', 'Reference', 1, 2, '', 10, 23, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 89, 'notify_owner', 'vtiger_contactdetails', 1, '56', 'notify_owner', 'Notify Owner', 1, 2, '', 10, 26, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 90, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 25, 4, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(4, 91, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 27, 4, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(4, 92, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 28, 4, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(4, 93, 'portal', 'vtiger_customerdetails', 1, '56', 'portal', 'Portal User', 1, 2, '', 100, 1, 6, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 94, 'support_start_date', 'vtiger_customerdetails', 1, '5', 'support_start_date', 'Support Start Date', 1, 2, '', 100, 2, 6, 1, 'D~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 95, 'support_end_date', 'vtiger_customerdetails', 1, '5', 'support_end_date', 'Support End Date', 1, 2, '', 100, 3, 6, 1, 'D~O~OTH~GE~support_start_date~Support Start Date', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(4, 96, 'mailingstreet', 'vtiger_contactaddress', 1, '21', 'mailingstreet', 'Mailing Street', 1, 2, '', 100, 1, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 97, 'otherstreet', 'vtiger_contactaddress', 1, '21', 'otherstreet', 'Other Street', 1, 2, '', 100, 2, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 98, 'mailingcity', 'vtiger_contactaddress', 1, '1', 'mailingcity', 'Mailing City', 1, 2, '', 100, 5, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(4, 99, 'othercity', 'vtiger_contactaddress', 1, '1', 'othercity', 'Other City', 1, 2, '', 100, 6, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 100, 'mailingstate', 'vtiger_contactaddress', 1, '1', 'mailingstate', 'Mailing State', 1, 2, '', 100, 7, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 101, 'otherstate', 'vtiger_contactaddress', 1, '1', 'otherstate', 'Other State', 1, 2, '', 100, 8, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 102, 'mailingzip', 'vtiger_contactaddress', 1, '1', 'mailingzip', 'Mailing Zip', 1, 2, '', 100, 9, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 103, 'otherzip', 'vtiger_contactaddress', 1, '1', 'otherzip', 'Other Zip', 1, 2, '', 100, 10, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 104, 'mailingcountry', 'vtiger_contactaddress', 1, '1', 'mailingcountry', 'Mailing Country', 1, 2, '', 100, 11, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(4, 105, 'othercountry', 'vtiger_contactaddress', 1, '1', 'othercountry', 'Other Country', 1, 2, '', 100, 12, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 106, 'mailingpobox', 'vtiger_contactaddress', 1, '1', 'mailingpobox', 'Mailing Po Box', 1, 2, '', 100, 3, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 107, 'otherpobox', 'vtiger_contactaddress', 1, '1', 'otherpobox', 'Other Po Box', 1, 2, '', 100, 4, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 108, 'imagename', 'vtiger_contactdetails', 1, '69', 'imagename', 'Contact Image', 1, 2, '', 100, 1, 73, 1, 'V~O', 3, NULL, 'ADV', 0, NULL, 0, 0, 0),
(4, 109, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 8, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(2, 110, 'potentialname', 'vtiger_potential', 1, '2', 'potentialname', 'Potential Name', 1, 0, '', 100, 1, 1, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(2, 111, 'potential_no', 'vtiger_potential', 1, '4', 'potential_no', 'Potential No', 1, 0, '', 100, 2, 1, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(2, 112, 'amount', 'vtiger_potential', 1, '71', 'amount', 'Amount', 1, 2, '', 100, 5, 1, 1, 'N~O', 2, 5, 'BAS', 1, NULL, 0, 1, 0),
(2, 113, 'related_to', 'vtiger_potential', 1, '10', 'related_to', 'Related To', 1, 0, '', 100, 3, 1, 1, 'V~O', 0, 2, 'BAS', 1, NULL, 0, 1, 0),
(2, 114, 'closingdate', 'vtiger_potential', 1, '23', 'closingdate', 'Expected Close Date', 1, 2, '', 100, 8, 1, 1, 'D~M', 2, 3, 'BAS', 1, NULL, 1, 0, 0),
(2, 115, 'potentialtype', 'vtiger_potential', 1, '15', 'opportunity_type', 'Type', 1, 2, '', 100, 7, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(2, 116, 'nextstep', 'vtiger_potential', 1, '1', 'nextstep', 'Next Step', 1, 2, '', 100, 10, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(2, 117, 'leadsource', 'vtiger_potential', 1, '15', 'leadsource', 'Lead Source', 1, 2, '', 100, 9, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(2, 118, 'sales_stage', 'vtiger_potential', 1, '15', 'sales_stage', 'Sales Stage', 1, 2, '', 100, 12, 1, 1, 'V~M', 2, 4, 'BAS', 1, NULL, 0, 1, 0),
(2, 119, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 11, 1, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1, 0, 0),
(2, 120, 'probability', 'vtiger_potential', 1, '9', 'probability', 'Probability', 1, 2, '', 100, 14, 1, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(2, 121, 'campaignid', 'vtiger_potential', 1, '58', 'campaignid', 'Campaign Source', 1, 2, '', 100, 13, 1, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(2, 122, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 16, 1, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(2, 123, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 1, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(2, 124, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 17, 1, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(2, 125, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 3, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 126, 'campaignname', 'vtiger_campaign', 1, '2', 'campaignname', 'Campaign Name', 1, 0, '', 100, 1, 74, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(26, 127, 'campaign_no', 'vtiger_campaign', 1, '4', 'campaign_no', 'Campaign No', 1, 0, '', 100, 2, 74, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(26, 128, 'campaigntype', 'vtiger_campaign', 1, '15', 'campaigntype', 'Campaign Type', 1, 2, '', 100, 5, 74, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 1, 0, 0),
(26, 129, 'product_id', 'vtiger_campaign', 1, '59', 'product_id', 'Product', 1, 2, '', 100, 6, 74, 1, 'I~O', 2, 5, 'BAS', 1, NULL, 0, 0, 0),
(26, 130, 'campaignstatus', 'vtiger_campaign', 1, '15', 'campaignstatus', 'Campaign Status', 1, 2, '', 100, 4, 74, 1, 'V~O', 2, 6, 'BAS', 1, NULL, 1, 0, 0),
(26, 131, 'closingdate', 'vtiger_campaign', 1, '23', 'closingdate', 'Expected Close Date', 1, 2, '', 100, 8, 74, 1, 'D~M', 2, 2, 'BAS', 1, NULL, 1, 0, 0),
(26, 132, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 3, 74, 1, 'V~M', 0, 7, 'BAS', 1, NULL, 1, 0, 0),
(26, 133, 'numsent', 'vtiger_campaign', 1, '9', 'numsent', 'Num Sent', 1, 2, '', 100, 12, 74, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 134, 'sponsor', 'vtiger_campaign', 1, '1', 'sponsor', 'Sponsor', 1, 2, '', 100, 9, 74, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 135, 'targetaudience', 'vtiger_campaign', 1, '1', 'targetaudience', 'Target Audience', 1, 2, '', 100, 7, 74, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 136, 'targetsize', 'vtiger_campaign', 1, '1', 'targetsize', 'TargetSize', 1, 2, '', 100, 10, 74, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 137, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 11, 74, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(26, 138, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 13, 74, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(26, 139, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 16, 74, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(26, 140, 'expectedresponse', 'vtiger_campaign', 1, '15', 'expectedresponse', 'Expected Response', 1, 2, '', 100, 3, 76, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 0, 0, 0),
(26, 141, 'expectedrevenue', 'vtiger_campaign', 1, '71', 'expectedrevenue', 'Expected Revenue', 1, 2, '', 100, 4, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(26, 142, 'budgetcost', 'vtiger_campaign', 1, '71', 'budgetcost', 'Budget Cost', 1, 2, '', 100, 1, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 143, 'actualcost', 'vtiger_campaign', 1, '71', 'actualcost', 'Actual Cost', 1, 2, '', 100, 2, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 144, 'expectedresponsecount', 'vtiger_campaign', 1, '1', 'expectedresponsecount', 'Expected Response Count', 1, 2, '', 100, 7, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 145, 'expectedsalescount', 'vtiger_campaign', 1, '1', 'expectedsalescount', 'Expected Sales Count', 1, 2, '', 100, 5, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 146, 'expectedroi', 'vtiger_campaign', 1, '71', 'expectedroi', 'Expected ROI', 1, 2, '', 100, 9, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 147, 'actualresponsecount', 'vtiger_campaign', 1, '1', 'actualresponsecount', 'Actual Response Count', 1, 2, '', 100, 8, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 148, 'actualsalescount', 'vtiger_campaign', 1, '1', 'actualsalescount', 'Actual Sales Count', 1, 2, '', 100, 6, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 149, 'actualroi', 'vtiger_campaign', 1, '71', 'actualroi', 'Actual ROI', 1, 2, '', 100, 10, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(26, 150, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 81, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(4, 151, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(6, 152, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(7, 153, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(26, 154, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 155, 'ticket_no', 'vtiger_troubletickets', 1, '4', 'ticket_no', 'Ticket No', 1, 0, '', 100, 14, 25, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(13, 156, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 5, 25, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1, 0, 0),
(13, 157, 'parent_id', 'vtiger_troubletickets', 1, '10', 'parent_id', 'Related To', 1, 0, '', 100, 2, 25, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(13, 158, 'priority', 'vtiger_troubletickets', 1, '15', 'ticketpriorities', 'Priority', 1, 2, '', 100, 7, 25, 1, 'V~M', 2, 3, 'BAS', 1, NULL, 0, 1, 0),
(13, 159, 'product_id', 'vtiger_troubletickets', 1, '59', 'product_id', 'Product Name', 1, 2, '', 100, 6, 25, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(13, 160, 'severity', 'vtiger_troubletickets', 1, '15', 'ticketseverities', 'Severity', 1, 2, '', 100, 9, 25, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(13, 161, 'status', 'vtiger_troubletickets', 1, '15', 'ticketstatus', 'Status', 1, 2, '', 100, 8, 25, 1, 'V~M', 1, 2, 'BAS', 1, NULL, 1, 0, 0),
(13, 162, 'category', 'vtiger_troubletickets', 1, '15', 'ticketcategories', 'Category', 1, 2, '', 100, 11, 25, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(13, 163, 'update_log', 'vtiger_troubletickets', 1, '19', 'update_log', 'Update History', 1, 1, '', 100, 12, 25, 3, 'V~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 164, 'hours', 'vtiger_troubletickets', 1, '1', 'hours', 'Hours', 1, 2, '', 100, 10, 25, 1, 'N~O', 1, NULL, 'BAS', 1, 'This gives the estimated hours for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.', 0, 0, 0),
(13, 165, 'days', 'vtiger_troubletickets', 1, '1', 'days', 'Days', 1, 2, '', 100, 11, 25, 1, 'N~O', 1, NULL, 'BAS', 1, 'This gives the estimated days for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.', 0, 0, 0),
(13, 166, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 10, 25, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 167, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 13, 25, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 168, 'from_portal', 'vtiger_ticketcf', 1, '56', 'from_portal', 'From Portal', 1, 0, '', 100, 14, 25, 3, 'C~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 169, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 17, 25, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 170, 'title', 'vtiger_troubletickets', 1, '22', 'ticket_title', 'Title', 1, 0, '', 100, 1, 25, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(13, 171, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 28, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 1, 0, 0),
(13, 172, 'solution', 'vtiger_troubletickets', 1, '19', 'solution', 'Solution', 1, 0, '', 100, 1, 29, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(13, 173, 'comments', 'vtiger_ticketcomments', 1, '19', 'comments', 'Add Comment', 1, 1, '', 100, 1, 30, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(14, 174, 'productname', 'vtiger_products', 1, '2', 'productname', 'Product Name', 1, 0, '', 100, 1, 31, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(14, 175, 'product_no', 'vtiger_products', 1, '4', 'product_no', 'Product No', 1, 0, '', 100, 2, 31, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 1, 0),
(14, 176, 'productcode', 'vtiger_products', 1, '1', 'productcode', 'Part Number', 1, 2, '', 100, 4, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(14, 177, 'discontinued', 'vtiger_products', 1, '56', 'discontinued', 'Product Active', 1, 2, '1', 100, 3, 31, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 0, 1, 0),
(14, 178, 'manufacturer', 'vtiger_products', 1, '15', 'manufacturer', 'Manufacturer', 1, 2, '', 100, 6, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 179, 'productcategory', 'vtiger_products', 1, '15', 'productcategory', 'Product Category', 1, 2, '', 100, 6, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 1, 0),
(14, 180, 'sales_start_date', 'vtiger_products', 1, '5', 'sales_start_date', 'Sales Start Date', 1, 2, '', 100, 5, 31, 1, 'D~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 181, 'sales_end_date', 'vtiger_products', 1, '5', 'sales_end_date', 'Sales End Date', 1, 2, '', 100, 8, 31, 1, 'D~O~OTH~GE~sales_start_date~Sales Start Date', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 182, 'start_date', 'vtiger_products', 1, '5', 'start_date', 'Support Start Date', 1, 2, '', 100, 7, 31, 1, 'D~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 183, 'expiry_date', 'vtiger_products', 1, '5', 'expiry_date', 'Support Expiry Date', 1, 2, '', 100, 10, 31, 1, 'D~O~OTH~GE~start_date~Start Date', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 184, 'website', 'vtiger_products', 1, '17', 'website', 'Website', 1, 2, '', 100, 14, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 185, 'vendor_id', 'vtiger_products', 1, '75', 'vendor_id', 'Vendor Name', 1, 2, '', 100, 13, 31, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 186, 'mfr_part_no', 'vtiger_products', 1, '1', 'mfr_part_no', 'Mfr PartNo', 1, 2, '', 100, 16, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 187, 'vendor_part_no', 'vtiger_products', 1, '1', 'vendor_part_no', 'Vendor PartNo', 1, 2, '', 100, 15, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 188, 'serialno', 'vtiger_products', 1, '1', 'serial_no', 'Serial No', 1, 2, '', 100, 18, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 189, 'productsheet', 'vtiger_products', 1, '1', 'productsheet', 'Product Sheet', 1, 2, '', 100, 17, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 190, 'glacct', 'vtiger_products', 1, '15', 'glacct', 'GL Account', 1, 2, '', 100, 20, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 191, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 19, 31, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(14, 192, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 21, 31, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(14, 193, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 31, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(14, 194, 'unit_price', 'vtiger_products', 1, '72', 'unit_price', 'Unit Price', 1, 0, '', 100, 1, 32, 1, 'N~O', 2, 3, 'BAS', 0, NULL, 1, 0, 0),
(14, 195, 'commissionrate', 'vtiger_products', 1, '9', 'commissionrate', 'Commission Rate', 1, 2, '', 100, 2, 32, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(14, 196, 'taxclass', 'vtiger_products', 1, '83', 'taxclass', 'Taxes', 1, 2, '', 100, 4, 32, 1, 'V~O', 2, NULL, 'BAS', 1, NULL, 0, 0, 0),
(14, 197, 'usageunit', 'vtiger_products', 1, '15', 'usageunit', 'Usage Unit', 1, 2, '', 100, 1, 33, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(14, 198, 'qty_per_unit', 'vtiger_products', 1, '1', 'qty_per_unit', 'Qty/Unit', 1, 2, '', 100, 2, 33, 1, 'N~O', 1, NULL, 'ADV', 1, NULL, 1, 0, 0),
(14, 199, 'qtyinstock', 'vtiger_products', 1, '1', 'qtyinstock', 'Qty In Stock', 1, 2, '', 100, 3, 33, 1, 'NN~O', 0, 4, 'ADV', 1, NULL, 0, 1, 0),
(14, 200, 'reorderlevel', 'vtiger_products', 1, '1', 'reorderlevel', 'Reorder Level', 1, 2, '', 100, 4, 33, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(14, 201, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Handler', 1, 0, '', 100, 5, 33, 1, 'V~M', 0, 5, 'BAS', 1, NULL, 0, 0, 0),
(14, 202, 'qtyindemand', 'vtiger_products', 1, '1', 'qtyindemand', 'Qty In Demand', 1, 2, '', 100, 6, 33, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(14, 203, 'imagename', 'vtiger_products', 1, '69', 'imagename', 'Product Image', 1, 2, '', 100, 1, 35, 1, 'V~O', 3, NULL, 'ADV', 0, NULL, 0, 0, 0),
(14, 204, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 36, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(8, 205, 'title', 'vtiger_notes', 1, '2', 'notes_title', 'Title', 1, 0, '', 100, 1, 17, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(8, 206, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 17, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 207, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 17, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(8, 208, 'filename', 'vtiger_notes', 1, '28', 'filename', 'File Name', 1, 2, '', 100, 3, 18, 1, 'V~O', 0, NULL, 'BAS', 0, NULL, 1, 0, 0),
(8, 209, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 4, 17, 1, 'V~M', 0, 3, 'BAS', 1, NULL, 1, 0, 0),
(8, 210, 'notecontent', 'vtiger_notes', 1, '19', 'notecontent', 'Note', 1, 2, '', 100, 1, 84, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 211, 'filetype', 'vtiger_notes', 1, '1', 'filetype', 'File Type', 1, 2, NULL, 100, 5, 18, 2, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 212, 'filesize', 'vtiger_notes', 1, '1', 'filesize', 'File Size', 1, 2, NULL, 100, 4, 18, 2, 'I~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 213, 'filelocationtype', 'vtiger_notes', 1, '27', 'filelocationtype', 'Download Type', 1, 0, NULL, 100, 1, 18, 1, 'V~O', 0, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 214, 'fileversion', 'vtiger_notes', 1, '1', 'fileversion', 'Version', 1, 2, NULL, 100, 6, 18, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(8, 215, 'filestatus', 'vtiger_notes', 1, '56', 'filestatus', 'Active', 1, 2, '1', 100, 2, 18, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(8, 216, 'filedownloadcount', 'vtiger_notes', 1, '1', 'filedownloadcount', 'Download Count', 1, 2, NULL, 100, 7, 18, 2, 'I~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 217, 'folderid', 'vtiger_notes', 1, '26', 'folderid', 'Folder Name', 1, 2, '', 100, 2, 17, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 1, 0, 0),
(8, 218, 'note_no', 'vtiger_notes', 1, '4', 'note_no', 'Document No', 1, 0, '', 100, 3, 17, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(8, 219, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 12, 17, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 220, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Date & Time Sent', 1, 0, '', 100, 1, 21, 1, 'DT~M~time_start~Time Start', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 221, 'semodule', 'vtiger_activity', 1, '2', 'parent_type', 'Sales Enity Module', 1, 0, '', 100, 2, 21, 3, '', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 222, 'activitytype', 'vtiger_activity', 1, '2', 'activitytype', 'Activtiy Type', 1, 0, '', 100, 3, 21, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 223, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 5, 21, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 224, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 23, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 225, 'name', 'vtiger_attachments', 1, '61', 'filename', 'Attachment', 1, 0, '', 100, 2, 23, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 226, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, '', 100, 1, 24, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 227, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, '', 100, 9, 23, 1, 'T~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 228, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 10, 22, 1, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 229, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 11, 21, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 230, 'access_count', 'vtiger_email_track', 1, '25', 'access_count', 'Access Count', 1, 0, '0', 100, 6, 21, 3, 'I~O', 1, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 231, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 12, 21, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(9, 232, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 19, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(9, 233, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 2, 19, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1, 0, 0),
(9, 234, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Start Date & Time', 1, 0, '', 100, 3, 19, 1, 'DT~M~time_start', 0, 2, 'BAS', 1, NULL, 1, 0, 0),
(9, 235, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, '', 100, 4, 19, 3, 'T~M', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(9, 236, 'time_end', 'vtiger_activity', 1, '2', 'time_end', 'End Time', 1, 0, '', 100, 4, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(9, 237, 'due_date', 'vtiger_activity', 1, '23', 'due_date', 'Due Date', 1, 0, '', 100, 5, 19, 1, 'D~M~OTH~GE~date_start~Start Date & Time', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(9, 238, 'crmid', 'vtiger_seactivityrel', 1, '66', 'parent_id', 'Related To', 1, 0, '', 100, 7, 19, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(9, 239, 'contactid', 'vtiger_cntactivityrel', 1, '57', 'contact_id', 'Contact Name', 1, 0, '', 100, 8, 19, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 240, 'status', 'vtiger_activity', 1, '15', 'taskstatus', 'Status', 1, 0, '', 100, 8, 19, 1, 'V~M', 0, 3, 'BAS', 1, NULL, 0, 0, 0),
(9, 241, 'eventstatus', 'vtiger_activity', 1, '15', 'eventstatus', 'Status', 1, 0, '', 100, 9, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 242, 'priority', 'vtiger_activity', 1, '15', 'taskpriority', 'Priority', 1, 0, '', 100, 10, 19, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 243, 'sendnotification', 'vtiger_activity', 1, '56', 'sendnotification', 'Send Notification', 1, 0, '', 100, 11, 19, 1, 'C~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 244, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 14, 19, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(9, 245, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 19, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(9, 246, 'activitytype', 'vtiger_activity', 1, '15', 'activitytype', 'Activity Type', 1, 0, '', 100, 16, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(9, 247, 'visibility', 'vtiger_activity', 1, '16', 'visibility', 'Visibility', 1, 0, '', 100, 17, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 248, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, '', 100, 1, 20, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 249, 'duration_hours', 'vtiger_activity', 1, '63', 'duration_hours', 'Duration', 1, 0, '', 100, 17, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 250, 'duration_minutes', 'vtiger_activity', 1, '16', 'duration_minutes', 'Duration Minutes', 1, 0, '', 100, 18, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 251, 'location', 'vtiger_activity', 1, '1', 'location', 'Location', 1, 0, '', 100, 19, 19, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 252, 'reminder_time', 'vtiger_activity_reminder', 1, '30', 'reminder_time', 'Send Reminder', 1, 0, '', 100, 1, 120, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 253, 'recurringtype', 'vtiger_activity', 1, '16', 'recurringtype', 'Recurrence', 1, 0, '', 100, 6, 19, 3, 'O~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(9, 254, 'notime', 'vtiger_activity', 1, '56', 'notime', 'No Time', 1, 0, '', 100, 20, 19, 3, 'C~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(9, 255, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 19, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(16, 256, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 39, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(16, 257, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 2, 39, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1, 0, 0),
(16, 258, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Start Date & Time', 1, 0, '', 100, 3, 39, 1, 'DT~M~time_start', 0, 2, 'BAS', 1, NULL, 1, 0, 0),
(16, 259, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, '', 100, 4, 39, 3, 'T~M', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(16, 260, 'due_date', 'vtiger_activity', 1, '23', 'due_date', 'End Date', 1, 0, '', 100, 5, 39, 1, 'D~M~OTH~GE~date_start~Start Date & Time', 0, 5, 'BAS', 1, NULL, 1, 0, 0),
(16, 261, 'time_end', 'vtiger_activity', 1, '2', 'time_end', 'End Time', 1, 0, '', 100, 5, 39, 3, 'T~M', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(16, 262, 'recurringtype', 'vtiger_activity', 1, '16', 'recurringtype', 'Recurrence', 1, 0, '', 100, 6, 117, 1, 'O~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(16, 263, 'duration_hours', 'vtiger_activity', 1, '63', 'duration_hours', 'Duration', 1, 0, '', 100, 7, 39, 3, 'I~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 264, 'duration_minutes', 'vtiger_activity', 1, '16', 'duration_minutes', 'Duration Minutes', 1, 0, '', 100, 8, 39, 3, 'O~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 265, 'crmid', 'vtiger_seactivityrel', 1, '66', 'parent_id', 'Related To', 1, 0, '', 100, 9, 119, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(16, 266, 'eventstatus', 'vtiger_activity', 1, '15', 'eventstatus', 'Status', 1, 0, '', 100, 10, 39, 1, 'V~M', 0, 3, 'BAS', 1, NULL, 0, 0, 0),
(16, 267, 'sendnotification', 'vtiger_activity', 1, '56', 'sendnotification', 'Send Notification', 1, 0, '', 100, 11, 39, 1, 'C~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 268, 'activitytype', 'vtiger_activity', 1, '15', 'activitytype', 'Activity Type', 1, 0, '', 100, 12, 39, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1, 0, 0),
(16, 269, 'location', 'vtiger_activity', 1, '1', 'location', 'Location', 1, 0, '', 100, 13, 39, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 270, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 14, 39, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(16, 271, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 39, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(16, 272, 'priority', 'vtiger_activity', 1, '15', 'taskpriority', 'Priority', 1, 0, '', 100, 16, 39, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 273, 'notime', 'vtiger_activity', 1, '56', 'notime', 'No Time', 1, 0, '', 100, 17, 39, 3, 'C~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 274, 'visibility', 'vtiger_activity', 1, '16', 'visibility', 'Visibility', 1, 0, '', 100, 18, 39, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 275, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 39, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(16, 276, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, '', 100, 1, 41, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 277, 'reminder_time', 'vtiger_activity_reminder', 1, '30', 'reminder_time', 'Send Reminder', 1, 0, '', 100, 1, 40, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(16, 278, 'contactid', 'vtiger_cntactivityrel', 1, '57', 'contact_id', 'Contact Name', 1, 0, '', 100, 1, 119, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(15, 279, 'product_id', 'vtiger_faq', 1, '59', 'product_id', 'Product Name', 1, 2, '', 100, 1, 37, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(15, 280, 'faq_no', 'vtiger_faq', 1, '4', 'faq_no', 'Faq No', 1, 0, '', 100, 2, 37, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(15, 281, 'category', 'vtiger_faq', 1, '15', 'faqcategories', 'Category', 1, 2, '', 100, 4, 37, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(15, 282, 'status', 'vtiger_faq', 1, '15', 'faqstatus', 'Status', 1, 2, '', 100, 3, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(15, 283, 'question', 'vtiger_faq', 1, '20', 'question', 'Question', 1, 2, '', 100, 7, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(15, 284, 'answer', 'vtiger_faq', 1, '20', 'faq_answer', 'Answer', 1, 2, '', 100, 8, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(15, 285, 'comments', 'vtiger_faqcomments', 1, '19', 'comments', 'Add Comment', 1, 1, '', 100, 1, 38, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(15, 286, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 37, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(15, 287, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 37, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(15, 288, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 37, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(18, 289, 'vendorname', 'vtiger_vendor', 1, '2', 'vendorname', 'Vendor Name', 1, 0, '', 100, 1, 42, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(18, 290, 'vendor_no', 'vtiger_vendor', 1, '4', 'vendor_no', 'Vendor No', 1, 0, '', 100, 2, 42, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(18, 291, 'phone', 'vtiger_vendor', 1, '1', 'phone', 'Phone', 1, 2, '', 100, 4, 42, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 0, 1, 0),
(18, 292, 'email', 'vtiger_vendor', 1, '13', 'email', 'Email', 1, 2, '', 100, 3, 42, 1, 'E~O', 2, 3, 'BAS', 1, NULL, 0, 1, 0),
(18, 293, 'website', 'vtiger_vendor', 1, '17', 'website', 'Website', 1, 2, '', 100, 6, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 1, 0),
(18, 294, 'glacct', 'vtiger_vendor', 1, '15', 'glacct', 'GL Account', 1, 2, '', 100, 5, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(18, 295, 'category', 'vtiger_vendor', 1, '1', 'category', 'Category', 1, 2, '', 100, 8, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(18, 296, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 7, 42, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(18, 297, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 9, 42, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(18, 298, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 12, 42, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(18, 299, 'street', 'vtiger_vendor', 1, '21', 'street', 'Street', 1, 2, '', 100, 1, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(18, 300, 'pobox', 'vtiger_vendor', 1, '1', 'pobox', 'Po Box', 1, 2, '', 100, 2, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(18, 301, 'city', 'vtiger_vendor', 1, '1', 'city', 'City', 1, 2, '', 100, 3, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(18, 302, 'state', 'vtiger_vendor', 1, '1', 'state', 'State', 1, 2, '', 100, 4, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(18, 303, 'postalcode', 'vtiger_vendor', 1, '1', 'postalcode', 'Postal Code', 1, 2, '', 100, 5, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(18, 304, 'country', 'vtiger_vendor', 1, '1', 'country', 'Country', 1, 2, '', 100, 6, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(18, 305, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 45, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0, 0, 0),
(19, 306, 'bookname', 'vtiger_pricebook', 1, '2', 'bookname', 'Price Book Name', 1, 0, '', 100, 1, 46, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1, 0, 0),
(19, 307, 'pricebook_no', 'vtiger_pricebook', 1, '4', 'pricebook_no', 'PriceBook No', 1, 0, '', 100, 3, 46, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(19, 308, 'active', 'vtiger_pricebook', 1, '56', 'active', 'Active', 1, 2, '1', 100, 2, 46, 1, 'C~O', 2, 2, 'BAS', 1, NULL, 1, 0, 0),
(19, 309, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 4, 46, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(19, 310, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 5, 46, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(19, 311, 'currency_id', 'vtiger_pricebook', 1, '117', 'currency_id', 'Currency', 1, 0, '', 100, 5, 46, 1, 'I~M', 0, 3, 'BAS', 0, NULL, 0, 0, 0),
(19, 312, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 46, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(19, 313, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 48, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 314, 'quote_no', 'vtiger_quotes', 1, '4', 'quote_no', 'Quote No', 1, 0, '', 100, 3, 49, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(20, 315, 'subject', 'vtiger_quotes', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 49, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 1, 0, 0),
(20, 316, 'potentialid', 'vtiger_quotes', 1, '76', 'potential_id', 'Potential Name', 1, 2, '', 100, 2, 49, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(20, 317, 'quotestage', 'vtiger_quotes', 1, '15', 'quotestage', 'Quote Stage', 1, 2, '', 100, 4, 49, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(20, 318, 'validtill', 'vtiger_quotes', 1, '5', 'validtill', 'Valid Till', 1, 2, '', 100, 5, 49, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 319, 'contactid', 'vtiger_quotes', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 6, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(20, 320, 'carrier', 'vtiger_quotes', 1, '15', 'carrier', 'Carrier', 1, 2, '', 100, 8, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 321, 'subtotal', 'vtiger_quotes', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 9, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 322, 'shipping', 'vtiger_quotes', 1, '1', 'shipping', 'Shipping', 1, 2, '', 100, 10, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 323, 'inventorymanager', 'vtiger_quotes', 1, '77', 'assigned_user_id1', 'Inventory Manager', 1, 2, '', 100, 11, 49, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 324, 'adjustment', 'vtiger_quotes', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 20, 49, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 325, 'total', 'vtiger_quotes', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(20, 326, 'taxtype', 'vtiger_quotes', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 14, 49, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 327, 'discount_percent', 'vtiger_quotes', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 14, 116, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 328, 'discount_amount', 'vtiger_quotes', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 2, '', 100, 14, 116, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 329, 's_h_amount', 'vtiger_quotes', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 330, 'accountid', 'vtiger_quotes', 1, '73', 'account_id', 'Account Name', 1, 2, '', 100, 16, 49, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(20, 331, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 17, 49, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(20, 332, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 18, 49, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(20, 333, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 19, 49, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(20, 334, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 49, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0);
INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `defaultvalue`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`, `summaryfield`, `headerfield`, `isunique`) VALUES
(20, 335, 'currency_id', 'vtiger_quotes', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 20, 49, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 336, 'conversion_rate', 'vtiger_quotes', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 21, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 337, 'bill_street', 'vtiger_quotesbillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 51, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 338, 'ship_street', 'vtiger_quotesshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 51, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 339, 'bill_city', 'vtiger_quotesbillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 340, 'ship_city', 'vtiger_quotesshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 341, 'bill_state', 'vtiger_quotesbillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 342, 'ship_state', 'vtiger_quotesshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 343, 'bill_code', 'vtiger_quotesbillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 344, 'ship_code', 'vtiger_quotesshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 345, 'bill_country', 'vtiger_quotesbillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 346, 'ship_country', 'vtiger_quotesshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 347, 'bill_pobox', 'vtiger_quotesbillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 348, 'ship_pobox', 'vtiger_quotesshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(20, 349, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 54, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(20, 350, 'terms_conditions', 'vtiger_quotes', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 53, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(21, 351, 'purchaseorder_no', 'vtiger_purchaseorder', 1, '4', 'purchaseorder_no', 'PurchaseOrder No', 1, 0, '', 100, 2, 55, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(21, 352, 'subject', 'vtiger_purchaseorder', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(21, 353, 'vendorid', 'vtiger_purchaseorder', 1, '81', 'vendor_id', 'Vendor Name', 1, 0, '', 100, 3, 55, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(21, 354, 'requisition_no', 'vtiger_purchaseorder', 1, '1', 'requisition_no', 'Requisition No', 1, 2, '', 100, 4, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 355, 'tracking_no', 'vtiger_purchaseorder', 1, '1', 'tracking_no', 'Tracking Number', 1, 2, '', 100, 5, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(21, 356, 'contactid', 'vtiger_purchaseorder', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 6, 55, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(21, 357, 'duedate', 'vtiger_purchaseorder', 1, '5', 'duedate', 'Due Date', 1, 2, '', 100, 7, 55, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 358, 'carrier', 'vtiger_purchaseorder', 1, '15', 'carrier', 'Carrier', 1, 2, '', 100, 8, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 359, 'adjustment', 'vtiger_purchaseorder', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 10, 55, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 360, 'salescommission', 'vtiger_purchaseorder', 1, '1', 'salescommission', 'Sales Commission', 1, 2, '', 100, 11, 55, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 361, 'exciseduty', 'vtiger_purchaseorder', 1, '1', 'exciseduty', 'Excise Duty', 1, 2, '', 100, 12, 55, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 362, 'total', 'vtiger_purchaseorder', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 13, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(21, 363, 'subtotal', 'vtiger_purchaseorder', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 364, 'taxtype', 'vtiger_purchaseorder', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 14, 55, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 365, 'discount_percent', 'vtiger_purchaseorder', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 14, 115, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 366, 'discount_amount', 'vtiger_purchaseorder', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 0, '', 100, 14, 115, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 367, 's_h_amount', 'vtiger_purchaseorder', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 368, 'postatus', 'vtiger_purchaseorder', 1, '15', 'postatus', 'Status', 1, 2, '', 100, 15, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(21, 369, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 16, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(21, 370, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 17, 55, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(21, 371, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 18, 55, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(21, 372, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 55, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(21, 373, 'currency_id', 'vtiger_purchaseorder', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 19, 55, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 374, 'conversion_rate', 'vtiger_purchaseorder', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 20, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 375, 'bill_street', 'vtiger_pobillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 57, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 376, 'ship_street', 'vtiger_poshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 57, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 377, 'bill_city', 'vtiger_pobillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 378, 'ship_city', 'vtiger_poshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 379, 'bill_state', 'vtiger_pobillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 380, 'ship_state', 'vtiger_poshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 381, 'bill_code', 'vtiger_pobillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 382, 'ship_code', 'vtiger_poshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 383, 'bill_country', 'vtiger_pobillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 384, 'ship_country', 'vtiger_poshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 385, 'bill_pobox', 'vtiger_pobillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 386, 'ship_pobox', 'vtiger_poshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(21, 387, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 60, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(21, 388, 'terms_conditions', 'vtiger_purchaseorder', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 59, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(22, 389, 'salesorder_no', 'vtiger_salesorder', 1, '4', 'salesorder_no', 'SalesOrder No', 1, 0, '', 100, 4, 61, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(22, 390, 'subject', 'vtiger_salesorder', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(22, 391, 'potentialid', 'vtiger_salesorder', 1, '76', 'potential_id', 'Potential Name', 1, 2, '', 100, 2, 61, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 392, 'customerno', 'vtiger_salesorder', 1, '1', 'customerno', 'Customer No', 1, 2, '', 100, 3, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 393, 'quoteid', 'vtiger_salesorder', 1, '78', 'quote_id', 'Quote Name', 1, 2, '', 100, 5, 61, 1, 'I~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(22, 394, 'purchaseorder', 'vtiger_salesorder', 1, '1', 'vtiger_purchaseorder', 'Purchase Order', 1, 2, '', 100, 5, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 395, 'contactid', 'vtiger_salesorder', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 6, 61, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(22, 396, 'duedate', 'vtiger_salesorder', 1, '5', 'duedate', 'Due Date', 1, 2, '', 100, 8, 61, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 397, 'carrier', 'vtiger_salesorder', 1, '15', 'carrier', 'Carrier', 1, 2, '', 100, 9, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 398, 'pending', 'vtiger_salesorder', 1, '1', 'pending', 'Pending', 1, 2, '', 100, 10, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 399, 'sostatus', 'vtiger_salesorder', 1, '15', 'sostatus', 'Status', 1, 2, '', 100, 11, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(22, 400, 'adjustment', 'vtiger_salesorder', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 12, 61, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 401, 'salescommission', 'vtiger_salesorder', 1, '1', 'salescommission', 'Sales Commission', 1, 2, '', 100, 13, 61, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 402, 'exciseduty', 'vtiger_salesorder', 1, '1', 'exciseduty', 'Excise Duty', 1, 2, '', 100, 13, 61, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 403, 'total', 'vtiger_salesorder', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 14, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(22, 404, 'subtotal', 'vtiger_salesorder', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 405, 'taxtype', 'vtiger_salesorder', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 15, 61, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 406, 'discount_percent', 'vtiger_salesorder', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 15, 114, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 407, 'discount_amount', 'vtiger_salesorder', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 0, '', 100, 15, 114, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 408, 's_h_amount', 'vtiger_salesorder', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 409, 'accountid', 'vtiger_salesorder', 1, '73', 'account_id', 'Account Name', 1, 2, '', 100, 16, 61, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(22, 410, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 17, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(22, 411, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 18, 61, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 412, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 19, 61, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 413, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 61, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 414, 'currency_id', 'vtiger_salesorder', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 20, 61, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 415, 'conversion_rate', 'vtiger_salesorder', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 21, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 416, 'bill_street', 'vtiger_sobillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 63, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 417, 'ship_street', 'vtiger_soshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 63, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 418, 'bill_city', 'vtiger_sobillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 419, 'ship_city', 'vtiger_soshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 420, 'bill_state', 'vtiger_sobillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 421, 'ship_state', 'vtiger_soshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 422, 'bill_code', 'vtiger_sobillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 423, 'ship_code', 'vtiger_soshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 424, 'bill_country', 'vtiger_sobillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 425, 'ship_country', 'vtiger_soshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 426, 'bill_pobox', 'vtiger_sobillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 427, 'ship_pobox', 'vtiger_soshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(22, 428, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 66, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(22, 429, 'terms_conditions', 'vtiger_salesorder', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 65, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(22, 430, 'enable_recurring', 'vtiger_salesorder', 1, '56', 'enable_recurring', 'Enable Recurring', 1, 0, '', 100, 1, 85, 1, 'C~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 431, 'recurring_frequency', 'vtiger_invoice_recurring_info', 1, '16', 'recurring_frequency', 'Frequency', 1, 0, '', 100, 2, 85, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 432, 'start_period', 'vtiger_invoice_recurring_info', 1, '5', 'start_period', 'Start Period', 1, 0, '', 100, 3, 85, 1, 'D~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 433, 'end_period', 'vtiger_invoice_recurring_info', 1, '5', 'end_period', 'End Period', 1, 0, '', 100, 4, 85, 1, 'D~O~OTH~G~start_period~Start Period', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 434, 'payment_duration', 'vtiger_invoice_recurring_info', 1, '16', 'payment_duration', 'Payment Duration', 1, 0, '', 100, 5, 85, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(22, 435, 'invoice_status', 'vtiger_invoice_recurring_info', 1, '15', 'invoicestatus', 'Invoice Status', 1, 0, '', 100, 6, 85, 1, 'V~M', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(23, 436, 'subject', 'vtiger_invoice', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 67, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(23, 437, 'salesorderid', 'vtiger_invoice', 1, '80', 'salesorder_id', 'Sales Order', 1, 2, '', 100, 2, 67, 1, 'I~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(23, 438, 'customerno', 'vtiger_invoice', 1, '1', 'customerno', 'Customer No', 1, 2, '', 100, 3, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 439, 'contactid', 'vtiger_invoice', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 4, 67, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(23, 440, 'invoicedate', 'vtiger_invoice', 1, '5', 'invoicedate', 'Invoice Date', 1, 2, '', 100, 5, 67, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 441, 'duedate', 'vtiger_invoice', 1, '5', 'duedate', 'Due Date', 1, 2, '', 100, 6, 67, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 442, 'purchaseorder', 'vtiger_invoice', 1, '1', 'vtiger_purchaseorder', 'Purchase Order', 1, 2, '', 100, 8, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 443, 'adjustment', 'vtiger_invoice', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 9, 67, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 444, 'salescommission', 'vtiger_invoice', 1, '1', 'salescommission', 'Sales Commission', 1, 2, '', 10, 13, 67, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 445, 'exciseduty', 'vtiger_invoice', 1, '1', 'exciseduty', 'Excise Duty', 1, 2, '', 100, 11, 67, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 446, 'subtotal', 'vtiger_invoice', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 12, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 447, 'total', 'vtiger_invoice', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 13, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1, 0, 0),
(23, 448, 'taxtype', 'vtiger_invoice', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 13, 67, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 449, 'discount_percent', 'vtiger_invoice', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 13, 113, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 450, 'discount_amount', 'vtiger_invoice', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 2, '', 100, 13, 113, 5, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 451, 's_h_amount', 'vtiger_invoice', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 14, 69, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 452, 'accountid', 'vtiger_invoice', 1, '73', 'account_id', 'Account Name', 1, 2, '', 100, 14, 67, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(23, 453, 'invoicestatus', 'vtiger_invoice', 1, '15', 'invoicestatus', 'Status', 1, 2, '', 100, 15, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(23, 454, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 16, 67, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 1, 0),
(23, 455, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 17, 67, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(23, 456, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 18, 67, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(23, 457, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 67, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(23, 458, 'currency_id', 'vtiger_invoice', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 19, 67, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 459, 'conversion_rate', 'vtiger_invoice', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 20, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 460, 'bill_street', 'vtiger_invoicebillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 69, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 461, 'ship_street', 'vtiger_invoiceshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 69, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 462, 'bill_city', 'vtiger_invoicebillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 463, 'ship_city', 'vtiger_invoiceshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 464, 'bill_state', 'vtiger_invoicebillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 465, 'ship_state', 'vtiger_invoiceshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 466, 'bill_code', 'vtiger_invoicebillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 467, 'ship_code', 'vtiger_invoiceshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 468, 'bill_country', 'vtiger_invoicebillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 469, 'ship_country', 'vtiger_invoiceshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 470, 'bill_pobox', 'vtiger_invoicebillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 471, 'ship_pobox', 'vtiger_invoiceshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0, 0, 0),
(23, 472, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 72, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(23, 473, 'terms_conditions', 'vtiger_invoice', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 71, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0, 0, 0),
(23, 474, 'invoice_no', 'vtiger_invoice', 1, '4', 'invoice_no', 'Invoice No', 1, 0, '', 100, 3, 67, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1, 0, 0),
(29, 475, 'user_name', 'vtiger_users', 1, '106', 'user_name', 'User Name', 1, 0, '', 11, 1, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 476, 'is_admin', 'vtiger_users', 1, '156', 'is_admin', 'Admin', 1, 0, '', 3, 7, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 477, 'user_password', 'vtiger_users', 1, '99', 'user_password', 'Password', 1, 0, '', 30, 5, 77, 4, 'P~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 478, 'confirm_password', 'vtiger_users', 1, '99', 'confirm_password', 'Confirm Password', 1, 0, '', 30, 6, 77, 4, 'P~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 479, 'first_name', 'vtiger_users', 1, '1', 'first_name', 'First Name', 1, 0, '', 30, 3, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 480, 'last_name', 'vtiger_users', 1, '2', 'last_name', 'Last Name', 1, 0, '', 30, 4, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 481, 'roleid', 'vtiger_user2role', 1, '98', 'roleid', 'Role', 1, 0, '', 200, 8, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 482, 'email1', 'vtiger_users', 1, '104', 'email1', 'Email', 1, 0, '', 100, 2, 77, 1, 'E~M', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 483, 'status', 'vtiger_users', 1, '115', 'status', 'Status', 1, 0, 'Active', 100, 10, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 484, 'activity_view', 'vtiger_users', 1, '16', 'activity_view', 'Default Activity View', 1, 0, '', 100, 6, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 485, 'lead_view', 'vtiger_users', 1, '16', 'lead_view', 'Default Lead View', 1, 0, '', 100, 9, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 486, 'hour_format', 'vtiger_users', 1, '16', 'hour_format', 'Calendar Hour Format', 1, 0, '12', 100, 4, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 487, 'end_hour', 'vtiger_users', 1, '116', 'end_hour', 'Day ends at', 1, 0, '', 100, 11, 77, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 488, 'start_hour', 'vtiger_users', 1, '16', 'start_hour', 'Day starts at', 1, 0, '', 100, 2, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 489, 'is_owner', 'vtiger_users', 1, '1', 'is_owner', 'Account Owner', 0, 2, '0', 100, 12, 77, 5, 'V~O', 0, 1, 'BAS', 0, NULL, 0, 0, 0),
(29, 490, 'title', 'vtiger_users', 1, '1', 'title', 'Title', 1, 0, '', 50, 1, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 491, 'phone_work', 'vtiger_users', 1, '11', 'phone_work', 'Office Phone', 1, 0, '', 50, 5, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 492, 'department', 'vtiger_users', 1, '1', 'department', 'Department', 1, 0, '', 50, 3, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 493, 'phone_mobile', 'vtiger_users', 1, '11', 'phone_mobile', 'Mobile', 1, 0, '', 50, 7, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 494, 'reports_to_id', 'vtiger_users', 1, '101', 'reports_to_id', 'Reports To', 1, 0, '', 50, 8, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 495, 'phone_other', 'vtiger_users', 1, '11', 'phone_other', 'Other Phone', 1, 0, '', 50, 11, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 496, 'email2', 'vtiger_users', 1, '13', 'email2', 'Other Email', 1, 0, '', 100, 4, 79, 1, 'E~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 497, 'phone_fax', 'vtiger_users', 1, '11', 'phone_fax', 'Fax', 1, 0, '', 50, 2, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 498, 'secondaryemail', 'vtiger_users', 1, '13', 'secondaryemail', 'Secondary Email', 1, 0, '', 100, 6, 79, 1, 'E~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 499, 'phone_home', 'vtiger_users', 1, '11', 'phone_home', 'Home Phone', 1, 0, '', 50, 9, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 500, 'date_format', 'vtiger_users', 1, '16', 'date_format', 'Date Format', 1, 0, '', 30, 3, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 501, 'signature', 'vtiger_users', 1, '21', 'signature', 'Signature', 1, 0, '', 250, 13, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 502, 'description', 'vtiger_users', 1, '21', 'description', 'Documents', 1, 0, '', 250, 14, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 503, 'address_street', 'vtiger_users', 1, '21', 'address_street', 'Street Address', 1, 0, '', 250, 1, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 504, 'address_city', 'vtiger_users', 1, '1', 'address_city', 'City', 1, 0, '', 100, 3, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 505, 'address_state', 'vtiger_users', 1, '1', 'address_state', 'State', 1, 0, '', 100, 5, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 506, 'address_postalcode', 'vtiger_users', 1, '1', 'address_postalcode', 'Postal Code', 1, 0, '', 100, 4, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 507, 'address_country', 'vtiger_users', 1, '1', 'address_country', 'Country', 1, 0, '', 100, 2, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 508, 'accesskey', 'vtiger_users', 1, '3', 'accesskey', 'Webservice Access Key', 1, 0, '', 100, 2, 83, 2, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 509, 'time_zone', 'vtiger_users', 1, '16', 'time_zone', 'Time Zone', 1, 0, '', 200, 5, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 510, 'currency_id', 'vtiger_users', 1, '117', 'currency_id', 'Currency', 1, 0, '', 100, 1, 78, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 511, 'currency_grouping_pattern', 'vtiger_users', 1, '16', 'currency_grouping_pattern', 'Digit Grouping Pattern', 1, 0, '', 100, 2, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Digit Grouping Pattern</b> <br/><br/>This pattern specifies the format in which the currency separator will be placed.', 0, 0, 0),
(29, 512, 'currency_decimal_separator', 'vtiger_users', 1, '16', 'currency_decimal_separator', 'Decimal Separator', 1, 0, '.', 2, 3, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Decimal Separator</b> <br/><br/>Decimal separator specifies the separator to be used to separate the fractional values from the whole number part. <br/><b>Eg:</b> <br/>. => 123.45 <br/>, => 123,45 <br/>\' => 123\'45 <br/>  => 123 45 <br/>$ => 123$45 <br/>', 0, 0, 0),
(29, 513, 'currency_grouping_separator', 'vtiger_users', 1, '16', 'currency_grouping_separator', 'Digit Grouping Separator', 1, 0, ',', 2, 4, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Grouping Separator</b> <br/><br/>Grouping separator specifies the separator to be used to group the whole number part into hundreds, thousands etc. <br/><b>Eg:</b> <br/>. => 123.456.789 <br/>, => 123,456,789 <br/>\' => 123\'456\'789 <br/>  => 123 456 789 <br/>$ => 123$456$789 <br/>', 0, 0, 0),
(29, 514, 'currency_symbol_placement', 'vtiger_users', 1, '16', 'currency_symbol_placement', 'Symbol Placement', 1, 0, '', 20, 5, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Symbol Placement</b> <br/><br/>Symbol Placement allows you to configure the position of the currency symbol with respect to the currency value.<br/><b>Eg:</b> <br/>$1.0 => $123,456,789.50 <br/>1.0$ => 123,456,789.50$ <br/>', 0, 0, 0),
(29, 515, 'imagename', 'vtiger_users', 1, '105', 'imagename', 'User Image', 1, 0, '', 250, 10, 82, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 516, 'internal_mailer', 'vtiger_users', 1, '56', 'internal_mailer', 'INTERNAL_MAIL_COMPOSER', 1, 0, '', 50, 15, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 517, 'theme', 'vtiger_users', 1, '31', 'theme', 'Theme', 1, 0, 'softed', 100, 16, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 518, 'language', 'vtiger_users', 1, '32', 'language', 'Language', 1, 0, 'en_us', 100, 17, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(29, 519, 'reminder_interval', 'vtiger_users', 1, '16', 'reminder_interval', 'Reminder Interval', 1, 0, '', 100, 11, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0, 0, 0),
(10, 520, 'from_email', 'vtiger_emaildetails', 1, '12', 'from_email', 'From', 1, 2, '', 100, 1, 21, 3, 'V~M', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 521, 'to_email', 'vtiger_emaildetails', 1, '8', 'saved_toid', 'To', 1, 2, '', 100, 2, 21, 1, 'V~M', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 522, 'cc_email', 'vtiger_emaildetails', 1, '8', 'ccmail', 'CC', 1, 2, '', 1000, 3, 21, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 523, 'bcc_email', 'vtiger_emaildetails', 1, '8', 'bccmail', 'BCC', 1, 2, '', 1000, 4, 21, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 524, 'idlists', 'vtiger_emaildetails', 1, '357', 'parent_id', 'Parent ID', 1, 2, '', 1000, 5, 21, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(10, 525, 'email_flag', 'vtiger_emaildetails', 1, '16', 'email_flag', 'Email Flag', 1, 2, '', 1000, 6, 21, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0, 0, 0),
(31, 526, 'servicename', 'vtiger_service', 1, '2', 'servicename', 'Service Name', 1, 0, '', 100, 1, 88, 1, 'V~M', 0, 1, 'BAS', 1, '', 1, 0, 0),
(31, 527, 'service_no', 'vtiger_service', 1, '4', 'service_no', 'Service No', 1, 0, '', 100, 2, 88, 1, 'V~O', 3, 0, 'BAS', 0, '', 1, 0, 0),
(31, 528, 'discontinued', 'vtiger_service', 1, '56', 'discontinued', 'Service Active', 1, 2, '1', 100, 4, 88, 1, 'V~O', 2, 3, 'BAS', 1, '', 0, 0, 0),
(31, 529, 'sales_start_date', 'vtiger_service', 1, '5', 'sales_start_date', 'Sales Start Date', 1, 2, '', 100, 9, 88, 1, 'D~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(31, 530, 'sales_end_date', 'vtiger_service', 1, '5', 'sales_end_date', 'Sales End Date', 1, 2, '', 100, 10, 88, 1, 'D~O~OTH~GE~sales_start_date~Sales Start Date', 1, 0, 'BAS', 1, '', 0, 0, 0),
(31, 531, 'start_date', 'vtiger_service', 1, '5', 'start_date', 'Support Start Date', 1, 2, '', 100, 11, 88, 1, 'D~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(31, 532, 'expiry_date', 'vtiger_service', 1, '5', 'expiry_date', 'Support Expiry Date', 1, 2, '', 100, 12, 88, 1, 'D~O~OTH~GE~start_date~Start Date', 1, 0, 'BAS', 1, '', 0, 0, 0),
(31, 533, 'website', 'vtiger_service', 1, '17', 'website', 'Website', 1, 2, '', 100, 6, 88, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(31, 534, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 13, 88, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(31, 535, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 14, 88, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(31, 536, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 16, 88, 3, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(31, 537, 'service_usageunit', 'vtiger_service', 1, '15', 'service_usageunit', 'Usage Unit', 1, 2, '', 100, 3, 88, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(31, 538, 'qty_per_unit', 'vtiger_service', 1, '1', 'qty_per_unit', 'No of Units', 1, 2, '', 100, 5, 88, 1, 'N~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(31, 539, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Owner', 1, 0, '', 100, 8, 88, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(31, 540, 'servicecategory', 'vtiger_service', 1, '15', 'servicecategory', 'Service Category', 1, 2, '', 100, 7, 88, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(31, 541, 'unit_price', 'vtiger_service', 1, '72', 'unit_price', 'Price', 1, 0, '', 100, 1, 89, 1, 'N~O', 2, 2, 'BAS', 0, '', 1, 0, 0),
(31, 542, 'taxclass', 'vtiger_service', 1, '83', 'taxclass', 'Taxes', 1, 2, '', 100, 4, 89, 1, 'V~O', 2, 0, 'BAS', 1, '', 0, 0, 0),
(31, 543, 'commissionrate', 'vtiger_service', 1, '9', 'commissionrate', 'Commission Rate', 1, 2, '', 100, 2, 89, 1, 'N~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(31, 544, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 91, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(31, 545, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 17, 88, 2, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(31, 546, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 18, 88, 6, 'C~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(31, 547, 'tags', 'vtiger_service', 1, '1', 'tags', 'tags', 1, 2, '', 100, 19, 88, 6, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(35, 548, 'direction', 'vtiger_pbxmanager', 1, '1', 'direction', 'Direction', 1, 2, '', 100, 1, 92, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(35, 549, 'callstatus', 'vtiger_pbxmanager', 1, '1', 'callstatus', 'Call Status', 1, 2, '', 100, 2, 92, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(35, 550, 'starttime', 'vtiger_pbxmanager', 1, '70', 'starttime', 'Start Time', 1, 2, '', 100, 7, 92, 1, 'DT~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(35, 551, 'endtime', 'vtiger_pbxmanager', 1, '70', 'endtime', 'End Time', 1, 2, '', 100, 8, 92, 1, 'DT~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(35, 552, 'totalduration', 'vtiger_pbxmanager', 1, '7', 'totalduration', 'Total Duration', 1, 2, '', 100, 10, 92, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(35, 553, 'billduration', 'vtiger_pbxmanager', 1, '7', 'billduration', 'Bill Duration', 1, 2, '', 100, 11, 92, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(35, 554, 'recordingurl', 'vtiger_pbxmanager', 1, '17', 'recordingurl', 'Recording URL', 1, 2, '', 100, 9, 92, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(35, 555, 'sourceuuid', 'vtiger_pbxmanager', 1, '1', 'sourceuuid', 'Source UUID', 1, 2, '', 100, 12, 92, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(35, 556, 'gateway', 'vtiger_pbxmanager', 1, '1', 'gateway', 'Gateway', 1, 2, '', 100, 13, 92, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(35, 557, 'customer', 'vtiger_pbxmanager', 1, '10', 'customer', 'Customer', 1, 2, '', 100, 3, 92, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(35, 558, 'user', 'vtiger_pbxmanager', 1, '52', 'user', 'User', 1, 2, '', 100, 4, 92, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(35, 559, 'customernumber', 'vtiger_pbxmanager', 1, '11', 'customernumber', 'Customer Number', 1, 2, '', 100, 5, 92, 1, 'V~M', 1, 0, 'BAS', 1, '', 0, 0, 0),
(35, 560, 'customertype', 'vtiger_pbxmanager', 1, '1', 'customertype', 'Customer Type', 1, 2, '', 100, 6, 92, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(35, 561, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 14, 92, 1, 'V~M', 1, 0, 'BAS', 1, '', 0, 0, 0),
(35, 562, 'createdtime', 'vtiger_crmentity', 1, '70', 'CreatedTime', 'Created Time', 1, 2, '', 100, 15, 92, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(35, 563, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'ModifiedTime', 'Modified Time', 1, 2, '', 100, 16, 92, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(35, 564, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 17, 92, 2, 'V~O', 3, 1, 'BAS', 0, '', 0, 0, 0),
(29, 565, 'phone_crm_extension', 'vtiger_users', 1, '11', 'phone_crm_extension', 'CRM Phone Extension', 1, 2, '', 100, 18, 79, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(37, 566, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 4, 93, 1, 'V~M', 2, 2, 'BAS', 1, '', 1, 0, 0),
(37, 567, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 17, 93, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(37, 568, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 18, 93, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(37, 569, 'start_date', 'vtiger_servicecontracts', 1, '5', 'start_date', 'Start Date', 1, 2, '', 100, 7, 93, 1, 'D~O', 2, 4, 'BAS', 1, '', 0, 0, 0),
(37, 570, 'end_date', 'vtiger_servicecontracts', 1, '5', 'end_date', 'End Date', 1, 2, '', 100, 11, 93, 2, 'D~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(37, 571, 'sc_related_to', 'vtiger_servicecontracts', 1, '10', 'sc_related_to', 'Related to', 1, 2, '', 100, 3, 93, 1, 'V~O', 2, 6, 'BAS', 1, '', 0, 0, 0),
(37, 572, 'tracking_unit', 'vtiger_servicecontracts', 1, '15', 'tracking_unit', 'Tracking Unit', 1, 2, '', 100, 6, 93, 1, 'V~O', 2, 7, 'BAS', 1, '', 0, 0, 0),
(37, 573, 'total_units', 'vtiger_servicecontracts', 1, '7', 'total_units', 'Total Units', 1, 2, '', 100, 8, 93, 1, 'NN~O', 2, 8, 'BAS', 1, '', 1, 0, 0),
(37, 574, 'used_units', 'vtiger_servicecontracts', 1, '7', 'used_units', 'Used Units', 1, 2, '', 100, 10, 93, 1, 'NN~O', 2, 9, 'BAS', 1, '', 1, 0, 0),
(37, 575, 'subject', 'vtiger_servicecontracts', 1, '1', 'subject', 'Subject', 1, 0, '', 100, 1, 93, 1, 'V~M', 0, 1, 'BAS', 1, '', 1, 0, 0),
(37, 576, 'due_date', 'vtiger_servicecontracts', 1, '23', 'due_date', 'Due date', 1, 2, '', 100, 9, 93, 1, 'D~O', 2, 5, 'BAS', 1, '', 0, 0, 0),
(37, 577, 'planned_duration', 'vtiger_servicecontracts', 1, '1', 'planned_duration', 'Planned Duration', 1, 2, '', 100, 13, 93, 2, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(37, 578, 'actual_duration', 'vtiger_servicecontracts', 1, '1', 'actual_duration', 'Actual Duration', 1, 2, '', 100, 15, 93, 2, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(37, 579, 'contract_status', 'vtiger_servicecontracts', 1, '15', 'contract_status', 'Status', 1, 2, '', 100, 12, 93, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(37, 580, 'priority', 'vtiger_servicecontracts', 1, '15', 'contract_priority', 'Priority', 1, 2, '', 100, 14, 93, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(37, 581, 'contract_type', 'vtiger_servicecontracts', 1, '15', 'contract_type', 'Type', 1, 2, '', 100, 5, 93, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(37, 582, 'progress', 'vtiger_servicecontracts', 1, '9', 'progress', 'Progress', 1, 2, '', 100, 16, 93, 2, 'N~O~2~2', 3, 3, 'BAS', 0, '', 0, 0, 0),
(37, 583, 'contract_no', 'vtiger_servicecontracts', 1, '4', 'contract_no', 'Contract No', 1, 0, '', 100, 2, 93, 1, 'V~O', 3, 0, 'BAS', 0, '', 1, 0, 0),
(37, 584, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 17, 93, 3, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(37, 585, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 19, 93, 2, 'V~O', 3, 10, 'BAS', 0, '', 0, 0, 0),
(37, 586, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 20, 93, 6, 'C~O', 3, 11, 'BAS', 0, '', 0, 0, 0),
(37, 587, 'tags', 'vtiger_servicecontracts', 1, '1', 'tags', 'tags', 1, 2, '', 100, 21, 93, 6, 'V~O', 3, 12, 'BAS', 0, '', 0, 0, 0),
(38, 588, 'commentcontent', 'vtiger_modcomments', 1, '19', 'commentcontent', 'Comment', 1, 0, '', 100, 4, 95, 1, 'V~M', 0, 4, 'BAS', 2, '', 1, 0, 0),
(38, 589, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 1, 96, 1, 'V~M', 0, 1, 'BAS', 2, '', 1, 0, 0),
(38, 590, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 96, 2, 'DT~O', 0, 2, 'BAS', 0, '', 0, 0, 0),
(38, 591, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 96, 2, 'DT~O', 0, 3, 'BAS', 0, '', 0, 0, 0),
(38, 592, 'related_to', 'vtiger_modcomments', 1, '10', 'related_to', 'Related To', 1, 2, '', 100, 2, 96, 1, 'V~M', 2, 5, 'BAS', 2, '', 0, 0, 0),
(38, 593, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'creator', 'Creator', 1, 2, '', 100, 4, 96, 2, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(38, 594, 'parent_comments', 'vtiger_modcomments', 1, '10', 'parent_comments', 'Related To Comments', 1, 2, '', 100, 7, 96, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(38, 595, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 5, 95, 2, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(42, 596, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 2, 98, 1, 'V~M', 1, 0, 'BAS', 1, '', 1, 0, 0),
(42, 597, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 98, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(42, 598, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 98, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(42, 599, 'message', 'vtiger_smsnotifier', 1, '21', 'message', 'message', 1, 0, '', 100, 1, 98, 1, 'V~M', 1, 0, 'BAS', 1, '', 1, 0, 0),
(42, 600, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 98, 3, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(42, 601, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 8, 98, 2, 'V~O', 3, 1, 'BAS', 0, '', 0, 0, 0),
(43, 602, 'projectmilestonename', 'vtiger_projectmilestone', 1, '2', 'projectmilestonename', 'Project Milestone Name', 1, 2, '', 100, 1, 101, 1, 'V~M', 0, 1, 'BAS', 1, '', 1, 0, 0),
(43, 603, 'projectmilestonedate', 'vtiger_projectmilestone', 1, '5', 'projectmilestonedate', 'Milestone Date', 1, 2, '', 100, 5, 101, 1, 'D~O', 0, 3, 'BAS', 1, '', 1, 0, 0),
(43, 604, 'projectid', 'vtiger_projectmilestone', 1, '10', 'projectid', 'Related to', 1, 0, '', 100, 4, 101, 1, 'V~M', 0, 4, 'BAS', 1, '', 0, 0, 0),
(43, 605, 'projectmilestonetype', 'vtiger_projectmilestone', 1, '15', 'projectmilestonetype', 'Type', 1, 2, '', 100, 7, 101, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(43, 606, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 6, 101, 1, 'V~M', 0, 2, 'BAS', 1, '', 0, 0, 0),
(43, 607, 'projectmilestone_no', 'vtiger_projectmilestone', 2, '4', 'projectmilestone_no', 'Project Milestone No', 1, 0, '', 100, 2, 101, 1, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(43, 608, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 1, 102, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(43, 609, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 2, 102, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(43, 610, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 3, 102, 3, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(43, 611, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 103, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(43, 612, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 8, 101, 2, 'V~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(43, 613, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 9, 101, 6, 'C~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(43, 614, 'tags', 'vtiger_projectmilestone', 1, '1', 'tags', 'tags', 1, 2, '', 100, 10, 101, 6, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(44, 615, 'projecttaskname', 'vtiger_projecttask', 1, '2', 'projecttaskname', 'Project Task Name', 1, 2, '', 100, 1, 104, 1, 'V~M', 0, 1, 'BAS', 1, '', 1, 0, 0),
(44, 616, 'projecttasktype', 'vtiger_projecttask', 1, '15', 'projecttasktype', 'Type', 1, 2, '', 100, 4, 104, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(44, 617, 'projecttaskpriority', 'vtiger_projecttask', 1, '15', 'projecttaskpriority', 'Priority', 1, 2, '', 100, 3, 104, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(44, 618, 'projectid', 'vtiger_projecttask', 1, '10', 'projectid', 'Related to', 1, 0, '', 100, 6, 104, 1, 'V~M', 0, 5, 'BAS', 1, '', 0, 0, 0),
(44, 619, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 7, 104, 1, 'V~M', 0, 2, 'BAS', 1, '', 1, 0, 0),
(44, 620, 'projecttasknumber', 'vtiger_projecttask', 1, '7', 'projecttasknumber', 'Project Task Number', 1, 2, '', 100, 5, 104, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(44, 621, 'projecttask_no', 'vtiger_projecttask', 2, '4', 'projecttask_no', 'Project Task No', 1, 0, '', 100, 2, 104, 1, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(44, 622, 'projecttaskprogress', 'vtiger_projecttask', 1, '15', 'projecttaskprogress', 'Progress', 1, 2, '', 100, 1, 105, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(44, 623, 'projecttaskhours', 'vtiger_projecttask', 1, '7', 'projecttaskhours', 'Worked Hours', 1, 2, '', 100, 2, 105, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(44, 624, 'startdate', 'vtiger_projecttask', 1, '5', 'startdate', 'Start Date', 1, 2, '', 100, 3, 105, 1, 'D~O', 0, 3, 'BAS', 1, '', 1, 0, 0),
(44, 625, 'enddate', 'vtiger_projecttask', 1, '5', 'enddate', 'End Date', 1, 2, '', 100, 4, 105, 1, 'D~O~OTH~GE~startdate~Start Date', 1, 0, 'BAS', 1, '', 1, 0, 0),
(44, 626, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 5, 105, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(44, 627, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 6, 105, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(44, 628, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 105, 3, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(44, 629, 'description', 'vtiger_crmentity', 1, '19', 'description', 'description', 1, 2, '', 100, 1, 106, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(44, 630, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 8, 104, 2, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(44, 631, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 9, 104, 6, 'C~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(44, 632, 'tags', 'vtiger_projecttask', 1, '1', 'tags', 'tags', 1, 2, '', 100, 10, 104, 6, 'V~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(45, 633, 'projectname', 'vtiger_project', 1, '2', 'projectname', 'Project Name', 1, 2, '', 100, 1, 107, 1, 'V~M', 0, 1, 'BAS', 1, '', 1, 0, 0),
(45, 634, 'startdate', 'vtiger_project', 1, '23', 'startdate', 'Start Date', 1, 2, '', 100, 3, 107, 1, 'D~O', 0, 3, 'BAS', 1, '', 1, 0, 0),
(45, 635, 'targetenddate', 'vtiger_project', 1, '23', 'targetenddate', 'Target End Date', 1, 2, '', 100, 5, 107, 1, 'D~O~OTH~GE~startdate~Start Date', 0, 4, 'BAS', 1, '', 1, 0, 0),
(45, 636, 'actualenddate', 'vtiger_project', 1, '23', 'actualenddate', 'Actual End Date', 1, 2, '', 100, 6, 107, 1, 'D~O~OTH~GE~startdate~Start Date', 1, 0, 'BAS', 1, '', 0, 0, 0),
(45, 637, 'projectstatus', 'vtiger_project', 1, '15', 'projectstatus', 'Status', 1, 2, '', 100, 7, 107, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(45, 638, 'projecttype', 'vtiger_project', 1, '15', 'projecttype', 'Type', 1, 2, '', 100, 8, 107, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(45, 639, 'linktoaccountscontacts', 'vtiger_project', 1, '10', 'linktoaccountscontacts', 'Related to', 1, 2, '', 100, 9, 107, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 1, 0),
(45, 640, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 4, 107, 1, 'V~M', 0, 2, 'BAS', 1, '', 1, 0, 0),
(45, 641, 'project_no', 'vtiger_project', 2, '4', 'project_no', 'Project No', 1, 0, '', 100, 2, 107, 1, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(45, 642, 'targetbudget', 'vtiger_project', 1, '7', 'targetbudget', 'Target Budget', 1, 2, '', 100, 1, 108, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(45, 643, 'projecturl', 'vtiger_project', 1, '17', 'projecturl', 'Project Url', 1, 2, '', 100, 2, 108, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(45, 644, 'projectpriority', 'vtiger_project', 1, '15', 'projectpriority', 'Priority', 1, 2, '', 100, 3, 108, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(45, 645, 'progress', 'vtiger_project', 1, '15', 'progress', 'Progress', 1, 2, '', 100, 4, 108, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(45, 646, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 5, 108, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(45, 647, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 6, 108, 2, 'DT~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(45, 648, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 108, 3, 'V~O', 3, 0, 'BAS', 0, '', 0, 0, 0),
(45, 649, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 109, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(45, 650, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 10, 107, 2, 'V~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(45, 651, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 11, 107, 6, 'C~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(45, 652, 'tags', 'vtiger_project', 1, '1', 'tags', 'tags', 1, 2, '', 100, 12, 107, 6, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(47, 653, 'asset_no', 'vtiger_assets', 1, '4', 'asset_no', 'Asset No', 1, 0, '', 100, 2, 110, 1, 'V~O', 3, 0, 'BAS', 0, '\n					', 1, 0, 0),
(47, 654, 'product', 'vtiger_assets', 1, '10', 'product', 'Product Name', 1, 2, '', 100, 3, 110, 1, 'V~M', 0, 3, 'BAS', 1, '\n					', 1, 0, 0),
(47, 655, 'serialnumber', 'vtiger_assets', 1, '2', 'serialnumber', 'Serial Number', 1, 2, '', 100, 4, 110, 1, 'V~M', 0, 5, 'BAS', 1, '\n					', 0, 0, 0),
(47, 656, 'datesold', 'vtiger_assets', 1, '5', 'datesold', 'Date Sold', 1, 2, '', 100, 5, 110, 1, 'D~M~OTH~GE~datesold~Date Sold', 0, 0, 'BAS', 1, '\n					', 0, 0, 0),
(47, 657, 'dateinservice', 'vtiger_assets', 1, '5', 'dateinservice', 'Date in Service', 1, 2, '', 100, 6, 110, 1, 'D~M~OTH~GE~dateinservice~Date in Service', 0, 4, 'BAS', 1, '\n					', 0, 0, 0),
(47, 658, 'assetstatus', 'vtiger_assets', 1, '15', 'assetstatus', 'Status', 1, 2, '', 100, 7, 110, 1, 'V~M', 0, 0, 'BAS', 1, '\n					', 0, 0, 0),
(47, 659, 'tagnumber', 'vtiger_assets', 1, '2', 'tagnumber', 'Tag Number', 1, 2, '', 100, 8, 110, 1, 'V~O', 1, 0, 'BAS', 1, '\n					', 0, 0, 0);
INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `defaultvalue`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`, `summaryfield`, `headerfield`, `isunique`) VALUES
(47, 660, 'invoiceid', 'vtiger_assets', 1, '10', 'invoiceid', 'Invoice Name', 1, 2, '', 100, 9, 110, 1, 'V~O', 1, 0, 'BAS', 1, '\n					', 0, 0, 0),
(47, 661, 'shippingmethod', 'vtiger_assets', 1, '2', 'shippingmethod', 'Shipping Method', 1, 2, '', 100, 10, 110, 1, 'V~O', 1, 0, 'BAS', 1, '\n					', 0, 0, 0),
(47, 662, 'shippingtrackingnumber', 'vtiger_assets', 1, '2', 'shippingtrackingnumber', 'Shipping Tracking Number', 1, 2, '', 100, 11, 110, 1, 'V~O', 1, 0, 'BAS', 1, '\n					', 0, 0, 0),
(47, 663, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 4, 110, 1, 'V~M', 0, 2, 'BAS', 1, '\n					', 0, 0, 0),
(47, 664, 'assetname', 'vtiger_assets', 1, '1', 'assetname', 'Asset Name', 1, 0, '', 100, 12, 110, 1, 'V~M', 0, 6, 'BAS', 1, '\n					', 1, 0, 0),
(47, 665, 'account', 'vtiger_assets', 1, '10', 'account', 'Customer Name', 1, 2, '', 100, 13, 110, 1, 'V~M', 0, 0, 'BAS', 1, '\n					', 1, 0, 0),
(47, 666, 'contact', 'vtiger_assets', 1, '10', 'contact', 'Contact Name', 1, 2, '', 100, 14, 110, 1, 'V~O', 0, 0, 'BAS', 1, '\n					', 0, 0, 0),
(47, 667, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 14, 110, 2, 'DT~O', 3, 0, 'BAS', 0, '\n					', 0, 0, 0),
(47, 668, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 110, 2, 'DT~O', 3, 0, 'BAS', 0, '\n					', 0, 0, 0),
(47, 669, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 16, 110, 3, 'V~O', 3, 0, 'BAS', 0, '\n					', 0, 0, 0),
(47, 670, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Notes', 1, 2, '', 100, 1, 112, 1, 'V~O', 1, 0, 'BAS', 1, '\n					', 0, 0, 0),
(47, 671, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 17, 110, 2, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(47, 672, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 18, 110, 6, 'C~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(47, 673, 'tags', 'vtiger_assets', 1, '1', 'tags', 'tags', 1, 2, '', 100, 19, 110, 6, 'V~O', 3, 9, 'BAS', 0, '', 0, 0, 0),
(2, 674, 'forecast_amount', 'vtiger_potential', 1, '71', 'forecast_amount', 'Forecast Amount', 1, 2, '', 100, 18, 1, 1, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(29, 675, 'no_of_currency_decimals', 'vtiger_users', 1, '16', 'no_of_currency_decimals', 'Number Of Currency Decimals', 1, 2, '2', 100, 6, 78, 1, 'V~O', 1, 0, 'BAS', 1, '<b>Currency - Number of Decimal places</b> <br/><br/>Number of decimal places specifies how many number of decimals will be shown after decimal separator.<br/><b>Eg:</b> 123.00', 0, 0, 0),
(23, 676, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 113, 5, 'V~M', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 677, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 113, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 678, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 113, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 679, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 113, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 680, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Item Discount Amount', 0, 2, '', 100, 5, 113, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 681, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 113, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 682, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'VAT', 0, 2, '', 100, 7, 113, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 683, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Sales', 0, 2, '', 100, 8, 113, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 684, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Service', 0, 2, '', 100, 9, 113, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 685, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 114, 5, 'V~M', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 686, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 114, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 687, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 114, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 688, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 114, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 689, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Item Discount Amount', 0, 2, '', 100, 5, 114, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 690, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 114, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 691, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'VAT', 0, 2, '', 100, 7, 114, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 692, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Sales', 0, 2, '', 100, 8, 114, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 693, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Service', 0, 2, '', 100, 9, 114, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 694, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 115, 5, 'V~M', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 695, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 115, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 696, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 115, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 697, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 115, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 698, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Item Discount Amount', 0, 2, '', 100, 5, 115, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 699, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 115, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 700, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'VAT', 0, 2, '', 100, 7, 115, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 701, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Sales', 0, 2, '', 100, 8, 115, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 702, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Service', 0, 2, '', 100, 9, 115, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 703, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 116, 5, 'V~M', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 704, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 116, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 705, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 116, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 706, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 116, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 707, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Item Discount Amount', 0, 2, '', 100, 5, 116, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 708, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 116, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 709, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'VAT', 0, 2, '', 100, 7, 116, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 710, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Sales', 0, 2, '', 100, 8, 116, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 711, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Service', 0, 2, '', 100, 9, 116, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(29, 712, 'truncate_trailing_zeros', 'vtiger_users', 1, '56', 'truncate_trailing_zeros', 'Truncate Trailing Zeros', 1, 2, '0', 100, 7, 78, 1, 'V~O', 1, 0, 'BAS', 1, '<b> Truncate Trailing Zeros </b> <br/><br/>It truncated trailing 0s in any of Currency, Decimal and Percentage Field types<br/><br/><b>Ex:</b><br/>If value is 89.00000 then <br/>decimal and Percentage fields were shows 89<br/>currency field type - shows 89.00<br/>', 0, 0, 0),
(44, 713, 'projecttaskstatus', 'vtiger_projecttask', 1, '15', 'projecttaskstatus', 'Status', 1, 2, '', 100, 11, 104, 1, 'V~O', 0, 9, 'BAS', 1, '', 0, 0, 0),
(38, 714, 'customer', 'vtiger_modcomments', 1, '10', 'customer', 'Customer', 1, 2, '', 100, 6, 95, 3, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 715, 'dayoftheweek', 'vtiger_users', 1, '16', 'dayoftheweek', 'Starting Day of the week', 1, 2, 'Monday', 100, 1, 118, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 716, 'callduration', 'vtiger_users', 1, '16', 'callduration', 'Default Call Duration', 1, 2, '5', 100, 7, 118, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 717, 'othereventduration', 'vtiger_users', 1, '16', 'othereventduration', 'Other Event Duration', 1, 2, '5', 100, 8, 118, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(23, 718, 'pre_tax_total', 'vtiger_invoice', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 67, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(22, 719, 'pre_tax_total', 'vtiger_salesorder', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 61, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(21, 720, 'pre_tax_total', 'vtiger_purchaseorder', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 55, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(20, 721, 'pre_tax_total', 'vtiger_quotes', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 49, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 722, 'calendarsharedtype', 'vtiger_users', 1, '16', 'calendarsharedtype', 'Calendar Shared Type', 1, 2, 'Public', 100, 12, 118, 3, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(6, 723, 'isconvertedfromlead', 'vtiger_account', 1, '56', 'isconvertedfromlead', 'Is Converted From Lead', 1, 2, 'no', 100, 24, 9, 1, 'C~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(4, 724, 'isconvertedfromlead', 'vtiger_contactdetails', 1, '56', 'isconvertedfromlead', 'Is Converted From Lead', 1, 2, 'no', 100, 29, 4, 1, 'C~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(2, 725, 'isconvertedfromlead', 'vtiger_potential', 1, '56', 'isconvertedfromlead', 'Is Converted From Lead', 1, 2, 'no', 100, 19, 1, 1, 'C~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 726, 'default_record_view', 'vtiger_users', 1, '16', 'default_record_view', 'Default Record View', 1, 2, 'Summary', 100, 19, 79, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(23, 727, 'received', 'vtiger_invoice', 1, '72', 'received', 'Received', 1, 2, '0', 100, 24, 67, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(23, 728, 'balance', 'vtiger_invoice', 1, '72', 'balance', 'Balance', 1, 2, '0', 100, 25, 67, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(21, 729, 'paid', 'vtiger_purchaseorder', 1, '72', 'paid', 'Paid', 1, 2, '0', 100, 24, 55, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(21, 730, 'balance', 'vtiger_purchaseorder', 1, '72', 'balance', 'Balance', 1, 2, '0', 100, 25, 55, 3, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(18, 731, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 13, 42, 1, 'V~M', 1, 0, 'BAS', 1, '', 0, 0, 0),
(7, 732, 'emailoptout', 'vtiger_leaddetails', 1, '56', 'emailoptout', 'Email Opt Out', 1, 0, '', 100, 24, 13, 1, 'C~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(38, 733, 'userid', 'vtiger_modcomments', 1, '10', 'userid', 'UserId', 1, 2, '', 100, 7, 95, 3, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(38, 734, 'reasontoedit', 'vtiger_modcomments', 1, '19', 'reasontoedit', 'ReasonToEdit', 1, 2, '', 100, 8, 95, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(23, 735, 's_h_percent', 'vtiger_invoice', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 113, 5, 'N~O', 0, 1, 'BAS', 0, '', 0, 0, 0),
(20, 736, 's_h_percent', 'vtiger_quotes', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 116, 5, 'N~O', 0, 1, 'BAS', 0, '', 0, 0, 0),
(21, 737, 's_h_percent', 'vtiger_purchaseorder', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 115, 5, 'N~O', 0, 1, 'BAS', 0, '', 0, 0, 0),
(22, 738, 's_h_percent', 'vtiger_salesorder', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 114, 5, 'N~O', 0, 1, 'BAS', 0, '', 0, 0, 0),
(29, 739, 'leftpanelhide', 'vtiger_users', 1, '56', 'leftpanelhide', 'Left Panel Hide', 1, 2, '0', 100, 20, 79, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(2, 740, 'contact_id', 'vtiger_potential', 1, '10', 'contact_id', 'Contact Name', 1, 2, '', 100, 4, 1, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(13, 741, 'contact_id', 'vtiger_troubletickets', 1, '10', 'contact_id', 'Contact Name', 1, 2, '', 100, 3, 25, 1, 'V~O', 1, 0, 'BAS', 1, '', 1, 0, 0),
(29, 742, 'rowheight', 'vtiger_users', 1, '16', 'rowheight', 'Row Height', 1, 2, 'medium', 100, 21, 79, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 743, 'defaulteventstatus', 'vtiger_users', 1, '15', 'defaulteventstatus', 'Default Event Status', 1, 2, 'Planned', 100, 9, 118, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 744, 'defaultactivitytype', 'vtiger_users', 1, '15', 'defaultactivitytype', 'Default Activity Type', 1, 2, 'Call', 100, 10, 118, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 745, 'hidecompletedevents', 'vtiger_users', 1, '56', 'hidecompletedevents', 'LBL_HIDE_COMPLETED_EVENTS', 1, 2, '0', 100, 13, 118, 1, 'C~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(14, 772, 'purchase_cost', 'vtiger_products', 1, '71', 'purchase_cost', 'Purchase Cost', 1, 0, '', 100, 5, 32, 1, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(31, 773, 'purchase_cost', 'vtiger_service', 1, '71', 'purchase_cost', 'Purchase Cost', 1, 0, '', 100, 5, 89, 1, 'N~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(23, 774, 'potential_id', 'vtiger_invoice', 1, '10', 'potential_id', 'Potential Name', 1, 2, '', 100, 26, 67, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 775, 'defaultcalendarview', 'vtiger_users', 1, '16', 'defaultcalendarview', 'Default Calendar View', 1, 0, 'MyCalendar', 100, 14, 118, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(23, 776, 'image', 'vtiger_inventoryproductrel', 1, '56', 'image', 'Image', 0, 1, '', 100, 14, 113, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 777, 'purchase_cost', 'vtiger_inventoryproductrel', 1, '71', 'purchase_cost', 'Purchase Cost', 0, 1, '', 100, 15, 113, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 778, 'margin', 'vtiger_inventoryproductrel', 1, '71', 'margin', 'Margin', 0, 1, '', 100, 16, 113, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 779, 'image', 'vtiger_inventoryproductrel', 1, '56', 'image', 'Image', 0, 1, '', 100, 15, 116, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 780, 'purchase_cost', 'vtiger_inventoryproductrel', 1, '71', 'purchase_cost', 'Purchase Cost', 0, 1, '', 100, 16, 116, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(20, 781, 'margin', 'vtiger_inventoryproductrel', 1, '71', 'margin', 'Margin', 0, 1, '', 100, 17, 116, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 782, 'image', 'vtiger_inventoryproductrel', 1, '56', 'image', 'Image', 0, 1, '', 100, 15, 115, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 783, 'image', 'vtiger_inventoryproductrel', 1, '56', 'image', 'Image', 0, 1, '', 100, 16, 114, 5, 'V~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 784, 'purchase_cost', 'vtiger_inventoryproductrel', 1, '71', 'purchase_cost', 'Purchase Cost', 0, 1, '', 100, 17, 114, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 785, 'margin', 'vtiger_inventoryproductrel', 1, '71', 'margin', 'Margin', 0, 1, '', 100, 18, 114, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(38, 786, 'is_private', 'vtiger_modcomments', 1, '7', 'is_private', 'Is Private', 1, 2, '', 100, 9, 95, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(38, 787, 'filename', 'vtiger_modcomments', 1, '61', 'filename', 'Attachment', 1, 0, '', 100, 10, 95, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(38, 788, 'related_email_id', 'vtiger_modcomments', 1, '1', 'related_email_id', 'Related Email Id', 1, 2, '0', 100, 11, 95, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(2, 789, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 20, 1, 2, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(4, 790, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 30, 4, 2, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(6, 791, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 25, 9, 2, 'V~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(7, 792, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 25, 13, 2, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(8, 793, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 13, 17, 2, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(9, 794, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 23, 19, 2, 'V~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(10, 795, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 13, 21, 2, 'V~O', 3, 1, 'BAS', 0, '', 0, 0, 0),
(13, 796, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 18, 25, 2, 'V~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(14, 797, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 23, 31, 2, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(15, 798, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 9, 37, 2, 'V~O', 3, 1, 'BAS', 0, '', 0, 0, 0),
(16, 799, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 23, 39, 2, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(18, 800, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 14, 42, 2, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(19, 801, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 8, 46, 2, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(20, 802, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 24, 49, 2, 'V~O', 3, 2, 'BAS', 0, '', 0, 0, 0),
(21, 803, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 26, 55, 2, 'V~O', 3, 2, 'BAS', 0, '', 0, 0, 0),
(22, 804, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 24, 61, 2, 'V~O', 3, 2, 'BAS', 0, '', 0, 0, 0),
(23, 805, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 27, 67, 2, 'V~O', 3, 2, 'BAS', 0, '', 0, 0, 0),
(26, 806, 'source', 'vtiger_crmentity', 1, '1', 'source', 'Source', 1, 2, '', 100, 17, 74, 2, 'V~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(10, 807, 'click_count', 'vtiger_email_track', 1, '25', 'click_count', 'Click Count', 1, 2, '0', 100, 14, 21, 3, 'I~O', 0, 2, 'BAS', 0, '', 0, 0, 0),
(2, 808, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 21, 1, 6, 'C~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(4, 809, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 31, 4, 6, 'C~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(6, 810, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 26, 9, 6, 'C~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(7, 811, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 26, 13, 6, 'C~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(8, 812, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 14, 17, 6, 'C~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(9, 813, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 24, 19, 6, 'C~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(10, 814, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 15, 21, 6, 'C~O', 3, 3, 'BAS', 0, '', 0, 0, 0),
(13, 815, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 19, 25, 6, 'C~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(14, 816, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 24, 31, 6, 'C~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(15, 817, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 10, 37, 6, 'C~O', 3, 2, 'BAS', 0, '', 0, 0, 0),
(16, 818, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 24, 39, 6, 'C~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(18, 819, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 15, 42, 6, 'C~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(19, 820, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 9, 46, 6, 'C~O', 3, 5, 'BAS', 0, '', 0, 0, 0),
(20, 821, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 25, 49, 6, 'C~O', 3, 3, 'BAS', 0, '', 0, 0, 0),
(21, 822, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 27, 55, 6, 'C~O', 3, 3, 'BAS', 0, '', 0, 0, 0),
(22, 823, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 25, 61, 6, 'C~O', 3, 3, 'BAS', 0, '', 0, 0, 0),
(23, 824, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 28, 67, 6, 'C~O', 3, 3, 'BAS', 0, '', 0, 0, 0),
(26, 825, 'starred', 'vtiger_crmentity_user_field', 1, '56', 'starred', 'starred', 1, 2, '', 100, 18, 74, 6, 'C~O', 3, 9, 'BAS', 0, '', 0, 0, 0),
(2, 826, 'tags', 'vtiger_potential', 1, '1', 'tags', 'tags', 1, 2, '', 100, 22, 1, 6, 'V~O', 3, 9, 'BAS', 0, '', 0, 0, 0),
(4, 827, 'tags', 'vtiger_contactdetails', 1, '1', 'tags', 'tags', 1, 2, '', 100, 32, 4, 6, 'V~O', 3, 9, 'BAS', 0, '', 0, 0, 0),
(6, 828, 'tags', 'vtiger_account', 1, '1', 'tags', 'tags', 1, 2, '', 100, 27, 9, 6, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(7, 829, 'tags', 'vtiger_leaddetails', 1, '1', 'tags', 'tags', 1, 2, '', 100, 27, 13, 6, 'V~O', 3, 9, 'BAS', 0, '', 0, 0, 0),
(8, 830, 'tags', 'vtiger_notes', 1, '1', 'tags', 'tags', 1, 2, '', 100, 15, 17, 6, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(9, 831, 'tags', 'vtiger_activity', 1, '1', 'tags', 'tags', 1, 2, '', 100, 25, 19, 6, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(10, 832, 'tags', 'vtiger_activity', 1, '1', 'tags', 'tags', 1, 2, '', 100, 16, 21, 6, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(13, 833, 'tags', 'vtiger_troubletickets', 1, '1', 'tags', 'tags', 1, 2, '', 100, 20, 25, 6, 'V~O', 3, 7, 'BAS', 0, '', 0, 0, 0),
(14, 834, 'tags', 'vtiger_products', 1, '1', 'tags', 'tags', 1, 2, '', 100, 25, 31, 6, 'V~O', 3, 8, 'BAS', 0, '', 0, 0, 0),
(15, 835, 'tags', 'vtiger_faq', 1, '1', 'tags', 'tags', 1, 2, '', 100, 11, 37, 6, 'V~O', 3, 3, 'BAS', 0, '', 0, 0, 0),
(16, 836, 'tags', 'vtiger_activity', 1, '1', 'tags', 'tags', 1, 2, '', 100, 25, 39, 6, 'V~O', 3, 9, 'BAS', 0, '', 0, 0, 0),
(18, 837, 'tags', 'vtiger_vendor', 1, '1', 'tags', 'tags', 1, 2, '', 100, 16, 42, 6, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(19, 838, 'tags', 'vtiger_pricebook', 1, '1', 'tags', 'tags', 1, 2, '', 100, 10, 46, 6, 'V~O', 3, 6, 'BAS', 0, '', 0, 0, 0),
(20, 839, 'tags', 'vtiger_quotes', 1, '1', 'tags', 'tags', 1, 2, '', 100, 26, 49, 6, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(21, 840, 'tags', 'vtiger_purchaseorder', 1, '1', 'tags', 'tags', 1, 2, '', 100, 28, 55, 6, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(22, 841, 'tags', 'vtiger_salesorder', 1, '1', 'tags', 'tags', 1, 2, '', 100, 26, 61, 6, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(23, 842, 'tags', 'vtiger_invoice', 1, '1', 'tags', 'tags', 1, 2, '', 100, 29, 67, 6, 'V~O', 3, 4, 'BAS', 0, '', 0, 0, 0),
(26, 843, 'tags', 'vtiger_campaign', 1, '1', 'tags', 'tags', 1, 2, '', 100, 19, 74, 6, 'V~O', 3, 10, 'BAS', 0, '', 0, 0, 0),
(20, 844, 'region_id', 'vtiger_quotes', 1, '16', 'region_id', 'Tax Region', 0, 2, '', 100, 18, 116, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(21, 845, 'region_id', 'vtiger_purchaseorder', 1, '16', 'region_id', 'Tax Region', 0, 2, '', 100, 16, 115, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(22, 846, 'region_id', 'vtiger_salesorder', 1, '16', 'region_id', 'Tax Region', 0, 2, '', 100, 19, 114, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(23, 847, 'region_id', 'vtiger_invoice', 1, '16', 'region_id', 'Tax Region', 0, 2, '', 100, 17, 113, 5, 'N~O', 1, 0, 'BAS', 0, '', 0, 0, 0),
(45, 848, 'isconvertedfrompotential', 'vtiger_project', 1, '56', 'isconvertedfrompotential', 'Is Converted From Opportunity', 1, 2, '', 100, 13, 107, 1, 'C~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(45, 849, 'potentialid', 'vtiger_project', 1, '10', 'potentialid', 'Potential Name', 1, 2, '', 100, 14, 107, 1, 'I~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(29, 850, 'defaultlandingpage', 'vtiger_users', 1, '32', 'defaultlandingpage', 'Default Landing Page', 1, 0, 'Home', 100, 22, 79, 1, 'V~O', 1, 0, 'BAS', 1, '', 0, 0, 0),
(22, 851, 'last_recurring_date', 'vtiger_invoice_recurring_info', 1, '5', 'last_recurring_date', 'Next Invoice Date', 1, 2, '', 100, 7, 85, 2, 'D~O', 1, 0, 'BAS', 1, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_fieldmodulerel`
--

CREATE TABLE `vtiger_fieldmodulerel` (
  `fieldid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relmodule` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_fieldmodulerel`
--

INSERT INTO `vtiger_fieldmodulerel` (`fieldid`, `module`, `relmodule`, `status`, `sequence`) VALUES
(113, 'Potentials', 'Accounts', NULL, 0),
(557, 'PBXManager', 'Leads', NULL, NULL),
(557, 'PBXManager', 'Contacts', NULL, NULL),
(557, 'PBXManager', 'Accounts', NULL, NULL),
(571, 'ServiceContracts', 'Contacts', NULL, NULL),
(571, 'ServiceContracts', 'Accounts', NULL, NULL),
(592, 'ModComments', 'Leads', NULL, NULL),
(592, 'ModComments', 'Contacts', NULL, NULL),
(592, 'ModComments', 'Accounts', NULL, NULL),
(594, 'ModComments', 'ModComments', NULL, NULL),
(592, 'ModComments', 'Potentials', NULL, NULL),
(604, 'ProjectMilestone', 'Project', NULL, NULL),
(618, 'ProjectTask', 'Project', NULL, NULL),
(592, 'ModComments', 'ProjectTask', NULL, NULL),
(639, 'Project', 'Accounts', NULL, NULL),
(639, 'Project', 'Contacts', NULL, NULL),
(592, 'ModComments', 'Project', NULL, NULL),
(654, 'Assets', 'Products', NULL, NULL),
(660, 'Assets', 'Invoice', NULL, NULL),
(665, 'Assets', 'Accounts', NULL, NULL),
(666, 'Assets', 'Contacts', NULL, NULL),
(676, 'Invoice', 'Products', NULL, NULL),
(676, 'Invoice', 'Services', NULL, NULL),
(685, 'SalesOrder', 'Products', NULL, NULL),
(685, 'SalesOrder', 'Services', NULL, NULL),
(694, 'PurchaseOrder', 'Products', NULL, NULL),
(694, 'PurchaseOrder', 'Services', NULL, NULL),
(703, 'Quotes', 'Products', NULL, NULL),
(703, 'Quotes', 'Services', NULL, NULL),
(714, 'ModComments', 'Contacts', NULL, NULL),
(592, 'ModComments', 'HelpDesk', NULL, NULL),
(592, 'ModComments', 'Faq', NULL, NULL),
(740, 'Potentials', 'Contacts', NULL, NULL),
(157, 'HelpDesk', 'Accounts', NULL, NULL),
(741, 'HelpDesk', 'Contacts', NULL, NULL),
(238, 'Accounts', 'Calendar', NULL, NULL),
(238, 'Leads', 'Calendar', NULL, NULL),
(238, 'HelpDesk', 'Calendar', NULL, NULL),
(238, 'Campaigns', 'Calendar', NULL, NULL),
(238, 'Potentials', 'Calendar', NULL, NULL),
(238, 'PurchaseOrder', 'Calendar', NULL, NULL),
(238, 'SalesOrder', 'Calendar', NULL, NULL),
(238, 'Quotes', 'Calendar', NULL, NULL),
(238, 'Invoice', 'Calendar', NULL, NULL),
(239, 'Contacts', 'Calendar', NULL, NULL),
(774, 'Invoice', 'Potentials', NULL, NULL),
(592, 'ModComments', 'Invoice', NULL, NULL),
(592, 'ModComments', 'Quotes', NULL, NULL),
(592, 'ModComments', 'PurchaseOrder', NULL, NULL),
(592, 'ModComments', 'SalesOrder', NULL, NULL),
(849, 'Project', 'Potentials', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_field_seq`
--

CREATE TABLE `vtiger_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_field_seq`
--

INSERT INTO `vtiger_field_seq` (`id`) VALUES
(851);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_freetagged_objects`
--

CREATE TABLE `vtiger_freetagged_objects` (
  `tag_id` int(20) NOT NULL DEFAULT 0,
  `tagger_id` int(20) NOT NULL DEFAULT 0,
  `object_id` int(20) NOT NULL DEFAULT 0,
  `tagged_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `module` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_freetagged_objects`
--

INSERT INTO `vtiger_freetagged_objects` (`tag_id`, `tagger_id`, `object_id`, `tagged_on`, `module`) VALUES
(3, 1, 9, '2021-01-21 02:28:29', 'Campaigns'),
(3, 9, 7, '2021-01-21 10:57:17', 'Products');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_freetags`
--

CREATE TABLE `vtiger_freetags` (
  `id` int(19) NOT NULL,
  `tag` varchar(50) NOT NULL DEFAULT '',
  `raw_tag` varchar(50) NOT NULL DEFAULT '',
  `visibility` varchar(100) NOT NULL DEFAULT 'PRIVATE',
  `owner` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_freetags`
--

INSERT INTO `vtiger_freetags` (`id`, `tag`, `raw_tag`, `visibility`, `owner`) VALUES
(2, 'Sẽ thành công', 'Sẽ thành công', 'private', 1),
(3, 'Nước ngọt', 'Nước ngọt', 'private', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_freetags_seq`
--

CREATE TABLE `vtiger_freetags_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_freetags_seq`
--

INSERT INTO `vtiger_freetags_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_glacct`
--

CREATE TABLE `vtiger_glacct` (
  `glacctid` int(19) NOT NULL,
  `glacct` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_glacct`
--

INSERT INTO `vtiger_glacct` (`glacctid`, `glacct`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, '300-Sales-Software', 1, 51, 0, NULL),
(2, '301-Sales-Hardware', 1, 52, 1, NULL),
(3, '302-Rental-Income', 1, 53, 2, NULL),
(4, '303-Interest-Income', 1, 54, 3, NULL),
(5, '304-Sales-Software-Support', 1, 55, 4, NULL),
(6, '305-Sales Other', 1, 56, 5, NULL),
(7, '306-Internet Sales', 1, 57, 6, NULL),
(8, '307-Service-Hardware Labor', 1, 58, 7, NULL),
(9, '308-Sales-Books', 1, 59, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_glacct_seq`
--

CREATE TABLE `vtiger_glacct_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_glacct_seq`
--

INSERT INTO `vtiger_glacct_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_google_event_calendar_mapping`
--

CREATE TABLE `vtiger_google_event_calendar_mapping` (
  `event_id` varchar(255) DEFAULT NULL,
  `calendar_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_google_oauth2`
--

CREATE TABLE `vtiger_google_oauth2` (
  `service` varchar(20) DEFAULT NULL,
  `access_token` varchar(500) DEFAULT NULL,
  `refresh_token` varchar(500) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_google_sync_fieldmapping`
--

CREATE TABLE `vtiger_google_sync_fieldmapping` (
  `vtiger_field` varchar(255) DEFAULT NULL,
  `google_field` varchar(255) DEFAULT NULL,
  `google_field_type` varchar(255) DEFAULT NULL,
  `google_custom_label` varchar(255) DEFAULT NULL,
  `user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_google_sync_settings`
--

CREATE TABLE `vtiger_google_sync_settings` (
  `user` int(11) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `clientgroup` varchar(255) DEFAULT NULL,
  `direction` varchar(50) DEFAULT NULL,
  `enabled` tinyint(3) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_group2grouprel`
--

CREATE TABLE `vtiger_group2grouprel` (
  `groupid` int(19) NOT NULL,
  `containsgroupid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_group2role`
--

CREATE TABLE `vtiger_group2role` (
  `groupid` int(19) NOT NULL,
  `roleid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_group2role`
--

INSERT INTO `vtiger_group2role` (`groupid`, `roleid`) VALUES
(2, 'H4'),
(3, 'H2'),
(4, 'H3');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_group2rs`
--

CREATE TABLE `vtiger_group2rs` (
  `groupid` int(19) NOT NULL,
  `roleandsubid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_group2rs`
--

INSERT INTO `vtiger_group2rs` (`groupid`, `roleandsubid`) VALUES
(2, 'H5'),
(3, 'H3'),
(4, 'H3');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_groups`
--

CREATE TABLE `vtiger_groups` (
  `groupid` int(19) NOT NULL,
  `groupname` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_groups`
--

INSERT INTO `vtiger_groups` (`groupid`, `groupname`, `description`) VALUES
(2, 'Team Selling', 'Nhóm liên quan đến bán hàng'),
(3, 'Marketing Group', 'Nhóm liên quan đến các hoạt động marketing'),
(4, 'Support Group', 'Nhóm liên quan đến việc hỗ trợ, chăm sóc khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homedashbd`
--

CREATE TABLE `vtiger_homedashbd` (
  `stuffid` int(19) NOT NULL DEFAULT 0,
  `dashbdname` varchar(100) DEFAULT NULL,
  `dashbdtype` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homedefault`
--

CREATE TABLE `vtiger_homedefault` (
  `stuffid` int(19) NOT NULL DEFAULT 0,
  `hometype` varchar(30) NOT NULL,
  `maxentries` int(19) DEFAULT NULL,
  `setype` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_homedefault`
--

INSERT INTO `vtiger_homedefault` (`stuffid`, `hometype`, `maxentries`, `setype`) VALUES
(1, 'ALVT', 5, 'Accounts'),
(2, 'HDB', 5, 'Dashboard'),
(3, 'PLVT', 5, 'Potentials'),
(4, 'QLTQ', 5, 'Quotes'),
(5, 'CVLVT', 5, 'NULL'),
(6, 'HLT', 5, 'HelpDesk'),
(7, 'UA', 5, 'Calendar'),
(8, 'GRT', 5, 'NULL'),
(9, 'OLTSO', 5, 'SalesOrder'),
(10, 'ILTI', 5, 'Invoice'),
(11, 'MNL', 5, 'Leads'),
(12, 'OLTPO', 5, 'PurchaseOrder'),
(13, 'PA', 5, 'Calendar'),
(14, 'LTFAQ', 5, 'Faq'),
(31, 'ALVT', 5, 'Accounts'),
(32, 'HDB', 5, 'Dashboard'),
(33, 'PLVT', 5, 'Potentials'),
(34, 'QLTQ', 5, 'Quotes'),
(35, 'CVLVT', 5, 'NULL'),
(36, 'HLT', 5, 'HelpDesk'),
(37, 'UA', 5, 'Calendar'),
(38, 'GRT', 5, 'NULL'),
(39, 'OLTSO', 5, 'SalesOrder'),
(40, 'ILTI', 5, 'Invoice'),
(41, 'MNL', 5, 'Leads'),
(42, 'OLTPO', 5, 'PurchaseOrder'),
(43, 'PA', 5, 'Calendar'),
(44, 'LTFAQ', 5, 'Faq'),
(46, 'ALVT', 5, 'Accounts'),
(47, 'HDB', 5, 'Dashboard'),
(48, 'PLVT', 5, 'Potentials'),
(49, 'QLTQ', 5, 'Quotes'),
(50, 'CVLVT', 5, 'NULL'),
(51, 'HLT', 5, 'HelpDesk'),
(52, 'UA', 5, 'Calendar'),
(53, 'GRT', 5, 'NULL'),
(54, 'OLTSO', 5, 'SalesOrder'),
(55, 'ILTI', 5, 'Invoice'),
(56, 'MNL', 5, 'Leads'),
(57, 'OLTPO', 5, 'PurchaseOrder'),
(58, 'PA', 5, 'Calendar'),
(59, 'LTFAQ', 5, 'Faq'),
(61, 'ALVT', 5, 'Accounts'),
(62, 'HDB', 5, 'Dashboard'),
(63, 'PLVT', 5, 'Potentials'),
(64, 'QLTQ', 5, 'Quotes'),
(65, 'CVLVT', 5, 'NULL'),
(66, 'HLT', 5, 'HelpDesk'),
(67, 'UA', 5, 'Calendar'),
(68, 'GRT', 5, 'NULL'),
(69, 'OLTSO', 5, 'SalesOrder'),
(70, 'ILTI', 5, 'Invoice'),
(71, 'MNL', 5, 'Leads'),
(72, 'OLTPO', 5, 'PurchaseOrder'),
(73, 'PA', 5, 'Calendar'),
(74, 'LTFAQ', 5, 'Faq'),
(76, 'ALVT', 5, 'Accounts'),
(77, 'HDB', 5, 'Dashboard'),
(78, 'PLVT', 5, 'Potentials'),
(79, 'QLTQ', 5, 'Quotes'),
(80, 'CVLVT', 5, 'NULL'),
(81, 'HLT', 5, 'HelpDesk'),
(82, 'UA', 5, 'Calendar'),
(83, 'GRT', 5, 'NULL'),
(84, 'OLTSO', 5, 'SalesOrder'),
(85, 'ILTI', 5, 'Invoice'),
(86, 'MNL', 5, 'Leads'),
(87, 'OLTPO', 5, 'PurchaseOrder'),
(88, 'PA', 5, 'Calendar'),
(89, 'LTFAQ', 5, 'Faq'),
(91, 'ALVT', 5, 'Accounts'),
(92, 'HDB', 5, 'Dashboard'),
(93, 'PLVT', 5, 'Potentials'),
(94, 'QLTQ', 5, 'Quotes'),
(95, 'CVLVT', 5, 'NULL'),
(96, 'HLT', 5, 'HelpDesk'),
(97, 'UA', 5, 'Calendar'),
(98, 'GRT', 5, 'NULL'),
(99, 'OLTSO', 5, 'SalesOrder'),
(100, 'ILTI', 5, 'Invoice'),
(101, 'MNL', 5, 'Leads'),
(102, 'OLTPO', 5, 'PurchaseOrder'),
(103, 'PA', 5, 'Calendar'),
(104, 'LTFAQ', 5, 'Faq'),
(106, 'ALVT', 5, 'Accounts'),
(107, 'HDB', 5, 'Dashboard'),
(108, 'PLVT', 5, 'Potentials'),
(109, 'QLTQ', 5, 'Quotes'),
(110, 'CVLVT', 5, 'NULL'),
(111, 'HLT', 5, 'HelpDesk'),
(112, 'UA', 5, 'Calendar'),
(113, 'GRT', 5, 'NULL'),
(114, 'OLTSO', 5, 'SalesOrder'),
(115, 'ILTI', 5, 'Invoice'),
(116, 'MNL', 5, 'Leads'),
(117, 'OLTPO', 5, 'PurchaseOrder'),
(118, 'PA', 5, 'Calendar'),
(119, 'LTFAQ', 5, 'Faq');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homemodule`
--

CREATE TABLE `vtiger_homemodule` (
  `stuffid` int(19) NOT NULL,
  `modulename` varchar(100) DEFAULT NULL,
  `maxentries` int(19) NOT NULL,
  `customviewid` int(19) NOT NULL,
  `setype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homemoduleflds`
--

CREATE TABLE `vtiger_homemoduleflds` (
  `stuffid` int(19) DEFAULT NULL,
  `fieldname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homereportchart`
--

CREATE TABLE `vtiger_homereportchart` (
  `stuffid` int(11) NOT NULL,
  `reportid` int(19) DEFAULT NULL,
  `reportcharttype` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homerss`
--

CREATE TABLE `vtiger_homerss` (
  `stuffid` int(19) NOT NULL DEFAULT 0,
  `url` varchar(100) DEFAULT NULL,
  `maxentries` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homestuff`
--

CREATE TABLE `vtiger_homestuff` (
  `stuffid` int(19) NOT NULL DEFAULT 0,
  `stuffsequence` int(19) NOT NULL DEFAULT 0,
  `stufftype` varchar(100) DEFAULT NULL,
  `userid` int(19) NOT NULL,
  `visible` int(10) NOT NULL DEFAULT 0,
  `stufftitle` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_homestuff`
--

INSERT INTO `vtiger_homestuff` (`stuffid`, `stuffsequence`, `stufftype`, `userid`, `visible`, `stufftitle`) VALUES
(1, 1, 'Default', 1, 1, 'Top Accounts'),
(2, 2, 'Default', 1, 1, 'Home Page Dashboard'),
(3, 3, 'Default', 1, 1, 'Top Potentials'),
(4, 4, 'Default', 1, 1, 'Top Quotes'),
(5, 5, 'Default', 1, 1, 'Key Metrics'),
(6, 6, 'Default', 1, 1, 'Top Trouble Tickets'),
(7, 7, 'Default', 1, 1, 'Upcoming Activities'),
(8, 8, 'Default', 1, 1, 'My Group Allocation'),
(9, 9, 'Default', 1, 1, 'Top Sales Orders'),
(10, 10, 'Default', 1, 1, 'Top Invoices'),
(11, 11, 'Default', 1, 1, 'My New Leads'),
(12, 12, 'Default', 1, 1, 'Top Purchase Orders'),
(13, 13, 'Default', 1, 1, 'Pending Activities'),
(14, 14, 'Default', 1, 1, 'My Recent FAQs'),
(15, 15, 'Tag Cloud', 1, 1, 'Tag Cloud'),
(31, 1, 'Default', 6, 1, 'Top Accounts'),
(32, 2, 'Default', 6, 1, 'Home Page Dashboard'),
(33, 3, 'Default', 6, 1, 'Top Potentials'),
(34, 4, 'Default', 6, 1, 'Top Quotes'),
(35, 5, 'Default', 6, 1, 'Key Metrics'),
(36, 6, 'Default', 6, 1, 'Top Trouble Tickets'),
(37, 7, 'Default', 6, 1, 'Upcoming Activities'),
(38, 8, 'Default', 6, 1, 'My Group Allocation'),
(39, 9, 'Default', 6, 1, 'Top Sales Orders'),
(40, 10, 'Default', 6, 1, 'Top Invoices'),
(41, 11, 'Default', 6, 1, 'My New Leads'),
(42, 12, 'Default', 6, 1, 'Top Purchase Orders'),
(43, 13, 'Default', 6, 1, 'Pending Activities'),
(44, 14, 'Default', 6, 1, 'My Recent FAQs'),
(45, 15, 'Tag Cloud', 6, 1, 'Tag Cloud'),
(46, 1, 'Default', 7, 1, 'Top Accounts'),
(47, 2, 'Default', 7, 1, 'Home Page Dashboard'),
(48, 3, 'Default', 7, 0, 'Top Potentials'),
(49, 4, 'Default', 7, 1, 'Top Quotes'),
(50, 5, 'Default', 7, 0, 'Key Metrics'),
(51, 6, 'Default', 7, 1, 'Top Trouble Tickets'),
(52, 7, 'Default', 7, 0, 'Upcoming Activities'),
(53, 8, 'Default', 7, 1, 'My Group Allocation'),
(54, 9, 'Default', 7, 1, 'Top Sales Orders'),
(55, 10, 'Default', 7, 1, 'Top Invoices'),
(56, 11, 'Default', 7, 1, 'My New Leads'),
(57, 12, 'Default', 7, 1, 'Top Purchase Orders'),
(58, 13, 'Default', 7, 1, 'Pending Activities'),
(59, 14, 'Default', 7, 1, 'My Recent FAQs'),
(60, 15, 'Tag Cloud', 7, 1, 'Tag Cloud'),
(61, 1, 'Default', 8, 1, 'Top Accounts'),
(62, 2, 'Default', 8, 1, 'Home Page Dashboard'),
(63, 3, 'Default', 8, 1, 'Top Potentials'),
(64, 4, 'Default', 8, 1, 'Top Quotes'),
(65, 5, 'Default', 8, 1, 'Key Metrics'),
(66, 6, 'Default', 8, 1, 'Top Trouble Tickets'),
(67, 7, 'Default', 8, 1, 'Upcoming Activities'),
(68, 8, 'Default', 8, 1, 'My Group Allocation'),
(69, 9, 'Default', 8, 1, 'Top Sales Orders'),
(70, 10, 'Default', 8, 1, 'Top Invoices'),
(71, 11, 'Default', 8, 1, 'My New Leads'),
(72, 12, 'Default', 8, 1, 'Top Purchase Orders'),
(73, 13, 'Default', 8, 1, 'Pending Activities'),
(74, 14, 'Default', 8, 1, 'My Recent FAQs'),
(75, 15, 'Tag Cloud', 8, 0, 'Tag Cloud'),
(76, 1, 'Default', 9, 1, 'Top Accounts'),
(77, 2, 'Default', 9, 1, 'Home Page Dashboard'),
(78, 3, 'Default', 9, 1, 'Top Potentials'),
(79, 4, 'Default', 9, 1, 'Top Quotes'),
(80, 5, 'Default', 9, 1, 'Key Metrics'),
(81, 6, 'Default', 9, 1, 'Top Trouble Tickets'),
(82, 7, 'Default', 9, 1, 'Upcoming Activities'),
(83, 8, 'Default', 9, 1, 'My Group Allocation'),
(84, 9, 'Default', 9, 1, 'Top Sales Orders'),
(85, 10, 'Default', 9, 1, 'Top Invoices'),
(86, 11, 'Default', 9, 1, 'My New Leads'),
(87, 12, 'Default', 9, 1, 'Top Purchase Orders'),
(88, 13, 'Default', 9, 1, 'Pending Activities'),
(89, 14, 'Default', 9, 1, 'My Recent FAQs'),
(90, 15, 'Tag Cloud', 9, 0, 'Tag Cloud'),
(91, 1, 'Default', 10, 1, 'Top Accounts'),
(92, 2, 'Default', 10, 1, 'Home Page Dashboard'),
(93, 3, 'Default', 10, 1, 'Top Potentials'),
(94, 4, 'Default', 10, 1, 'Top Quotes'),
(95, 5, 'Default', 10, 1, 'Key Metrics'),
(96, 6, 'Default', 10, 1, 'Top Trouble Tickets'),
(97, 7, 'Default', 10, 1, 'Upcoming Activities'),
(98, 8, 'Default', 10, 1, 'My Group Allocation'),
(99, 9, 'Default', 10, 1, 'Top Sales Orders'),
(100, 10, 'Default', 10, 1, 'Top Invoices'),
(101, 11, 'Default', 10, 1, 'My New Leads'),
(102, 12, 'Default', 10, 1, 'Top Purchase Orders'),
(103, 13, 'Default', 10, 1, 'Pending Activities'),
(104, 14, 'Default', 10, 1, 'My Recent FAQs'),
(105, 15, 'Tag Cloud', 10, 0, 'Tag Cloud'),
(106, 1, 'Default', 11, 1, 'Top Accounts'),
(107, 2, 'Default', 11, 1, 'Home Page Dashboard'),
(108, 3, 'Default', 11, 1, 'Top Potentials'),
(109, 4, 'Default', 11, 1, 'Top Quotes'),
(110, 5, 'Default', 11, 1, 'Key Metrics'),
(111, 6, 'Default', 11, 1, 'Top Trouble Tickets'),
(112, 7, 'Default', 11, 1, 'Upcoming Activities'),
(113, 8, 'Default', 11, 1, 'My Group Allocation'),
(114, 9, 'Default', 11, 1, 'Top Sales Orders'),
(115, 10, 'Default', 11, 1, 'Top Invoices'),
(116, 11, 'Default', 11, 1, 'My New Leads'),
(117, 12, 'Default', 11, 1, 'Top Purchase Orders'),
(118, 13, 'Default', 11, 1, 'Pending Activities'),
(119, 14, 'Default', 11, 1, 'My Recent FAQs'),
(120, 15, 'Tag Cloud', 11, 0, 'Tag Cloud');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homestuff_seq`
--

CREATE TABLE `vtiger_homestuff_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_homestuff_seq`
--

INSERT INTO `vtiger_homestuff_seq` (`id`) VALUES
(120);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_home_layout`
--

CREATE TABLE `vtiger_home_layout` (
  `userid` int(19) NOT NULL,
  `layout` int(19) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_hour_format`
--

CREATE TABLE `vtiger_hour_format` (
  `hour_formatid` int(11) NOT NULL,
  `hour_format` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_hour_format`
--

INSERT INTO `vtiger_hour_format` (`hour_formatid`, `hour_format`, `sortorderid`, `presence`) VALUES
(1, '12', 0, 1),
(2, '24', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_hour_format_seq`
--

CREATE TABLE `vtiger_hour_format_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_hour_format_seq`
--

INSERT INTO `vtiger_hour_format_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_locks`
--

CREATE TABLE `vtiger_import_locks` (
  `vtiger_import_lock_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `importid` int(11) NOT NULL,
  `locked_since` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_maps`
--

CREATE TABLE `vtiger_import_maps` (
  `id` int(19) NOT NULL,
  `name` varchar(36) NOT NULL,
  `module` varchar(36) NOT NULL,
  `content` longblob DEFAULT NULL,
  `has_header` int(1) NOT NULL DEFAULT 1,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `date_entered` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` varchar(36) DEFAULT NULL,
  `is_published` varchar(3) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_queue`
--

CREATE TABLE `vtiger_import_queue` (
  `importid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `field_mapping` text DEFAULT NULL,
  `default_values` text DEFAULT NULL,
  `merge_type` int(11) DEFAULT NULL,
  `merge_fields` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `lineitem_currency_id` int(5) DEFAULT NULL,
  `paging` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_industry`
--

CREATE TABLE `vtiger_industry` (
  `industryid` int(19) NOT NULL,
  `industry` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_industry`
--

INSERT INTO `vtiger_industry` (`industryid`, `industry`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Apparel', 1, 61, 1, NULL),
(3, 'Banking', 1, 62, 2, NULL),
(4, 'Biotechnology', 1, 63, 3, NULL),
(5, 'Chemicals', 1, 64, 4, NULL),
(6, 'Communications', 1, 65, 5, NULL),
(7, 'Construction', 1, 66, 6, NULL),
(8, 'Consulting', 1, 67, 7, NULL),
(9, 'Education', 1, 68, 8, NULL),
(10, 'Electronics', 1, 69, 9, NULL),
(11, 'Energy', 1, 70, 10, NULL),
(12, 'Engineering', 1, 71, 11, NULL),
(13, 'Entertainment', 1, 72, 12, NULL),
(14, 'Environmental', 1, 73, 13, NULL),
(15, 'Finance', 1, 74, 14, NULL),
(16, 'Food & Beverage', 1, 75, 15, NULL),
(17, 'Government', 1, 76, 16, NULL),
(18, 'Healthcare', 1, 77, 17, NULL),
(19, 'Hospitality', 1, 78, 18, NULL),
(20, 'Insurance', 1, 79, 19, NULL),
(21, 'Machinery', 1, 80, 20, NULL),
(22, 'Manufacturing', 1, 81, 21, NULL),
(23, 'Media', 1, 82, 22, NULL),
(24, 'Not For Profit', 1, 83, 23, NULL),
(25, 'Recreation', 1, 84, 24, NULL),
(26, 'Retail', 1, 85, 25, NULL),
(27, 'Shipping', 1, 86, 26, NULL),
(28, 'Technology', 1, 87, 27, NULL),
(29, 'Telecommunications', 1, 88, 28, NULL),
(30, 'Transportation', 1, 89, 29, NULL),
(31, 'Utilities', 1, 90, 30, NULL),
(32, 'Other', 1, 91, 31, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_industry_seq`
--

CREATE TABLE `vtiger_industry_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_industry_seq`
--

INSERT INTO `vtiger_industry_seq` (`id`) VALUES
(32);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorycharges`
--

CREATE TABLE `vtiger_inventorycharges` (
  `chargeid` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `format` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `value` decimal(12,5) DEFAULT NULL,
  `regions` text DEFAULT NULL,
  `istaxable` int(1) NOT NULL DEFAULT 1,
  `taxes` varchar(1024) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_inventorycharges`
--

INSERT INTO `vtiger_inventorycharges` (`chargeid`, `name`, `format`, `type`, `value`, `regions`, `istaxable`, `taxes`, `deleted`) VALUES
(1, 'Shipping & Handling', 'Flat', 'Fixed', NULL, '[]', 1, '[\"1\",\"2\",\"3\"]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorychargesrel`
--

CREATE TABLE `vtiger_inventorychargesrel` (
  `recordid` int(19) NOT NULL,
  `charges` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_inventorychargesrel`
--

INSERT INTO `vtiger_inventorychargesrel` (`recordid`, `charges`) VALUES
(15, '{\"1\":{\"value\":\"0\",\"taxes\":{\"1\":\"4.500\",\"2\":\"10.000\",\"3\":\"12.500\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorynotification`
--

CREATE TABLE `vtiger_inventorynotification` (
  `notificationid` int(19) NOT NULL,
  `notificationname` varchar(200) DEFAULT NULL,
  `notificationsubject` varchar(200) DEFAULT NULL,
  `notificationbody` text DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_inventorynotification`
--

INSERT INTO `vtiger_inventorynotification` (`notificationid`, `notificationname`, `notificationsubject`, `notificationbody`, `label`, `status`) VALUES
(1, 'InvoiceNotification', '{PRODUCTNAME} Stock Level is Low', 'Dear {HANDLER},\n\nThe current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}. Kindly procure required number of units as the stock level is below reorder level {REORDERLEVELVALUE}.\n\nPlease treat this information as Urgent as the invoice is already sent  to the customer.\n\nSeverity: Critical\n\nThanks,\n{CURRENTUSER} ', 'InvoiceNotificationDescription', NULL),
(2, 'QuoteNotification', 'Quote given for {PRODUCTNAME}', 'Dear {HANDLER},\n\nQuote is generated for {QUOTEQUANTITY} units of {PRODUCTNAME}. The current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}.\n\nSeverity: Minor\n\nThanks,\n{CURRENTUSER} ', 'QuoteNotificationDescription', NULL),
(3, 'SalesOrderNotification', 'Sales Order generated for {PRODUCTNAME}', 'Dear {HANDLER},\n\nSalesOrder is generated for {SOQUANTITY} units of {PRODUCTNAME}. The current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}.\n\nPlease treat this information  with priority as the sales order is already generated.\n\nSeverity: Major\n\nThanks,\n{CURRENTUSER} ', 'SalesOrderNotificationDescription', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorynotification_seq`
--

CREATE TABLE `vtiger_inventorynotification_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_inventorynotification_seq`
--

INSERT INTO `vtiger_inventorynotification_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventoryproductrel`
--

CREATE TABLE `vtiger_inventoryproductrel` (
  `id` int(19) DEFAULT NULL,
  `productid` int(19) DEFAULT NULL,
  `sequence_no` int(4) DEFAULT NULL,
  `quantity` decimal(25,3) DEFAULT NULL,
  `listprice` decimal(27,8) DEFAULT NULL,
  `discount_percent` decimal(7,3) DEFAULT NULL,
  `discount_amount` decimal(27,8) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `incrementondel` int(11) NOT NULL DEFAULT 0,
  `lineitem_id` int(11) NOT NULL,
  `tax1` decimal(7,3) DEFAULT NULL,
  `tax2` decimal(7,3) DEFAULT NULL,
  `tax3` decimal(7,3) DEFAULT NULL,
  `image` varchar(2) DEFAULT NULL,
  `purchase_cost` decimal(27,8) DEFAULT NULL,
  `margin` decimal(27,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_inventoryproductrel`
--

INSERT INTO `vtiger_inventoryproductrel` (`id`, `productid`, `sequence_no`, `quantity`, `listprice`, `discount_percent`, `discount_amount`, `comment`, `description`, `incrementondel`, `lineitem_id`, `tax1`, `tax2`, `tax3`, `image`, `purchase_cost`, `margin`) VALUES
(15, 8, 1, '5.000', '260000.00000000', NULL, NULL, 'Coca-cola Plus được chế biến từ các thành phần Nước bão hòa C02, chất xơ, màu tự nhiên, chất điều chỉnh độ Acid, chất tạo ngọt tổng hợp, chất bảo quản, hỗn hợp hương tự nhiên, Caffeine.', NULL, 0, 1, '4.500', '10.000', '12.500', NULL, '0.00000000', '1300000.00000000');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventoryproductrel_seq`
--

CREATE TABLE `vtiger_inventoryproductrel_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_inventoryproductrel_seq`
--

INSERT INTO `vtiger_inventoryproductrel_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventoryshippingrel`
--

CREATE TABLE `vtiger_inventoryshippingrel` (
  `id` int(19) DEFAULT NULL,
  `shtax1` decimal(7,3) DEFAULT NULL,
  `shtax2` decimal(7,3) DEFAULT NULL,
  `shtax3` decimal(7,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorysubproductrel`
--

CREATE TABLE `vtiger_inventorysubproductrel` (
  `id` int(19) NOT NULL,
  `sequence_no` int(10) NOT NULL,
  `productid` int(19) NOT NULL,
  `quantity` int(19) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorytaxinfo`
--

CREATE TABLE `vtiger_inventorytaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) DEFAULT NULL,
  `taxlabel` varchar(50) DEFAULT NULL,
  `percentage` decimal(7,3) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `compoundon` varchar(400) DEFAULT NULL,
  `regions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_inventorytaxinfo`
--

INSERT INTO `vtiger_inventorytaxinfo` (`taxid`, `taxname`, `taxlabel`, `percentage`, `deleted`, `method`, `type`, `compoundon`, `regions`) VALUES
(1, 'tax1', 'VAT', '4.500', 0, 'Simple', 'Fixed', '[]', '[]'),
(2, 'tax2', 'Sales', '10.000', 0, 'Simple', 'Fixed', '[]', '[]'),
(3, 'tax3', 'Service', '12.500', 0, 'Simple', 'Fixed', '[]', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorytaxinfo_seq`
--

CREATE TABLE `vtiger_inventorytaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_inventorytaxinfo_seq`
--

INSERT INTO `vtiger_inventorytaxinfo_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventory_tandc`
--

CREATE TABLE `vtiger_inventory_tandc` (
  `id` int(19) NOT NULL,
  `type` varchar(30) NOT NULL,
  `tandc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_inventory_tandc`
--

INSERT INTO `vtiger_inventory_tandc` (`id`, `type`, `tandc`) VALUES
(2, 'Invoice', '\n - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.'),
(3, 'Quotes', '\n - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.'),
(4, 'PurchaseOrder', '\n - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.'),
(5, 'SalesOrder', '\n - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventory_tandc_seq`
--

CREATE TABLE `vtiger_inventory_tandc_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_inventory_tandc_seq`
--

INSERT INTO `vtiger_inventory_tandc_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invitees`
--

CREATE TABLE `vtiger_invitees` (
  `activityid` int(19) NOT NULL,
  `inviteeid` int(19) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoice`
--

CREATE TABLE `vtiger_invoice` (
  `invoiceid` int(19) NOT NULL DEFAULT 0,
  `subject` varchar(100) DEFAULT NULL,
  `salesorderid` int(19) DEFAULT NULL,
  `customerno` varchar(100) DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `invoicedate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `invoiceterms` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `salescommission` decimal(25,3) DEFAULT NULL,
  `exciseduty` decimal(25,3) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `shipping` varchar(100) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `terms_conditions` text DEFAULT NULL,
  `purchaseorder` varchar(200) DEFAULT NULL,
  `invoicestatus` varchar(200) DEFAULT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT 1.000,
  `compound_taxes_info` text DEFAULT NULL,
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `received` decimal(25,8) DEFAULT NULL,
  `balance` decimal(25,8) DEFAULT NULL,
  `s_h_percent` decimal(25,8) DEFAULT NULL,
  `potential_id` varchar(100) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `region_id` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicebillads`
--

CREATE TABLE `vtiger_invoicebillads` (
  `invoicebilladdressid` int(19) NOT NULL DEFAULT 0,
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicecf`
--

CREATE TABLE `vtiger_invoicecf` (
  `invoiceid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoiceshipads`
--

CREATE TABLE `vtiger_invoiceshipads` (
  `invoiceshipaddressid` int(19) NOT NULL DEFAULT 0,
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicestatus`
--

CREATE TABLE `vtiger_invoicestatus` (
  `invoicestatusid` int(19) NOT NULL,
  `invoicestatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_invoicestatus`
--

INSERT INTO `vtiger_invoicestatus` (`invoicestatusid`, `invoicestatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'AutoCreated', 0, 92, 0, NULL),
(2, 'Created', 0, 93, 1, NULL),
(3, 'Approved', 0, 94, 2, NULL),
(4, 'Sent', 0, 95, 3, NULL),
(5, 'Credit Invoice', 0, 96, 4, NULL),
(6, 'Paid', 0, 97, 5, NULL),
(7, 'Cancel', 1, 288, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicestatushistory`
--

CREATE TABLE `vtiger_invoicestatushistory` (
  `historyid` int(19) NOT NULL,
  `invoiceid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `invoicestatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicestatus_seq`
--

CREATE TABLE `vtiger_invoicestatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_invoicestatus_seq`
--

INSERT INTO `vtiger_invoicestatus_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoice_recurring_info`
--

CREATE TABLE `vtiger_invoice_recurring_info` (
  `salesorderid` int(11) NOT NULL,
  `recurring_frequency` varchar(200) DEFAULT NULL,
  `start_period` date DEFAULT NULL,
  `end_period` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `payment_duration` varchar(200) DEFAULT NULL,
  `invoice_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_language`
--

CREATE TABLE `vtiger_language` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `prefix` varchar(10) DEFAULT NULL,
  `label` varchar(30) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `isdefault` int(1) DEFAULT NULL,
  `active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_language`
--

INSERT INTO `vtiger_language` (`id`, `name`, `prefix`, `label`, `lastupdated`, `sequence`, `isdefault`, `active`) VALUES
(1, 'English', 'en_us', 'US English', '2020-11-22 11:19:52', NULL, 1, 1),
(2, 'Pack de langue français', 'fr_fr', 'Pack de langue français', '2020-11-22 11:20:11', NULL, 0, 1),
(3, 'Arabic', 'ar_ae', 'Arabic', '2020-11-22 11:20:17', NULL, 0, 1),
(4, 'Dutch', 'nl_nl', 'NL-Dutch', '2020-11-22 11:20:05', NULL, 0, 1),
(5, 'British English', 'en_gb', 'British English', '2020-11-22 11:20:05', NULL, 0, 1),
(6, 'Swedish', 'sv_se', 'Swedish', '2020-11-22 11:20:17', NULL, 0, 1),
(7, 'Brazilian', 'pt_br', 'PT Brasil', '2020-11-22 11:20:11', NULL, 0, 1),
(8, 'Deutsch', 'de_de', 'DE Deutsch', '2020-11-22 11:20:09', NULL, 0, 1),
(9, 'Język Polski', 'pl_pl', 'Język Polski', '2020-11-22 11:20:11', NULL, 0, 1),
(10, 'Turkce', 'tr_tr', 'Turkce Dil Paketi', '2020-11-22 11:20:09', NULL, 0, 1),
(11, 'Hungarian', 'hu_hu', 'HU Magyar', '2020-11-22 11:20:10', NULL, 0, 1),
(12, 'Italian', 'it_it', 'IT Italian', '2020-11-22 11:20:10', NULL, 0, 1),
(13, 'Russian', 'ru_ru', 'Russian', '2020-11-22 11:20:10', NULL, 0, 1),
(14, 'Mexican Spanish', 'es_mx', 'ES Mexico', '2020-11-22 11:20:10', NULL, 0, 1),
(15, 'Romana', 'ro_ro', 'Romana', '2020-11-22 11:20:11', NULL, 0, 1),
(16, 'Spanish', 'es_es', 'ES Spanish', '2020-11-22 11:20:10', NULL, 0, 1),
(17, 'Vietnamese', 'vn_vn', 'Tiếng Việt | Vietnamese', '2020-12-13 04:07:41', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_language_seq`
--

CREATE TABLE `vtiger_language_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_language_seq`
--

INSERT INTO `vtiger_language_seq` (`id`) VALUES
(17);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadaddress`
--

CREATE TABLE `vtiger_leadaddress` (
  `leadaddressid` int(19) NOT NULL DEFAULT 0,
  `city` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pobox` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `lane` varchar(250) DEFAULT NULL,
  `leadaddresstype` varchar(30) DEFAULT 'Billing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_leadaddress`
--

INSERT INTO `vtiger_leadaddress` (`leadaddressid`, `city`, `code`, `state`, `pobox`, `country`, `phone`, `mobile`, `fax`, `lane`, `leadaddresstype`) VALUES
(5, '', '', '', '', '', '0902203451', '', '', '', 'Billing'),
(10, '', '', '', '', '', '', '0909212345', '', '', 'Billing'),
(11, '', '', '', '', '', '', '', '', '', 'Billing'),
(24, '', '', '', '', '', '', '0973123321', '', '', 'Billing');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leaddetails`
--

CREATE TABLE `vtiger_leaddetails` (
  `leadid` int(19) NOT NULL,
  `lead_no` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `interest` varchar(50) DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `lastname` varchar(80) NOT NULL,
  `company` varchar(100) NOT NULL,
  `annualrevenue` decimal(25,8) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `campaign` varchar(30) DEFAULT NULL,
  `rating` varchar(200) DEFAULT NULL,
  `leadstatus` varchar(200) DEFAULT NULL,
  `leadsource` varchar(200) DEFAULT NULL,
  `converted` int(1) DEFAULT 0,
  `designation` varchar(50) DEFAULT 'SalesMan',
  `licencekeystatus` varchar(50) DEFAULT NULL,
  `space` varchar(250) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `priority` varchar(50) DEFAULT NULL,
  `demorequest` varchar(50) DEFAULT NULL,
  `partnercontact` varchar(50) DEFAULT NULL,
  `productversion` varchar(20) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `maildate` date DEFAULT NULL,
  `nextstepdate` date DEFAULT NULL,
  `fundingsituation` varchar(50) DEFAULT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `evaluationstatus` varchar(50) DEFAULT NULL,
  `transferdate` date DEFAULT NULL,
  `revenuetype` varchar(50) DEFAULT NULL,
  `noofemployees` int(50) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `assignleadchk` int(1) DEFAULT 0,
  `emailoptout` varchar(3) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_leaddetails`
--

INSERT INTO `vtiger_leaddetails` (`leadid`, `lead_no`, `email`, `interest`, `firstname`, `salutation`, `lastname`, `company`, `annualrevenue`, `industry`, `campaign`, `rating`, `leadstatus`, `leadsource`, `converted`, `designation`, `licencekeystatus`, `space`, `comments`, `priority`, `demorequest`, `partnercontact`, `productversion`, `product`, `maildate`, `nextstepdate`, `fundingsituation`, `purpose`, `evaluationstatus`, `transferdate`, `revenuetype`, `noofemployees`, `secondaryemail`, `assignleadchk`, `emailoptout`, `tags`) VALUES
(5, 'LEA1', '', NULL, 'Hòa', 'Mr.', 'Nguyễn', '', '0.00000000', '', NULL, 'Active', 'Contact in Future', '', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, '0', ''),
(10, 'LEA2', '', NULL, 'Lan', 'Ms.', 'Nguyễn', 'NT Shop', '0.00000000', '', NULL, '', '', 'Partner', 0, 'Shop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, '0', ''),
(11, 'LEA3', '', NULL, 'Lan', 'Ms.', 'Nguyễn', '', '0.00000000', '', NULL, '', '', '', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, '0', ''),
(24, 'LEA4', '', NULL, 'Hoa', 'Ms.', 'Trần', 'KH cá nhân', '0.00000000', '', NULL, 'Active', 'Cold', '', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadscf`
--

CREATE TABLE `vtiger_leadscf` (
  `leadid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_leadscf`
--

INSERT INTO `vtiger_leadscf` (`leadid`) VALUES
(5),
(10),
(11),
(24);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadsource`
--

CREATE TABLE `vtiger_leadsource` (
  `leadsourceid` int(19) NOT NULL,
  `leadsource` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_leadsource`
--

INSERT INTO `vtiger_leadsource` (`leadsourceid`, `leadsource`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Chào hàng qua điện thoại', 1, 99, 1, NULL),
(3, 'Existing Customer', 1, 100, 2, NULL),
(4, 'Self Generated', 1, 101, 3, NULL),
(5, 'Employee', 1, 102, 4, NULL),
(6, 'Partner', 1, 103, 5, NULL),
(7, 'Public Relations', 1, 104, 6, NULL),
(8, 'Direct Mail', 1, 105, 7, NULL),
(9, 'Conference', 1, 106, 8, NULL),
(10, 'Trade Show', 1, 107, 9, NULL),
(11, 'Web Site', 1, 108, 10, NULL),
(12, 'Word of mouth', 1, 109, 11, NULL),
(13, 'Other', 1, 110, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadsource_seq`
--

CREATE TABLE `vtiger_leadsource_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_leadsource_seq`
--

INSERT INTO `vtiger_leadsource_seq` (`id`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadstage`
--

CREATE TABLE `vtiger_leadstage` (
  `leadstageid` int(19) NOT NULL,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadstatus`
--

CREATE TABLE `vtiger_leadstatus` (
  `leadstatusid` int(19) NOT NULL,
  `leadstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_leadstatus`
--

INSERT INTO `vtiger_leadstatus` (`leadstatusid`, `leadstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Attempted to Contact', 1, 112, 1, NULL),
(3, 'Cold', 1, 113, 2, NULL),
(4, 'Contact in Future', 1, 114, 3, NULL),
(5, 'Contacted', 1, 115, 4, NULL),
(6, 'Hot', 1, 116, 5, NULL),
(7, 'Junk Lead', 1, 117, 6, NULL),
(8, 'Lost Lead', 1, 118, 7, NULL),
(9, 'Not Contacted', 1, 119, 8, NULL),
(10, 'Pre Qualified', 1, 120, 9, NULL),
(11, 'Qualified', 1, 121, 10, NULL),
(12, 'Warm', 1, 122, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadstatus_seq`
--

CREATE TABLE `vtiger_leadstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_leadstatus_seq`
--

INSERT INTO `vtiger_leadstatus_seq` (`id`) VALUES
(12);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadsubdetails`
--

CREATE TABLE `vtiger_leadsubdetails` (
  `leadsubscriptionid` int(19) NOT NULL DEFAULT 0,
  `website` varchar(255) DEFAULT NULL,
  `callornot` int(1) DEFAULT 0,
  `readornot` int(1) DEFAULT 0,
  `empct` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_leadsubdetails`
--

INSERT INTO `vtiger_leadsubdetails` (`leadsubscriptionid`, `website`, `callornot`, `readornot`, `empct`) VALUES
(5, '', 0, 0, 0),
(10, '', 0, 0, 0),
(11, '', 0, 0, 0),
(24, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_lead_view`
--

CREATE TABLE `vtiger_lead_view` (
  `lead_viewid` int(19) NOT NULL,
  `lead_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_lead_view`
--

INSERT INTO `vtiger_lead_view` (`lead_viewid`, `lead_view`, `sortorderid`, `presence`) VALUES
(1, 'Today', 0, 1),
(2, 'Last 2 Days', 1, 1),
(3, 'Last Week', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_lead_view_seq`
--

CREATE TABLE `vtiger_lead_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_lead_view_seq`
--

INSERT INTO `vtiger_lead_view_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_links`
--

CREATE TABLE `vtiger_links` (
  `linkid` int(11) NOT NULL,
  `tabid` int(11) DEFAULT NULL,
  `linktype` varchar(50) DEFAULT NULL,
  `linklabel` varchar(50) DEFAULT NULL,
  `linkurl` varchar(255) DEFAULT NULL,
  `linkicon` varchar(100) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `handler_path` varchar(128) DEFAULT NULL,
  `handler_class` varchar(50) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  `parent_link` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_links`
--

INSERT INTO `vtiger_links` (`linkid`, `tabid`, `linktype`, `linklabel`, `linkurl`, `linkicon`, `sequence`, `handler_path`, `handler_class`, `handler`, `parent_link`) VALUES
(2, 6, 'DETAILVIEW', 'LBL_SHOW_ACCOUNT_HIERARCHY', 'index.php?module=Accounts&action=AccountHierarchy&accountid=$RECORD$', '', 0, NULL, NULL, NULL, NULL),
(5, 0, 'HEADERSCRIPT', 'Incoming Calls', 'modules/PBXManager/resources/PBXManagerJS.js', '', 0, 'modules/PBXManager/PBXManager.php', 'PBXManager', 'checkLinkPermission', NULL),
(6, 7, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(7, 4, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(8, 6, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(9, 2, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(10, 38, 'HEADERSCRIPT', 'ModCommentsCommonHeaderScript', 'modules/ModComments/ModCommentsCommon.js', '', 0, NULL, NULL, NULL, NULL),
(11, 42, 'HEADERSCRIPT', 'SMSNotifierCommonJS', 'modules/SMSNotifier/SMSNotifierCommon.js', '', 0, NULL, NULL, NULL, NULL),
(12, 7, 'LISTVIEWBASIC', 'Send SMS', 'SMSNotifierCommon.displaySelectWizard(this, \'$MODULE$\');', '', 0, NULL, NULL, NULL, NULL),
(13, 7, 'DETAILVIEW', 'Send SMS', 'javascript:SMSNotifierCommon.displaySelectWizard_DetailView(\'$MODULE$\', \'$RECORD$\');', '', 0, NULL, NULL, NULL, NULL),
(14, 4, 'LISTVIEWBASIC', 'Send SMS', 'SMSNotifierCommon.displaySelectWizard(this, \'$MODULE$\');', '', 0, NULL, NULL, NULL, NULL),
(15, 4, 'DETAILVIEW', 'Send SMS', 'javascript:SMSNotifierCommon.displaySelectWizard_DetailView(\'$MODULE$\', \'$RECORD$\');', '', 0, NULL, NULL, NULL, NULL),
(16, 6, 'LISTVIEWBASIC', 'Send SMS', 'SMSNotifierCommon.displaySelectWizard(this, \'$MODULE$\');', '', 0, NULL, NULL, NULL, NULL),
(17, 6, 'DETAILVIEW', 'Send SMS', 'javascript:SMSNotifierCommon.displaySelectWizard_DetailView(\'$MODULE$\', \'$RECORD$\');', '', 0, NULL, NULL, NULL, NULL),
(23, 4, 'DETAILVIEWSIDEBARWIDGET', 'Google Map', 'module=Google&view=Map&mode=showMap&viewtype=detail', '', 0, NULL, NULL, NULL, NULL),
(24, 7, 'DETAILVIEWSIDEBARWIDGET', 'Google Map', 'module=Google&view=Map&mode=showMap&viewtype=detail', '', 0, NULL, NULL, NULL, NULL),
(25, 6, 'DETAILVIEWSIDEBARWIDGET', 'Google Map', 'module=Google&view=Map&mode=showMap&viewtype=detail', '', 0, NULL, NULL, NULL, NULL),
(26, 4, 'LISTVIEWSIDEBARWIDGET', 'Google Contacts', 'module=Google&view=List&sourcemodule=Contacts', '', 0, NULL, NULL, NULL, NULL),
(27, 9, 'LISTVIEWSIDEBARWIDGET', 'Google Calendar', 'module=Google&view=List&sourcemodule=Calendar', '', 0, NULL, NULL, NULL, NULL),
(28, 49, 'HEADERSCRIPT', 'ExtensionStoreCommonHeaderScript', 'modules/ExtensionStore/ExtensionStore.js', '', 0, NULL, NULL, NULL, NULL),
(30, 44, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(31, 45, 'DETAILVIEWBASIC', 'Add Project Task', 'index.php?module=ProjectTask&action=EditView&projectid=$RECORD$&return_module=Project&return_action=DetailView&return_id=$RECORD$', '', 0, 'modules/ProjectTask/ProjectTask.php', 'ProjectTask', 'isLinkPermitted', NULL),
(33, 45, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(34, 2, 'DASHBOARDWIDGET', 'History', 'index.php?module=Potentials&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL, NULL),
(35, 2, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Potentials&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL, NULL),
(36, 2, 'DASHBOARDWIDGET', 'Funnel', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesStage', '', 3, NULL, NULL, NULL, NULL),
(37, 2, 'DASHBOARDWIDGET', 'Potentials by Stage', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesPerson', '', 4, NULL, NULL, NULL, NULL),
(38, 2, 'DASHBOARDWIDGET', 'Pipelined Amount', 'index.php?module=Potentials&view=ShowWidget&name=PipelinedAmountPerSalesPerson', '', 5, NULL, NULL, NULL, NULL),
(39, 2, 'DASHBOARDWIDGET', 'Total Revenue', 'index.php?module=Potentials&view=ShowWidget&name=TotalRevenuePerSalesPerson', '', 6, NULL, NULL, NULL, NULL),
(40, 2, 'DASHBOARDWIDGET', 'Top Potentials', 'index.php?module=Potentials&view=ShowWidget&name=TopPotentials', '', 7, NULL, NULL, NULL, NULL),
(41, 2, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Potentials&view=ShowWidget&name=OverdueActivities', '', 9, NULL, NULL, NULL, NULL),
(42, 6, 'DASHBOARDWIDGET', 'History', 'index.php?module=Accounts&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL, NULL),
(43, 6, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Accounts&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL, NULL),
(44, 6, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Accounts&view=ShowWidget&name=OverdueActivities', '', 3, NULL, NULL, NULL, NULL),
(45, 4, 'DASHBOARDWIDGET', 'History', 'index.php?module=Contacts&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL, NULL),
(46, 4, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Contacts&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL, NULL),
(47, 4, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Contacts&view=ShowWidget&name=OverdueActivities', '', 3, NULL, NULL, NULL, NULL),
(48, 7, 'DASHBOARDWIDGET', 'History', 'index.php?module=Leads&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL, NULL),
(49, 7, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Leads&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL, NULL),
(50, 7, 'DASHBOARDWIDGET', 'Leads by Status', 'index.php?module=Leads&view=ShowWidget&name=LeadsByStatus', '', 4, NULL, NULL, NULL, NULL),
(51, 7, 'DASHBOARDWIDGET', 'Leads by Source', 'index.php?module=Leads&view=ShowWidget&name=LeadsBySource', '', 5, NULL, NULL, NULL, NULL),
(52, 7, 'DASHBOARDWIDGET', 'Leads by Industry', 'index.php?module=Leads&view=ShowWidget&name=LeadsByIndustry', '', 6, NULL, NULL, NULL, NULL),
(53, 7, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Leads&view=ShowWidget&name=OverdueActivities', '', 7, NULL, NULL, NULL, NULL),
(54, 13, 'DASHBOARDWIDGET', 'Tickets by Status', 'index.php?module=HelpDesk&view=ShowWidget&name=TicketsByStatus', '', 1, NULL, NULL, NULL, NULL),
(55, 13, 'DASHBOARDWIDGET', 'Open Tickets', 'index.php?module=HelpDesk&view=ShowWidget&name=OpenTickets', '', 2, NULL, NULL, NULL, NULL),
(56, 3, 'DASHBOARDWIDGET', 'History', 'index.php?module=Home&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL, NULL),
(57, 3, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Home&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL, NULL),
(58, 3, 'DASHBOARDWIDGET', 'Funnel', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesStage', '', 3, NULL, NULL, NULL, NULL),
(59, 3, 'DASHBOARDWIDGET', 'Potentials by Stage', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesPerson', '', 4, NULL, NULL, NULL, NULL),
(60, 3, 'DASHBOARDWIDGET', 'Pipelined Amount', 'index.php?module=Potentials&view=ShowWidget&name=PipelinedAmountPerSalesPerson', '', 5, NULL, NULL, NULL, NULL),
(61, 3, 'DASHBOARDWIDGET', 'Total Revenue', 'index.php?module=Potentials&view=ShowWidget&name=TotalRevenuePerSalesPerson', '', 6, NULL, NULL, NULL, NULL),
(62, 3, 'DASHBOARDWIDGET', 'Top Potentials', 'index.php?module=Potentials&view=ShowWidget&name=TopPotentials', '', 7, NULL, NULL, NULL, NULL),
(63, 3, 'DASHBOARDWIDGET', 'Leads by Status', 'index.php?module=Leads&view=ShowWidget&name=LeadsByStatus', '', 10, NULL, NULL, NULL, NULL),
(64, 3, 'DASHBOARDWIDGET', 'Leads by Source', 'index.php?module=Leads&view=ShowWidget&name=LeadsBySource', '', 11, NULL, NULL, NULL, NULL),
(65, 3, 'DASHBOARDWIDGET', 'Leads by Industry', 'index.php?module=Leads&view=ShowWidget&name=LeadsByIndustry', '', 12, NULL, NULL, NULL, NULL),
(66, 3, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Home&view=ShowWidget&name=OverdueActivities', '', 13, NULL, NULL, NULL, NULL),
(67, 3, 'DASHBOARDWIDGET', 'Tickets by Status', 'index.php?module=HelpDesk&view=ShowWidget&name=TicketsByStatus', '', 13, NULL, NULL, NULL, NULL),
(68, 3, 'DASHBOARDWIDGET', 'Open Tickets', 'index.php?module=HelpDesk&view=ShowWidget&name=OpenTickets', '', 14, NULL, NULL, NULL, NULL),
(69, 13, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(70, 15, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL, NULL),
(99, 3, 'DASHBOARDWIDGET', 'Key Metrics', 'index.php?module=Home&view=ShowWidget&name=KeyMetrics', '', 0, NULL, NULL, NULL, NULL),
(100, 3, 'DASHBOARDWIDGET', 'Mini List', 'index.php?module=Home&view=ShowWidget&name=MiniList', '', 0, NULL, NULL, NULL, NULL),
(101, 3, 'DASHBOARDWIDGET', 'Tag Cloud', 'index.php?module=Home&view=ShowWidget&name=TagCloud', '', 0, NULL, NULL, NULL, NULL),
(102, 2, 'DASHBOARDWIDGET', 'Funnel Amount', 'index.php?module=Potentials&view=ShowWidget&name=FunnelAmount', '', 10, NULL, NULL, NULL, NULL),
(103, 3, 'DASHBOARDWIDGET', 'Funnel Amount', 'index.php?module=Potentials&view=ShowWidget&name=FunnelAmount', '', 10, NULL, NULL, NULL, NULL),
(104, 3, 'DASHBOARDWIDGET', 'Notebook', 'index.php?module=Home&view=ShowWidget&name=Notebook', '', 0, NULL, NULL, NULL, NULL),
(105, 25, 'LISTVIEWBASIC', 'LBL_ADD_RECORD', '', '', 0, NULL, NULL, NULL, NULL),
(106, 25, 'LISTVIEWBASIC', 'LBL_DETAIL_REPORT', 'javascript:Reports_List_Js.addReport(\"index.php?module=Reports&view=Edit\")', '', 0, 'modules/Reports/models/Module.php', 'Reports_Module_Model', 'checkLinkAccess', 105),
(107, 25, 'LISTVIEWBASIC', 'LBL_CHARTS', 'javascript:Reports_List_Js.addReport(\"index.php?module=Reports&view=ChartEdit\")', '', 0, 'modules/Reports/models/Module.php', 'Reports_Module_Model', 'checkLinkAccess', 105),
(108, 25, 'LISTVIEWBASIC', 'LBL_ADD_FOLDER', 'javascript:Reports_List_Js.triggerAddFolder(\"index.php?module=Reports&view=EditFolder\")', '', 0, 'modules/Reports/models/Module.php', 'Reports_Module_Model', 'checkLinkAccess', NULL),
(109, 4, 'EXTENSIONLINK', 'Google', 'index.php?module=Contacts&view=Extension&extensionModule=Google&extensionView=Index', '', 0, NULL, NULL, NULL, NULL),
(110, 9, 'EXTENSIONLINK', 'Google', 'index.php?module=Calendar&view=Extension&extensionModule=Google&extensionView=Index', '', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_links_seq`
--

CREATE TABLE `vtiger_links_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_links_seq`
--

INSERT INTO `vtiger_links_seq` (`id`) VALUES
(110);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_loginhistory`
--

CREATE TABLE `vtiger_loginhistory` (
  `login_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_ip` varchar(25) NOT NULL,
  `logout_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `login_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_loginhistory`
--

INSERT INTO `vtiger_loginhistory` (`login_id`, `user_name`, `user_ip`, `logout_time`, `login_time`, `status`) VALUES
(1, 'admin', '::1', '2020-11-22 04:20:29', '2020-11-22 11:20:29', 'Signed in'),
(2, 'admin', '127.0.0.1', '2020-12-11 20:03:42', '2020-12-12 03:03:42', 'Signed in'),
(3, 'admin', '127.0.0.1', '2020-12-12 01:32:50', '2020-12-12 07:02:13', 'Signed off'),
(4, 'admin', '127.0.0.1', '2020-12-12 01:34:24', '2020-12-12 08:32:59', 'Signed off'),
(5, 'admin', '127.0.0.1', '2020-12-12 01:34:33', '2020-12-12 08:34:33', 'Signed in'),
(6, 'admin', '127.0.0.1', '2020-12-12 07:04:33', '2020-12-12 14:04:33', 'Signed in'),
(7, 'admin', '127.0.0.1', '2020-12-12 19:08:59', '2020-12-13 01:04:46', 'Signed off'),
(8, 'admin', '127.0.0.1', '2020-12-12 19:24:25', '2020-12-13 02:09:04', 'Signed off'),
(9, 'van', '127.0.0.1', '2020-12-12 19:29:42', '2020-12-13 02:24:39', 'Signed off'),
(10, 'admin', '127.0.0.1', '2020-12-12 19:59:34', '2020-12-13 02:29:46', 'Signed off'),
(11, 'tran', '127.0.0.1', '2020-12-12 19:59:47', '2020-12-13 02:59:47', 'Signed in'),
(12, 'admin', '127.0.0.1', '2020-12-12 20:18:53', '2020-12-13 03:18:14', 'Signed off'),
(13, 'tran', '127.0.0.1', '2020-12-12 20:19:02', '2020-12-13 03:19:02', 'Signed in'),
(14, 'nhu', '127.0.0.1', '2020-12-12 20:19:50', '2020-12-13 03:19:50', 'Signed in'),
(15, 'admin', '127.0.0.1', '2020-12-12 20:53:21', '2020-12-13 03:34:45', 'Signed off'),
(16, 'admin', '127.0.0.1', '2020-12-12 20:55:10', '2020-12-13 03:53:27', 'Signed off'),
(17, 'admin', '127.0.0.1', '2020-12-12 20:56:11', '2020-12-13 03:55:15', 'Signed off'),
(18, 'admin', '127.0.0.1', '2020-12-12 20:58:09', '2020-12-13 03:56:20', 'Signed off'),
(19, 'admin', '127.0.0.1', '2020-12-12 20:58:13', '2020-12-13 03:58:13', 'Signed in'),
(20, 'admin', '127.0.0.1', '2020-12-12 20:59:57', '2020-12-13 03:59:06', 'Signed off'),
(21, 'nhu', '127.0.0.1', '2020-12-12 21:00:05', '2020-12-13 04:00:05', 'Signed in'),
(22, 'admin', '127.0.0.1', '2020-12-12 21:08:25', '2020-12-13 04:05:37', 'Signed off'),
(23, 'admin', '127.0.0.1', '2020-12-12 21:08:29', '2020-12-13 04:08:29', 'Signed in'),
(24, 'admin', '127.0.0.1', '2020-12-13 18:43:59', '2020-12-14 01:43:59', 'Signed in'),
(25, 'admin', '127.0.0.1', '2021-01-01 16:50:26', '2021-01-01 23:50:26', 'Signed in'),
(26, 'admin', '127.0.0.1', '2021-01-20 13:48:23', '2021-01-20 20:48:23', 'Signed in'),
(27, 'admin', '127.0.0.1', '2021-01-20 07:20:07', '2021-01-20 14:20:07', 'Signed in'),
(28, 'admin', '127.0.0.1', '2021-01-20 23:38:36', '2021-01-21 06:25:40', 'Signed off'),
(29, 'tran', '127.0.0.1', '2021-01-20 23:38:48', '2021-01-21 06:38:48', 'Signed in'),
(30, 'van', '127.0.0.1', '2021-01-21 00:06:44', '2021-01-21 07:06:44', 'Signed in'),
(31, 'admin', '127.0.0.1', '2021-01-21 00:09:28', '2021-01-21 07:09:28', 'Signed in'),
(32, 'admin', '127.0.0.1', '2021-01-21 09:27:40', '2021-01-21 13:21:41', 'Signed off'),
(33, 'ngoctran', '127.0.0.1', '2021-01-21 09:38:24', '2021-01-21 16:27:54', 'Signed off'),
(34, 'nhu', '127.0.0.1', '2021-01-21 09:38:40', '2021-01-21 16:38:40', 'Signed in'),
(35, 'ngoctran', '127.0.0.1', '2021-01-21 09:59:07', '2021-01-21 16:59:00', 'Signed off'),
(36, 'admin', '127.0.0.1', '2021-01-21 10:26:38', '2021-01-21 16:59:39', 'Signed off'),
(37, 'ngocthanh', '127.0.0.1', '2021-01-21 10:29:34', '2021-01-21 17:27:12', 'Signed off'),
(38, 'quynhnhu', '127.0.0.1', '2021-01-21 10:30:53', '2021-01-21 17:30:02', 'Signed off'),
(39, 'ngocthanh', '127.0.0.1', '2021-01-21 10:31:37', '2021-01-21 17:31:03', 'Signed off'),
(40, 'admin', '127.0.0.1', '2021-01-21 10:44:31', '2021-01-21 17:31:42', 'Signed off'),
(41, 'ngoctran', '127.0.0.1', '2021-01-21 10:57:58', '2021-01-21 17:44:43', 'Signed off'),
(42, 'admin', '127.0.0.1', '2021-01-21 11:09:20', '2021-01-21 17:58:07', 'Signed off'),
(43, 'ngoctran', '127.0.0.1', '2021-01-21 21:19:57', '2021-01-21 23:45:22', 'Signed off'),
(44, 'quynhnhu', '127.0.0.1', '2021-01-21 21:20:47', '2021-01-22 04:20:03', 'Signed off'),
(45, 'ngocthanh', '127.0.0.1', '2021-01-21 21:21:24', '2021-01-22 04:20:53', 'Signed off'),
(46, 'quynhnhu', '127.0.0.1', '2021-01-21 21:32:32', '2021-01-22 04:21:30', 'Signed off'),
(47, 'ngoctran', '127.0.0.1', '2021-01-21 21:32:39', '2021-01-22 04:32:39', 'Signed in'),
(48, 'ngoctran', '127.0.0.1', '2021-01-22 05:24:26', '2021-01-22 12:21:20', 'Signed off'),
(49, 'admin', '127.0.0.1', '2021-01-22 05:24:30', '2021-01-22 12:24:30', 'Signed in');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailer_queue`
--

CREATE TABLE `vtiger_mailer_queue` (
  `id` int(11) NOT NULL,
  `fromname` varchar(100) DEFAULT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `mailer` varchar(10) DEFAULT NULL,
  `content_type` varchar(15) DEFAULT NULL,
  `subject` varchar(999) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `relcrmid` int(11) DEFAULT NULL,
  `failed` int(1) NOT NULL DEFAULT 0,
  `failreason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailer_queueattachments`
--

CREATE TABLE `vtiger_mailer_queueattachments` (
  `id` int(11) DEFAULT NULL,
  `path` text DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `encoding` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailer_queueinfo`
--

CREATE TABLE `vtiger_mailer_queueinfo` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailmanager_mailattachments`
--

CREATE TABLE `vtiger_mailmanager_mailattachments` (
  `userid` int(11) DEFAULT NULL,
  `muid` int(11) DEFAULT NULL,
  `aname` varchar(100) DEFAULT NULL,
  `lastsavedtime` int(11) DEFAULT NULL,
  `attachid` int(19) NOT NULL,
  `path` varchar(200) NOT NULL,
  `cid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailmanager_mailrecord`
--

CREATE TABLE `vtiger_mailmanager_mailrecord` (
  `userid` int(11) DEFAULT NULL,
  `mfrom` varchar(255) DEFAULT NULL,
  `mto` varchar(255) DEFAULT NULL,
  `mcc` varchar(500) DEFAULT NULL,
  `mbcc` varchar(500) DEFAULT NULL,
  `mdate` varchar(20) DEFAULT NULL,
  `msubject` varchar(500) DEFAULT NULL,
  `mbody` text DEFAULT NULL,
  `mcharset` varchar(10) DEFAULT NULL,
  `misbodyhtml` int(1) DEFAULT NULL,
  `mplainmessage` int(1) DEFAULT NULL,
  `mhtmlmessage` int(1) DEFAULT NULL,
  `muniqueid` varchar(500) DEFAULT NULL,
  `mbodyparsed` int(1) DEFAULT NULL,
  `muid` int(11) DEFAULT NULL,
  `lastsavedtime` int(11) DEFAULT NULL,
  `folder` varchar(250) DEFAULT NULL,
  `mfolder` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailmanager_mailrel`
--

CREATE TABLE `vtiger_mailmanager_mailrel` (
  `mailuid` varchar(999) DEFAULT NULL,
  `crmid` int(11) DEFAULT NULL,
  `emailid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner`
--

CREATE TABLE `vtiger_mailscanner` (
  `scannerid` int(11) NOT NULL,
  `scannername` varchar(30) DEFAULT NULL,
  `server` varchar(100) DEFAULT NULL,
  `protocol` varchar(10) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ssltype` varchar(10) DEFAULT NULL,
  `sslmethod` varchar(30) DEFAULT NULL,
  `connecturl` varchar(255) DEFAULT NULL,
  `searchfor` varchar(10) DEFAULT NULL,
  `markas` varchar(10) DEFAULT NULL,
  `isvalid` int(1) DEFAULT NULL,
  `scanfrom` varchar(10) DEFAULT 'ALL',
  `time_zone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_actions`
--

CREATE TABLE `vtiger_mailscanner_actions` (
  `actionid` int(11) NOT NULL,
  `scannerid` int(11) DEFAULT NULL,
  `actiontype` varchar(10) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `lookup` varchar(30) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_folders`
--

CREATE TABLE `vtiger_mailscanner_folders` (
  `folderid` int(11) NOT NULL,
  `scannerid` int(11) DEFAULT NULL,
  `foldername` varchar(255) DEFAULT NULL,
  `lastscan` varchar(30) DEFAULT NULL,
  `rescan` int(1) DEFAULT NULL,
  `enabled` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_ids`
--

CREATE TABLE `vtiger_mailscanner_ids` (
  `scannerid` int(11) DEFAULT NULL,
  `messageid` varchar(512) DEFAULT NULL,
  `crmid` int(11) DEFAULT NULL,
  `refids` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_mailscanner_ids`
--

INSERT INTO `vtiger_mailscanner_ids` (`scannerid`, `messageid`, `crmid`, `refids`) VALUES
(NULL, '<4thjvj7ya0px.3i1no5un5qec4@nttnt>', 4, NULL),
(NULL, '<233tximblrdr.bs1nnh5a9lx8@nttnt>', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_ruleactions`
--

CREATE TABLE `vtiger_mailscanner_ruleactions` (
  `ruleid` int(11) DEFAULT NULL,
  `actionid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_rules`
--

CREATE TABLE `vtiger_mailscanner_rules` (
  `ruleid` int(11) NOT NULL,
  `scannerid` int(11) DEFAULT NULL,
  `fromaddress` varchar(255) DEFAULT NULL,
  `toaddress` varchar(255) DEFAULT NULL,
  `subjectop` varchar(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `bodyop` varchar(20) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `matchusing` varchar(5) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `assigned_to` int(10) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mail_accounts`
--

CREATE TABLE `vtiger_mail_accounts` (
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `mail_id` varchar(50) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `mail_protocol` varchar(20) DEFAULT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` text DEFAULT NULL,
  `mail_servername` varchar(50) DEFAULT NULL,
  `box_refresh` int(10) DEFAULT NULL,
  `mails_per_page` int(10) DEFAULT NULL,
  `ssltype` varchar(50) DEFAULT NULL,
  `sslmeth` varchar(50) DEFAULT NULL,
  `int_mailer` int(1) DEFAULT 0,
  `status` varchar(10) DEFAULT NULL,
  `set_default` int(2) DEFAULT NULL,
  `sent_folder` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_manufacturer`
--

CREATE TABLE `vtiger_manufacturer` (
  `manufacturerid` int(19) NOT NULL,
  `manufacturer` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_manufacturer`
--

INSERT INTO `vtiger_manufacturer` (`manufacturerid`, `manufacturer`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'AltvetPet Inc.', 1, 124, 1, NULL),
(3, 'LexPon Inc.', 1, 125, 2, NULL),
(4, 'MetBeat Corp', 1, 126, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_manufacturer_seq`
--

CREATE TABLE `vtiger_manufacturer_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_manufacturer_seq`
--

INSERT INTO `vtiger_manufacturer_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mobile_alerts`
--

CREATE TABLE `vtiger_mobile_alerts` (
  `id` int(11) NOT NULL,
  `handler_path` varchar(500) DEFAULT NULL,
  `handler_class` varchar(50) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_mobile_alerts`
--

INSERT INTO `vtiger_mobile_alerts` (`id`, `handler_path`, `handler_class`, `sequence`, `deleted`) VALUES
(1, 'modules/Mobile/api/ws/models/alerts/IdleTicketsOfMine.php', 'Mobile_WS_AlertModel_IdleTicketsOfMine', NULL, 0),
(2, 'modules/Mobile/api/ws/models/alerts/NewTicketOfMine.php', 'Mobile_WS_AlertModel_NewTicketOfMine', NULL, 0),
(3, 'modules/Mobile/api/ws/models/alerts/PendingTicketsOfMine.php', 'Mobile_WS_AlertModel_PendingTicketsOfMine', NULL, 0),
(4, 'modules/Mobile/api/ws/models/alerts/PotentialsDueIn5Days.php', 'Mobile_WS_AlertModel_PotentialsDueIn5Days', NULL, 0),
(5, 'modules/Mobile/api/ws/models/alerts/EventsOfMineToday.php', 'Mobile_WS_AlertModel_EventsOfMineToday', NULL, 0),
(6, 'modules/Mobile/api/ws/models/alerts/ProjectTasksOfMine.php', 'Mobile_WS_AlertModel_ProjectTasksOfMine', NULL, 0),
(7, 'modules/Mobile/api/ws/models/alerts/Projects.php', 'Mobile_WS_AlertModel_Projects', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modcomments`
--

CREATE TABLE `vtiger_modcomments` (
  `modcommentsid` int(11) DEFAULT NULL,
  `commentcontent` text DEFAULT NULL,
  `related_to` int(19) DEFAULT NULL,
  `parent_comments` int(19) DEFAULT NULL,
  `customer` int(19) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL,
  `reasontoedit` varchar(100) DEFAULT NULL,
  `is_private` int(1) DEFAULT 0,
  `filename` varchar(255) DEFAULT NULL,
  `related_email_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modcommentscf`
--

CREATE TABLE `vtiger_modcommentscf` (
  `modcommentsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modentity_num`
--

CREATE TABLE `vtiger_modentity_num` (
  `num_id` int(19) NOT NULL,
  `semodule` varchar(100) DEFAULT NULL,
  `prefix` varchar(50) NOT NULL DEFAULT '',
  `start_id` varchar(50) NOT NULL,
  `cur_id` varchar(50) NOT NULL,
  `active` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modentity_num`
--

INSERT INTO `vtiger_modentity_num` (`num_id`, `semodule`, `prefix`, `start_id`, `cur_id`, `active`) VALUES
(1, 'Leads', 'LEA', '1', '5', '1'),
(2, 'Accounts', 'ACC', '1', '7', '1'),
(3, 'Campaigns', 'CAM', '1', '2', '1'),
(4, 'Contacts', 'CON', '1', '5', '1'),
(5, 'Potentials', 'POT', '1', '3', '1'),
(6, 'HelpDesk', 'TT', '1', '2', '1'),
(7, 'Quotes', 'QUO', '1', '2', '1'),
(8, 'SalesOrder', 'SO', '1', '1', '1'),
(9, 'PurchaseOrder', 'PO', '1', '1', '1'),
(10, 'Invoice', 'INV', '1', '1', '1'),
(11, 'Products', 'PRO', '1', '6', '1'),
(12, 'Vendors', 'VEN', '1', '1', '1'),
(13, 'PriceBooks', 'PB', '1', '1', '1'),
(14, 'Faq', 'FAQ', '1', '2', '1'),
(15, 'Documents', 'DOC', '1', '1', '1'),
(16, 'Services', 'SER', '1', '1', '1'),
(17, 'ServiceContracts', 'SERCON', '1', '1', '1'),
(18, 'ProjectMilestone', 'PM', '1', '1', '1'),
(19, 'ProjectTask', 'PT', '1', '1', '1'),
(20, 'Project', 'PROJ', '1', '1', '1'),
(21, 'Assets', 'ASSET', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modentity_num_seq`
--

CREATE TABLE `vtiger_modentity_num_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modentity_num_seq`
--

INSERT INTO `vtiger_modentity_num_seq` (`id`) VALUES
(21);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_basic`
--

CREATE TABLE `vtiger_modtracker_basic` (
  `id` int(20) NOT NULL,
  `crmid` int(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `whodid` int(20) DEFAULT NULL,
  `changedon` datetime DEFAULT NULL,
  `status` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modtracker_basic`
--

INSERT INTO `vtiger_modtracker_basic` (`id`, `crmid`, `module`, `whodid`, `changedon`, `status`) VALUES
(1, 2, 'Accounts', 1, '2020-12-13 02:49:14', 2),
(2, 3, 'Accounts', 1, '2020-12-13 02:50:13', 2),
(3, 4, 'Accounts', 1, '2020-12-13 02:53:18', 2),
(4, 5, 'Leads', 1, '2020-12-13 02:58:30', 2),
(5, 6, 'Calendar', 1, '2021-01-21 07:32:54', 2),
(6, 4, 'Accounts', 1, '2021-01-21 07:32:54', 4),
(7, 7, 'Products', 1, '2021-01-21 09:22:36', 2),
(8, 8, 'Products', 1, '2021-01-21 09:24:03', 2),
(9, 9, 'Campaigns', 1, '2021-01-21 09:26:46', 2),
(10, 9, 'Campaigns', 1, '2021-01-21 09:27:18', 0),
(11, 9, 'Campaigns', 1, '2021-01-21 09:27:38', 0),
(12, 8, 'Products', 1, '2021-01-21 09:29:31', 0),
(13, 8, 'Products', 1, '2021-01-21 09:29:53', 0),
(14, 8, 'Products', 1, '2021-01-21 09:35:48', 0),
(15, 8, 'Products', 1, '2021-01-21 09:37:33', 0),
(16, 10, 'Leads', 1, '2021-01-21 09:46:57', 2),
(17, 10, 'Leads', 1, '2021-01-21 09:47:41', 0),
(18, 10, 'Leads', 1, '2021-01-21 09:48:08', 0),
(19, 11, 'Leads', 1, '2021-01-21 09:50:57', 2),
(20, 12, 'Calendar', 1, '2021-01-21 09:51:54', 2),
(21, 11, 'Leads', 1, '2021-01-21 09:51:54', 4),
(22, 11, 'Leads', 1, '2021-01-21 13:22:26', 1),
(23, 13, 'Accounts', 1, '2021-01-21 13:42:06', 2),
(24, 14, 'Calendar', 1, '2021-01-21 13:44:43', 2),
(25, 13, 'Accounts', 1, '2021-01-21 13:44:43', 4),
(26, 14, 'Calendar', 1, '2021-01-21 13:45:07', 0),
(27, 13, 'Accounts', 1, '2021-01-21 13:45:07', 4),
(28, 15, 'Quotes', 1, '2021-01-21 13:52:01', 2),
(29, 13, 'Accounts', 1, '2021-01-21 13:52:01', 4),
(30, 13, 'Accounts', 1, '2021-01-21 13:53:07', 0),
(31, 13, 'Accounts', 1, '2021-01-21 13:53:17', 0),
(32, 15, 'Quotes', 1, '2021-01-21 13:53:43', 0),
(33, 7, 'Products', 1, '2021-01-21 14:03:04', 0),
(34, 17, 'Contacts', 1, '2021-01-21 14:49:53', 1),
(35, 18, 'Emails', 1, '2021-01-21 15:50:34', 2),
(36, 13, 'Accounts', 1, '2021-01-21 15:50:34', 4),
(37, 7, 'Products', 9, '2021-01-21 16:37:08', 0),
(38, 22, 'Products', 1, '2021-01-21 18:00:55', 2),
(39, 23, 'Products', 9, '2021-01-21 23:53:44', 2),
(40, 24, 'Leads', 9, '2021-01-22 00:38:55', 2),
(41, 25, 'Accounts', 9, '2021-01-22 00:40:18', 2),
(42, 26, 'Contacts', 9, '2021-01-22 00:40:18', 2),
(43, 27, 'Potentials', 9, '2021-01-22 00:40:18', 2),
(44, 4, 'Accounts', 9, '2021-01-22 04:10:13', 0),
(45, 28, 'Accounts', 9, '2021-01-22 04:11:40', 2),
(46, 4, 'Accounts', 9, '2021-01-22 04:13:19', 0),
(47, 29, 'Potentials', 9, '2021-01-22 04:16:35', 2),
(48, 26, 'Contacts', 1, '2021-01-22 04:16:35', 4),
(49, 26, 'Contacts', 9, '2021-01-22 04:18:40', 0),
(50, 30, 'Contacts', 10, '2021-01-22 04:22:36', 2),
(51, 31, 'HelpDesk', 10, '2021-01-22 04:23:38', 2),
(52, 32, 'Products', 10, '2021-01-22 04:26:37', 2),
(53, 33, 'Faq', 10, '2021-01-22 04:28:24', 2),
(54, 34, 'Calendar', 10, '2021-01-22 04:31:53', 2),
(55, 31, 'HelpDesk', 10, '2021-01-22 04:31:53', 4),
(56, 35, 'Emails', 9, '2021-01-22 04:39:35', 2),
(57, 36, 'Calendar', 9, '2021-01-22 04:42:04', 2),
(58, 31, 'HelpDesk', 9, '2021-01-22 04:42:04', 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_basic_seq`
--

CREATE TABLE `vtiger_modtracker_basic_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modtracker_basic_seq`
--

INSERT INTO `vtiger_modtracker_basic_seq` (`id`) VALUES
(58);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_detail`
--

CREATE TABLE `vtiger_modtracker_detail` (
  `id` int(11) DEFAULT NULL,
  `fieldname` varchar(100) DEFAULT NULL,
  `prevalue` text DEFAULT NULL,
  `postvalue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modtracker_detail`
--

INSERT INTO `vtiger_modtracker_detail` (`id`, `fieldname`, `prevalue`, `postvalue`) VALUES
(1, 'label', NULL, 'L&ecirc; L&acirc;m Mỹ Ngọc'),
(1, 'accountname', NULL, 'L&ecirc; L&acirc;m Mỹ Ngọc'),
(1, 'account_no', NULL, 'ACC1'),
(1, 'phone', NULL, '0908123445'),
(1, 'email1', NULL, 'myngoc1506@gmail.com'),
(1, 'industry', NULL, 'Education'),
(1, 'annual_revenue', NULL, '0.00000000'),
(1, 'assigned_user_id', NULL, '7'),
(1, 'createdtime', NULL, '2020-12-13 02:49:14'),
(1, 'modifiedby', NULL, '1'),
(1, 'source', NULL, 'CRM'),
(1, 'record_id', NULL, '2'),
(1, 'record_module', NULL, 'Accounts'),
(2, 'label', NULL, 'Phan Th&uacute;y An'),
(2, 'accountname', NULL, 'Phan Th&uacute;y An'),
(2, 'account_no', NULL, 'ACC2'),
(2, 'phone', NULL, '0903898442'),
(2, 'annual_revenue', NULL, '0.00000000'),
(2, 'assigned_user_id', NULL, '7'),
(2, 'createdtime', NULL, '2020-12-13 02:50:13'),
(2, 'modifiedby', NULL, '1'),
(2, 'source', NULL, 'CRM'),
(2, 'record_id', NULL, '3'),
(2, 'record_module', NULL, 'Accounts'),
(3, 'label', NULL, 'Đ&agrave;o Thiện Khi&ecirc;m'),
(3, 'accountname', NULL, 'Đ&agrave;o Thiện Khi&ecirc;m'),
(3, 'account_no', NULL, 'ACC3'),
(3, 'phone', NULL, '0912344566'),
(3, 'industry', NULL, 'Banking'),
(3, 'annual_revenue', NULL, '0.00000000'),
(3, 'assigned_user_id', NULL, '8'),
(3, 'createdtime', NULL, '2020-12-13 02:53:18'),
(3, 'modifiedby', NULL, '1'),
(3, 'source', NULL, 'CRM'),
(3, 'record_id', NULL, '4'),
(3, 'record_module', NULL, 'Accounts'),
(4, 'label', NULL, 'H&ograve;a Nguyễn'),
(4, 'salutationtype', NULL, 'Mr.'),
(4, 'firstname', NULL, 'H&ograve;a'),
(4, 'lead_no', NULL, 'LEA1'),
(4, 'phone', NULL, '0902203451'),
(4, 'lastname', NULL, 'Nguyễn'),
(4, 'leadstatus', NULL, 'Contact in Future'),
(4, 'annualrevenue', NULL, '0.00000000'),
(4, 'rating', NULL, 'Active'),
(4, 'assigned_user_id', NULL, '7'),
(4, 'createdtime', NULL, '2020-12-13 02:58:30'),
(4, 'modifiedby', NULL, '1'),
(4, 'source', NULL, 'CRM'),
(4, 'record_id', NULL, '5'),
(4, 'record_module', NULL, 'Leads'),
(5, 'label', NULL, 'Chăm s&oacute;c kh&aacute;ch h&agrave;ng - Lần 1'),
(5, 'subject', NULL, 'Chăm s&oacute;c kh&aacute;ch h&agrave;ng - Lần 1'),
(5, 'assigned_user_id', NULL, '1'),
(5, 'date_start', NULL, '2021-01-21'),
(5, 'time_start', NULL, '07:31:00'),
(5, 'due_date', NULL, '2021-01-21'),
(5, 'duration_hours', NULL, '9'),
(5, 'duration_minutes', NULL, '29'),
(5, 'parent_id', NULL, '4'),
(5, 'activitytype', NULL, 'Task'),
(5, 'createdtime', NULL, '2021-01-21 07:32:54'),
(5, 'visibility', NULL, 'Private'),
(5, 'modifiedby', NULL, '1'),
(5, 'source', NULL, 'CRM'),
(5, 'taskstatus', NULL, 'Planned'),
(5, 'record_id', NULL, '6'),
(5, 'record_module', NULL, 'Calendar'),
(7, 'label', NULL, 'Th&ugrave;ng Coca-cola 330ml (24 lon)'),
(7, 'productname', NULL, 'Th&ugrave;ng Coca-cola 330ml (24 lon)'),
(7, 'product_no', NULL, 'PRO1'),
(7, 'discontinued', NULL, '1'),
(7, 'createdtime', NULL, '2021-01-21 09:22:36'),
(7, 'modifiedby', NULL, '1'),
(7, 'unit_price', NULL, '218000.00000000'),
(7, 'commissionrate', NULL, '0.000'),
(7, 'qty_per_unit', NULL, '0.00'),
(7, 'qtyinstock', NULL, '0.000'),
(7, 'assigned_user_id', NULL, '7'),
(7, 'purchase_cost', NULL, '0.00000000'),
(7, 'source', NULL, 'CRM'),
(7, 'record_id', NULL, '7'),
(7, 'record_module', NULL, 'Products'),
(8, 'label', NULL, 'Th&ugrave;ng Coca-cola Plus 330ml (24 lon)'),
(8, 'productname', NULL, 'Th&ugrave;ng Coca-cola Plus 330ml (24 lon)'),
(8, 'product_no', NULL, 'PRO2'),
(8, 'discontinued', NULL, '1'),
(8, 'createdtime', NULL, '2021-01-21 09:24:03'),
(8, 'modifiedby', NULL, '1'),
(8, 'unit_price', NULL, '260000.00000000'),
(8, 'commissionrate', NULL, '0.000'),
(8, 'qty_per_unit', NULL, '0.00'),
(8, 'qtyinstock', NULL, '0.000'),
(8, 'assigned_user_id', NULL, '7'),
(8, 'purchase_cost', NULL, '0.00000000'),
(8, 'source', NULL, 'CRM'),
(8, 'record_id', NULL, '8'),
(8, 'record_module', NULL, 'Products'),
(9, 'label', NULL, 'Xu&acirc;n sum họp'),
(9, 'campaignname', NULL, 'Xu&acirc;n sum họp'),
(9, 'campaign_no', NULL, 'CAM1'),
(9, 'campaigntype', NULL, 'Advertisement'),
(9, 'product_id', NULL, '8'),
(9, 'campaignstatus', NULL, 'Planning'),
(9, 'closingdate', NULL, '2021-03-10'),
(9, 'assigned_user_id', NULL, '6'),
(9, 'createdtime', NULL, '2021-01-21 09:26:46'),
(9, 'modifiedby', NULL, '1'),
(9, 'expectedrevenue', NULL, '0.00000000'),
(9, 'budgetcost', NULL, '0.00000000'),
(9, 'actualcost', NULL, '0.00000000'),
(9, 'expectedroi', NULL, '0.00000000'),
(9, 'actualroi', NULL, '0.00000000'),
(9, 'source', NULL, 'CRM'),
(9, 'record_id', NULL, '9'),
(9, 'record_module', NULL, 'Campaigns'),
(10, 'product_id', '8', '0'),
(11, 'product_id', '0', '8'),
(12, 'label', 'Th&ugrave;ng Coca-cola Plus 330ml (24 lon)', 'Coca-cola Plus 330ml (24 lon)'),
(12, 'productname', 'Th&ugrave;ng Coca-cola Plus 330ml (24 lon)', 'Coca-cola Plus 330ml (24 lon)'),
(13, 'sales_start_date', '', '2020-12-01'),
(14, 'qty_per_unit', '0.00', '100.00'),
(15, 'description', '', 'Coca-cola Plus được chế biến từ c&aacute;c th&agrave;nh phần Nước b&atilde;o h&ograve;a C02, chất xơ, m&agrave;u tự nhi&ecirc;n, chất điều chỉnh độ Acid, chất tạo ngọt tổng hợp, chất bảo quản, hỗn hợp hương tự nhi&ecirc;n, Caffeine.'),
(16, 'label', NULL, 'Tr&acirc;n Nguyễn'),
(16, 'salutationtype', NULL, 'Mr.'),
(16, 'firstname', NULL, 'Tr&acirc;n'),
(16, 'lead_no', NULL, 'LEA2'),
(16, 'lastname', NULL, 'Nguyễn'),
(16, 'mobile', NULL, '0909212345'),
(16, 'company', NULL, 'NT Shop'),
(16, 'designation', NULL, 'Shop'),
(16, 'annualrevenue', NULL, '0.00000000'),
(16, 'assigned_user_id', NULL, '8'),
(16, 'createdtime', NULL, '2021-01-21 09:46:57'),
(16, 'modifiedby', NULL, '1'),
(16, 'source', NULL, 'CRM'),
(16, 'record_id', NULL, '10'),
(16, 'record_module', NULL, 'Leads'),
(17, 'label', 'Tr&acirc;n Nguyễn', 'Lan Nguyễn'),
(17, 'salutationtype', 'Mr.', 'Ms.'),
(17, 'firstname', 'Tr&acirc;n', 'Lan'),
(18, 'leadsource', '', 'Partner'),
(19, 'label', NULL, 'Lan Nguyễn'),
(19, 'salutationtype', NULL, 'Ms.'),
(19, 'firstname', NULL, 'Lan'),
(19, 'lead_no', NULL, 'LEA3'),
(19, 'lastname', NULL, 'Nguyễn'),
(19, 'annualrevenue', NULL, '0.00000000'),
(19, 'assigned_user_id', NULL, '8'),
(19, 'createdtime', NULL, '2021-01-21 09:50:57'),
(19, 'modifiedby', NULL, '1'),
(19, 'source', NULL, 'CRM'),
(19, 'record_id', NULL, '11'),
(19, 'record_module', NULL, 'Leads'),
(20, 'label', NULL, 'Li&ecirc;n hệ điện thoại'),
(20, 'subject', NULL, 'Li&ecirc;n hệ điện thoại'),
(20, 'assigned_user_id', NULL, '8'),
(20, 'date_start', NULL, '2021-01-21'),
(20, 'time_start', NULL, '09:51:00'),
(20, 'due_date', NULL, '2021-01-21'),
(20, 'duration_hours', NULL, '7'),
(20, 'duration_minutes', NULL, '9'),
(20, 'parent_id', NULL, '11'),
(20, 'activitytype', NULL, 'Task'),
(20, 'createdtime', NULL, '2021-01-21 09:51:54'),
(20, 'visibility', NULL, 'Private'),
(20, 'modifiedby', NULL, '1'),
(20, 'source', NULL, 'CRM'),
(20, 'taskstatus', NULL, 'Planned'),
(20, 'record_id', NULL, '12'),
(20, 'record_module', NULL, 'Calendar'),
(23, 'label', NULL, 'Tạp h&oacute;a Ngọc Mai'),
(23, 'accountname', NULL, 'Tạp h&oacute;a Ngọc Mai'),
(23, 'account_no', NULL, 'ACC4'),
(23, 'phone', NULL, '0909123456'),
(23, 'annual_revenue', NULL, '0.00000000'),
(23, 'assigned_user_id', NULL, '1'),
(23, 'createdtime', NULL, '2021-01-21 13:42:06'),
(23, 'modifiedby', NULL, '1'),
(23, 'source', NULL, 'CRM'),
(23, 'record_id', NULL, '13'),
(23, 'record_module', NULL, 'Accounts'),
(24, 'label', NULL, 'Li&ecirc;n lạc trực tiếp'),
(24, 'subject', NULL, 'Li&ecirc;n lạc trực tiếp'),
(24, 'assigned_user_id', NULL, '7'),
(24, 'date_start', NULL, '2021-01-21'),
(24, 'time_start', NULL, '13:43:00'),
(24, 'due_date', NULL, '2021-01-21'),
(24, 'duration_hours', NULL, '3'),
(24, 'duration_minutes', NULL, '17'),
(24, 'parent_id', NULL, '13'),
(24, 'activitytype', NULL, 'Task'),
(24, 'createdtime', NULL, '2021-01-21 13:44:43'),
(24, 'visibility', NULL, 'Private'),
(24, 'modifiedby', NULL, '1'),
(24, 'source', NULL, 'CRM'),
(24, 'taskstatus', NULL, 'Not Started'),
(24, 'record_id', NULL, '14'),
(24, 'record_module', NULL, 'Calendar'),
(26, 'label', 'Li&ecirc;n lạc trực tiếp', 'Trao đổi trực tiếp'),
(26, 'subject', 'Li&ecirc;n lạc trực tiếp', 'Trao đổi trực tiếp'),
(28, 'label', NULL, 'Trao đổi trực tiếp'),
(28, 'quote_no', NULL, 'QUO1'),
(28, 'subject', NULL, 'Trao đổi trực tiếp'),
(28, 'quotestage', NULL, 'Created'),
(28, 'hdnSubTotal', NULL, '1300000.00000000'),
(28, 'txtAdjustment', NULL, '0.00000000'),
(28, 'hdnGrandTotal', NULL, '1651000.00000000'),
(28, 'hdnTaxType', NULL, 'group'),
(28, 'hdnS_H_Amount', NULL, '0.00000000'),
(28, 'account_id', NULL, '13'),
(28, 'assigned_user_id', NULL, '1'),
(28, 'createdtime', NULL, '2021-01-21 13:52:01'),
(28, 'modifiedby', NULL, '1'),
(28, 'currency_id', NULL, '1'),
(28, 'conversion_rate', NULL, '1.000'),
(28, 'bill_street', NULL, 'Chi nh&aacute;nh Cần Thơ'),
(28, 'ship_street', NULL, 'Tạp h&oacute;a Ngọc Mai, Cần Thơ'),
(28, 'terms_conditions', NULL, '- Trừ khi c&oacute; thỏa thuận kh&aacute;c bằng văn bản của nh&agrave; cung cấp, tất cả c&aacute;c h&oacute;a đơn phải được thanh to&aacute;n trong v&ograve;ng bảy (7) ng&agrave;y kể từ ng&agrave;y lập h&oacute;a đơn, bằng đơn vị tiền tệ của h&oacute;a đơn hoặc theo phương thức kh&aacute;c như đ&atilde; được thỏa thuận trước bởi nh&agrave; cung cấp.\n - Tất cả gi&aacute; chưa bao gồm VAT, Kh&aacute;ch h&agrave;ng sẽ phải thanh to&aacute;n th&ecirc;m theo tỷ gi&aacute; &aacute;p dụng.'),
(28, 'productid', NULL, '8'),
(28, 'quantity', NULL, '5.000'),
(28, 'listprice', NULL, '260000.00000000'),
(28, 'comment', NULL, 'Coca-cola Plus được chế biến từ c&aacute;c th&agrave;nh phần Nước b&atilde;o h&ograve;a C02, chất xơ, m&agrave;u tự nhi&ecirc;n, chất điều chỉnh độ Acid, chất tạo ngọt tổng hợp, chất bảo quản, hỗn hợp hương tự nhi&ecirc;n, Caffeine.'),
(28, 'tax1', NULL, '4.500'),
(28, 'tax2', NULL, '10.000'),
(28, 'tax3', NULL, '12.500'),
(28, 'pre_tax_total', NULL, '1300000.00000000'),
(28, 'source', NULL, 'CRM'),
(28, 'record_id', NULL, '15'),
(28, 'record_module', NULL, 'Quotes'),
(30, 'email1', '', 'tranm2519032@gstudent.ctu.edu.vn'),
(31, 'assigned_user_id', '1', '7'),
(32, 'assigned_user_id', '1', '7'),
(33, 'label', 'Th&ugrave;ng Coca-cola 330ml (24 lon)', 'Coca-cola 330ml (24 lon)'),
(33, 'productname', 'Th&ugrave;ng Coca-cola 330ml (24 lon)', 'Coca-cola 330ml (24 lon)'),
(35, 'label', NULL, '$companydetails-logoname$'),
(35, 'date_start', NULL, '2021-01-21'),
(35, 'activitytype', NULL, 'Emails'),
(35, 'assigned_user_id', NULL, '1'),
(35, 'subject', NULL, '$companydetails-logoname$'),
(35, 'description', NULL, '&lt;!DOCTYPE HTML PUBLIC &quot;-//W3C//DTD HTML 4.01//EN&quot; &quot;http://www.w3.org/TR/html4/strict.dtd&quot;&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n	&lt;title&gt;&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body class=&quot;scayt-enabled&quot;&gt;\r\n&lt;div&gt;\r\n&lt;center&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;borderGrey&quot; width=&quot;600px&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr style=&quot;height:50px;&quot;&gt;\r\n			&lt;td colspan=&quot;6&quot; style=&quot;border-top: 1px solid rgb(221, 221, 221); font-family: Helvetica, Verdana, sans-serif; text-align: center;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color:#FF0000;&quot;&gt;CHƯƠNG TR&Igrave;NH KHUYẾN M&Atilde;I TẾT 2021&lt;/span&gt;&lt;/strong&gt;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;span aria-hidden=&quot;false&quot; role=&quot;presentation&quot; style=&quot;display: contents;&quot;&gt;&lt;span class=&quot;object-value&quot;&gt;&lt;span class=&quot;objectBox objectBox-string&quot; title=&quot;Object&quot;&gt;Nước ngọt đồng gi&aacute; chỉ từ 5.5k/chai, 30k/lốc, 118k/th&ugrave;ng &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;\r\n			&amp;nbsp;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;6&quot; style=&quot;font-family: Helvetica,Verdana,sans-serif;font-size: 11px;color: #666666;&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;4&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td colspan=&quot;2&quot; id=&quot;social&quot; valign=&quot;middle&quot;&gt;\r\n						&lt;center&gt;\r\n						&lt;div&gt;&amp;nbsp;&lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt; follow on Twitter&lt;/a&gt; | &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;follow on Facebook&lt;/a&gt;&lt;/div&gt;\r\n						&lt;/center&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;!--copy right data--&gt;\r\n					&lt;tr&gt;\r\n						&lt;td valign=&quot;top&quot; width=&quot;350px&quot;&gt;\r\n						&lt;center&gt;\r\n						&lt;div&gt;&lt;em&gt;Copyright &copy; 2021 &lt;a href=&quot;http://www.nhom2crm.com&quot; target=&quot;_blank&quot;&gt;www.nhom2crm.com&lt;/a&gt;, All rights reserved.&lt;/em&gt;&lt;/div&gt;\r\n						&lt;/center&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;/center&gt;\r\n&lt;/div&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;\r\n'),
(35, 'time_start', NULL, '15:50'),
(35, 'createdtime', NULL, '2021-01-21 15:50:34'),
(35, 'modifiedby', NULL, '1'),
(35, 'from_email', NULL, 'vanM2519034@gstudent.ctu.edu.vn'),
(35, 'saved_toid', NULL, '[&quot;tranm2519032@gstudent.ctu.edu.vn&quot;]'),
(35, 'ccmail', NULL, '[&quot;&quot;]'),
(35, 'bccmail', NULL, '[&quot;&quot;]'),
(35, 'parent_id', NULL, '13@1|'),
(35, 'email_flag', NULL, 'SENT'),
(35, 'source', NULL, 'CRM'),
(35, 'record_id', NULL, '18'),
(35, 'record_module', NULL, 'Emails'),
(37, 'modifiedby', '1', '9'),
(37, 'qty_per_unit', '0.00', '200.00'),
(38, 'label', NULL, 'La Vie Sparkling hương chanh bạc h&agrave; 330ml'),
(38, 'productname', NULL, 'La Vie Sparkling hương chanh bạc h&agrave; 330ml'),
(38, 'product_no', NULL, 'PRO3'),
(38, 'discontinued', NULL, '1'),
(38, 'createdtime', NULL, '2021-01-21 18:00:55'),
(38, 'modifiedby', NULL, '1'),
(38, 'unit_price', NULL, '98000.00000000'),
(38, 'commissionrate', NULL, '0.000'),
(38, 'qty_per_unit', NULL, '150.00'),
(38, 'qtyinstock', NULL, '0.000'),
(38, 'assigned_user_id', NULL, '1'),
(38, 'description', NULL, '6 lon nước giải kh&aacute;t c&oacute; gas La Vie Sparkling hương chanh bạc h&agrave; 330ml'),
(38, 'purchase_cost', NULL, '0.00000000'),
(38, 'source', NULL, 'CRM'),
(38, 'record_id', NULL, '22'),
(38, 'record_module', NULL, 'Products'),
(39, 'label', NULL, '7 Up Mojito hương chanh bạc h&agrave; 330ml'),
(39, 'productname', NULL, '7 Up Mojito hương chanh bạc h&agrave; 330ml'),
(39, 'product_no', NULL, 'PRO4'),
(39, 'discontinued', NULL, '1'),
(39, 'sales_start_date', NULL, '2021-01-22'),
(39, 'createdtime', NULL, '2021-01-21 23:53:44'),
(39, 'modifiedby', NULL, '9'),
(39, 'unit_price', NULL, '42000.00000000'),
(39, 'commissionrate', NULL, '0.000'),
(39, 'qty_per_unit', NULL, '50.00'),
(39, 'qtyinstock', NULL, '0.000'),
(39, 'assigned_user_id', NULL, '9'),
(39, 'description', NULL, 'Nước b&atilde;o h&ograve;a CO2, đường, chất điều chỉnh độ axit ( 330, 331(iii), 296), hương chanh v&agrave; hương bạc h&agrave; ( Mojito ) tự nhi&ecirc;n, chất bảo quản (202, 211), chất nhũ h&oacute;a (414, 444)'),
(39, 'purchase_cost', NULL, '0.00000000'),
(39, 'source', NULL, 'CRM'),
(39, 'record_id', NULL, '23'),
(39, 'record_module', NULL, 'Products'),
(40, 'label', NULL, 'Hoa Trần'),
(40, 'salutationtype', NULL, 'Ms.'),
(40, 'firstname', NULL, 'Hoa'),
(40, 'lead_no', NULL, 'LEA4'),
(40, 'lastname', NULL, 'Trần'),
(40, 'mobile', NULL, '0973123321'),
(40, 'company', NULL, 'KH c&aacute; nh&acirc;n'),
(40, 'leadstatus', NULL, 'Cold'),
(40, 'annualrevenue', NULL, '0.00000000'),
(40, 'rating', NULL, 'Active'),
(40, 'assigned_user_id', NULL, '9'),
(40, 'createdtime', NULL, '2021-01-22 00:38:55'),
(40, 'modifiedby', NULL, '9'),
(40, 'source', NULL, 'CRM'),
(40, 'record_id', NULL, '24'),
(40, 'record_module', NULL, 'Leads'),
(41, 'label', NULL, 'KH c&aacute; nh&acirc;n'),
(41, 'accountname', NULL, 'KH c&aacute; nh&acirc;n'),
(41, 'account_no', NULL, 'ACC5'),
(41, 'rating', NULL, 'Active'),
(41, 'annual_revenue', NULL, '0.00000000'),
(41, 'assigned_user_id', NULL, '9'),
(41, 'createdtime', NULL, '2021-01-22 00:40:18'),
(41, 'modifiedby', NULL, '9'),
(41, 'isconvertedfromlead', NULL, '1'),
(41, 'source', NULL, 'CRM'),
(41, 'record_id', NULL, '25'),
(41, 'record_module', NULL, 'Accounts'),
(42, 'label', NULL, 'Hoa Trần'),
(42, 'salutationtype', NULL, 'Ms.'),
(42, 'firstname', NULL, 'Hoa'),
(42, 'contact_no', NULL, 'CON3'),
(42, 'lastname', NULL, 'Trần'),
(42, 'account_id', NULL, '25'),
(42, 'mobile', NULL, '0973123321'),
(42, 'assigned_user_id', NULL, '9'),
(42, 'createdtime', NULL, '2021-01-22 00:40:18'),
(42, 'modifiedby', NULL, '9'),
(42, 'isconvertedfromlead', NULL, '1'),
(42, 'source', NULL, 'CRM'),
(42, 'record_id', NULL, '26'),
(42, 'record_module', NULL, 'Contacts'),
(43, 'label', NULL, 'KH c&aacute; nh&acirc;n'),
(43, 'potentialname', NULL, 'KH c&aacute; nh&acirc;n'),
(43, 'potential_no', NULL, 'POT1'),
(43, 'related_to', NULL, '25'),
(43, 'contact_id', NULL, '26'),
(43, 'amount', NULL, '500000.00000000'),
(43, 'closingdate', NULL, '2021-01-25'),
(43, 'assigned_user_id', NULL, '9'),
(43, 'sales_stage', NULL, 'Prospecting'),
(43, 'probability', NULL, '0.000'),
(43, 'createdtime', NULL, '2021-01-22 00:40:18'),
(43, 'modifiedby', NULL, '9'),
(43, 'forecast_amount', NULL, '0.00000000'),
(43, 'isconvertedfromlead', NULL, '1'),
(43, 'source', NULL, 'CRM'),
(43, 'record_id', NULL, '27'),
(43, 'record_module', NULL, 'Potentials'),
(44, 'industry', 'Banking', 'Education'),
(44, 'modifiedby', '1', '9'),
(45, 'label', NULL, 'Sở Gi&aacute;o dục Đ&agrave;o tạo'),
(45, 'accountname', NULL, 'Sở Gi&aacute;o dục Đ&agrave;o tạo'),
(45, 'account_no', NULL, 'ACC6'),
(45, 'annual_revenue', NULL, '0.00000000'),
(45, 'assigned_user_id', NULL, '9'),
(45, 'createdtime', NULL, '2021-01-22 04:11:40'),
(45, 'modifiedby', NULL, '9'),
(45, 'source', NULL, 'CRM'),
(45, 'record_id', NULL, '28'),
(45, 'record_module', NULL, 'Accounts'),
(46, 'account_id', '0', '28'),
(46, 'bill_street', '', 'Cần Thơ'),
(46, 'ship_street', '', 'Cần Thơ'),
(47, 'label', NULL, 'Mua h&agrave;ng số lượng lớn'),
(47, 'potentialname', NULL, 'Mua h&agrave;ng số lượng lớn'),
(47, 'potential_no', NULL, 'POT2'),
(47, 'amount', NULL, '0.00000000'),
(47, 'related_to', NULL, '4'),
(47, 'closingdate', NULL, '2021-01-25'),
(47, 'sales_stage', NULL, 'Closed Won'),
(47, 'assigned_user_id', NULL, '9'),
(47, 'probability', NULL, '0.000'),
(47, 'createdtime', NULL, '2021-01-22 04:16:35'),
(47, 'modifiedby', NULL, '9'),
(47, 'forecast_amount', NULL, '0.00000000'),
(47, 'contact_id', NULL, '26'),
(47, 'source', NULL, 'CRM'),
(47, 'record_id', NULL, '29'),
(47, 'record_module', NULL, 'Potentials'),
(49, 'assigned_user_id', '9', '10'),
(49, 'modifiedby', '1', '9'),
(50, 'label', NULL, ' Lan'),
(50, 'salutationtype', NULL, 'Ms.'),
(50, 'contact_no', NULL, 'CON4'),
(50, 'lastname', NULL, 'Lan'),
(50, 'assigned_user_id', NULL, '10'),
(50, 'createdtime', NULL, '2021-01-22 04:22:36'),
(50, 'modifiedby', NULL, '10'),
(50, 'source', NULL, 'CRM'),
(50, 'record_id', NULL, '30'),
(50, 'record_module', NULL, 'Contacts'),
(51, 'label', NULL, 'Ch&iacute;nh s&aacute;ch ưu đ&atilde;i'),
(51, 'ticket_no', NULL, 'TT1'),
(51, 'assigned_user_id', NULL, '10'),
(51, 'ticketpriorities', NULL, 'High'),
(51, 'ticketstatus', NULL, 'Open'),
(51, 'hours', NULL, '0.00000000'),
(51, 'days', NULL, '0.00000000'),
(51, 'createdtime', NULL, '2021-01-22 04:23:38'),
(51, 'modifiedby', NULL, '10'),
(51, 'ticket_title', NULL, 'Ch&iacute;nh s&aacute;ch ưu đ&atilde;i'),
(51, 'description', NULL, 'Mua số lượng bao nhi&ecirc;u th&igrave; được chiết khấu?'),
(51, 'contact_id', NULL, '30'),
(51, 'source', NULL, 'CRM'),
(51, 'record_id', NULL, '31'),
(51, 'record_module', NULL, 'HelpDesk'),
(52, 'label', NULL, 'Th&ugrave;ng Coca-cola 330ml (24 lon)'),
(52, 'productname', NULL, 'Th&ugrave;ng Coca-cola 330ml (24 lon)'),
(52, 'product_no', NULL, 'PRO5'),
(52, 'discontinued', NULL, '1'),
(52, 'createdtime', NULL, '2021-01-22 04:26:37'),
(52, 'modifiedby', NULL, '10'),
(52, 'unit_price', NULL, '0.00000000'),
(52, 'commissionrate', NULL, '0.000'),
(52, 'qty_per_unit', NULL, '0.00'),
(52, 'qtyinstock', NULL, '0.000'),
(52, 'assigned_user_id', NULL, '10'),
(52, 'purchase_cost', NULL, '0.00000000'),
(52, 'source', NULL, 'CRM'),
(52, 'record_id', NULL, '32'),
(52, 'record_module', NULL, 'Products'),
(53, 'label', NULL, 'Mua số lượng bao nhi&ecirc;u được t&iacute;nh gi&aacute; sỉ?'),
(53, 'product_id', NULL, '32'),
(53, 'faq_no', NULL, 'FAQ1'),
(53, 'faqstatus', NULL, 'Published'),
(53, 'question', NULL, 'Mua số lượng bao nhi&ecirc;u được t&iacute;nh gi&aacute; sỉ?'),
(53, 'faq_answer', NULL, 'Mua từ 10 th&ugrave;ng trở l&ecirc;n được t&iacute;nh gi&aacute; sỉ'),
(53, 'createdtime', NULL, '2021-01-22 04:28:24'),
(53, 'modifiedby', NULL, '10'),
(53, 'source', NULL, 'CRM'),
(53, 'record_id', NULL, '33'),
(53, 'record_module', NULL, 'Faq'),
(54, 'label', NULL, 'Gửi mail giải đ&aacute;p thắc mắc cho kh&aacute;ch h&agrave;ng'),
(54, 'subject', NULL, 'Gửi mail giải đ&aacute;p thắc mắc cho kh&aacute;ch h&agrave;ng'),
(54, 'assigned_user_id', NULL, '10'),
(54, 'date_start', NULL, '2021-01-22'),
(54, 'time_start', NULL, '04:31:00'),
(54, 'due_date', NULL, '2021-01-22'),
(54, 'duration_hours', NULL, '12'),
(54, 'duration_minutes', NULL, '29'),
(54, 'parent_id', NULL, '31'),
(54, 'activitytype', NULL, 'Task'),
(54, 'createdtime', NULL, '2021-01-22 04:31:53'),
(54, 'visibility', NULL, 'Private'),
(54, 'modifiedby', NULL, '10'),
(54, 'source', NULL, 'CRM'),
(54, 'taskstatus', NULL, 'Completed'),
(54, 'record_id', NULL, '34'),
(54, 'record_module', NULL, 'Calendar'),
(56, 'label', NULL, 'BẢNG CHIẾT KHẤU CHO KH&Aacute;CH SỈ'),
(56, 'date_start', NULL, '2021-01-22'),
(56, 'activitytype', NULL, 'Emails'),
(56, 'assigned_user_id', NULL, '9'),
(56, 'subject', NULL, 'BẢNG CHIẾT KHẤU CHO KH&Aacute;CH SỈ'),
(56, 'description', NULL, '&lt;!DOCTYPE HTML PUBLIC &quot;-//W3C//DTD HTML 4.01//EN&quot; &quot;http://www.w3.org/TR/html4/strict.dtd&quot;&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n	&lt;title&gt;&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body class=&quot;scayt-enabled&quot;&gt;\r\n&lt;div&gt;\r\n&lt;center&gt;\r\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;borderGrey&quot; width=&quot;600px&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr style=&quot;height:50px;&quot;&gt;\r\n			&lt;td colspan=&quot;6&quot; style=&quot;border-top: 1px solid rgb(221, 221, 221); font-family: Helvetica, Verdana, sans-serif; text-align: center;&quot;&gt;&lt;span style=&quot;color:#FF0000;&quot;&gt;&lt;strong&gt;BẢNG CHIẾT KHẤU CHO KH&Aacute;CH SỈ&lt;/strong&gt;&lt;/span&gt;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;em&gt;(Chưa cập nhật)&lt;/em&gt;&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			&lt;br /&gt;\r\n			Cảm ơn qu&yacute; kh&aacute;ch! Hẹn gặp lại!&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td colspan=&quot;6&quot; style=&quot;font-family: Helvetica,Verdana,sans-serif;font-size: 11px;color: #666666;&quot;&gt;\r\n			&lt;table border=&quot;0&quot; cellpadding=&quot;4&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\r\n				&lt;tbody&gt;\r\n					&lt;tr&gt;\r\n						&lt;td colspan=&quot;2&quot; id=&quot;social&quot; valign=&quot;middle&quot;&gt;\r\n						&lt;center&gt;\r\n						&lt;div&gt;&amp;nbsp;&lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt; follow on Twitter&lt;/a&gt; | &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;follow on Facebook&lt;/a&gt;&lt;/div&gt;\r\n						&lt;/center&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n					&lt;!--copy right data--&gt;\r\n					&lt;tr&gt;\r\n						&lt;td valign=&quot;top&quot; width=&quot;350px&quot;&gt;\r\n						&lt;center&gt;\r\n						&lt;div&gt;&lt;em&gt;Copyright &copy; 2021 &lt;a href=&quot;http://www.nhom2crm.com&quot; target=&quot;_blank&quot;&gt;www.nhom2crm.com&lt;/a&gt;, All rights reserved.&lt;/em&gt;&lt;/div&gt;\r\n						&lt;/center&gt;\r\n						&lt;/td&gt;\r\n					&lt;/tr&gt;\r\n				&lt;/tbody&gt;\r\n			&lt;/table&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;/center&gt;\r\n&lt;/div&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;\r\n'),
(56, 'time_start', NULL, '04:39'),
(56, 'createdtime', NULL, '2021-01-22 04:39:35'),
(56, 'modifiedby', NULL, '9'),
(56, 'from_email', NULL, 'tranm2519032@gstudent.ctu.edu.vn'),
(56, 'saved_toid', NULL, '[&quot;lan@gmai.com&quot;]'),
(56, 'ccmail', NULL, '[&quot;&quot;]'),
(56, 'bccmail', NULL, '[&quot;&quot;]'),
(56, 'email_flag', NULL, 'SENT'),
(56, 'source', NULL, 'CRM'),
(56, 'record_id', NULL, '35'),
(56, 'record_module', NULL, 'Emails'),
(57, 'label', NULL, 'Gửi email trả lời'),
(57, 'subject', NULL, 'Gửi email trả lời'),
(57, 'assigned_user_id', NULL, '10'),
(57, 'date_start', NULL, '2021-01-22'),
(57, 'time_start', NULL, '04:41:00'),
(57, 'due_date', NULL, '2021-01-22'),
(57, 'duration_hours', NULL, '12'),
(57, 'duration_minutes', NULL, '19'),
(57, 'parent_id', NULL, '31'),
(57, 'activitytype', NULL, 'Task'),
(57, 'createdtime', NULL, '2021-01-22 04:42:04'),
(57, 'visibility', NULL, 'Private'),
(57, 'modifiedby', NULL, '9'),
(57, 'source', NULL, 'CRM'),
(57, 'taskstatus', NULL, 'Completed'),
(57, 'record_id', NULL, '36'),
(57, 'record_module', NULL, 'Calendar');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_relations`
--

CREATE TABLE `vtiger_modtracker_relations` (
  `id` int(19) NOT NULL,
  `targetmodule` varchar(100) NOT NULL,
  `targetid` int(19) NOT NULL,
  `changedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modtracker_relations`
--

INSERT INTO `vtiger_modtracker_relations` (`id`, `targetmodule`, `targetid`, `changedon`) VALUES
(6, 'Calendar', 6, '2021-01-21 07:32:54'),
(21, 'Calendar', 12, '2021-01-21 09:51:54'),
(25, 'Calendar', 14, '2021-01-21 13:44:43'),
(27, 'Calendar', 14, '2021-01-21 13:45:07'),
(29, 'Quotes', 15, '2021-01-21 13:52:01'),
(36, 'Emails', 18, '2021-01-21 15:50:34'),
(48, 'Potentials', 29, '2021-01-22 04:16:35'),
(55, 'Calendar', 34, '2021-01-22 04:31:53'),
(58, 'Calendar', 36, '2021-01-22 04:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_tabs`
--

CREATE TABLE `vtiger_modtracker_tabs` (
  `tabid` int(11) NOT NULL,
  `visible` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modtracker_tabs`
--

INSERT INTO `vtiger_modtracker_tabs` (`tabid`, `visible`) VALUES
(2, 1),
(4, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(26, 1),
(28, 1),
(31, 1),
(35, 1),
(37, 1),
(38, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(47, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_module_dashboard_widgets`
--

CREATE TABLE `vtiger_module_dashboard_widgets` (
  `id` int(19) NOT NULL,
  `linkid` int(19) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL,
  `filterid` int(19) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `reportid` int(19) DEFAULT NULL,
  `dashboardtabid` int(11) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_module_dashboard_widgets`
--

INSERT INTO `vtiger_module_dashboard_widgets` (`id`, `linkid`, `userid`, `filterid`, `title`, `data`, `position`, `reportid`, `dashboardtabid`, `size`) VALUES
(18, 68, 10, NULL, NULL, 'null', NULL, NULL, 22, NULL),
(19, 68, 9, NULL, NULL, 'null', '{\"row\":\"1\",\"col\":\"1\"}', NULL, 20, NULL),
(20, 67, 9, NULL, NULL, 'null', '{\"row\":\"2\",\"col\":\"1\"}', NULL, 20, NULL),
(21, 59, 9, NULL, NULL, 'null', '{\"row\":\"1\",\"col\":\"3\"}', NULL, 20, NULL),
(22, 103, 9, NULL, NULL, 'null', '{\"row\":\"2\",\"col\":\"2\"}', NULL, 20, NULL),
(23, 62, 9, NULL, NULL, 'null', '{\"row\":\"1\",\"col\":\"2\"}', NULL, 20, NULL),
(24, 60, 9, NULL, NULL, 'null', '{\"row\":\"2\",\"col\":\"3\"}', NULL, 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notebook_contents`
--

CREATE TABLE `vtiger_notebook_contents` (
  `userid` int(19) NOT NULL,
  `notebookid` int(19) NOT NULL,
  `contents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notes`
--

CREATE TABLE `vtiger_notes` (
  `notesid` int(19) NOT NULL DEFAULT 0,
  `note_no` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `notecontent` text DEFAULT NULL,
  `folderid` int(19) NOT NULL DEFAULT 1,
  `filetype` varchar(50) DEFAULT NULL,
  `filelocationtype` varchar(5) DEFAULT NULL,
  `filedownloadcount` int(19) DEFAULT NULL,
  `filestatus` int(19) DEFAULT NULL,
  `filesize` int(19) NOT NULL DEFAULT 0,
  `fileversion` varchar(50) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notescf`
--

CREATE TABLE `vtiger_notescf` (
  `notesid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notificationscheduler`
--

CREATE TABLE `vtiger_notificationscheduler` (
  `schedulednotificationid` int(19) NOT NULL,
  `schedulednotificationname` varchar(200) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `notificationsubject` varchar(200) DEFAULT NULL,
  `notificationbody` text DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_notificationscheduler`
--

INSERT INTO `vtiger_notificationscheduler` (`schedulednotificationid`, `schedulednotificationname`, `active`, `notificationsubject`, `notificationbody`, `label`, `type`) VALUES
(1, 'LBL_TASK_NOTIFICATION_DESCRITPION', 1, 'Task Delay Notification', 'Tasks delayed beyond 24 hrs ', 'LBL_TASK_NOTIFICATION', NULL),
(2, 'LBL_BIG_DEAL_DESCRIPTION', 1, 'Big Deal notification', 'Success! A big deal has been won! ', 'LBL_BIG_DEAL', NULL),
(3, 'LBL_TICKETS_DESCRIPTION', 1, 'Pending Tickets notification', 'Ticket pending please ', 'LBL_PENDING_TICKETS', NULL),
(4, 'LBL_MANY_TICKETS_DESCRIPTION', 1, 'Too many tickets Notification', 'Too many tickets pending against this entity ', 'LBL_MANY_TICKETS', NULL),
(5, 'LBL_START_DESCRIPTION', 1, 'Support Start Notification', '10', 'LBL_START_NOTIFICATION', 'select'),
(6, 'LBL_SUPPORT_DESCRIPTION', 1, 'Support ending please', '11', 'LBL_SUPPORT_NOTICIATION', 'select'),
(7, 'LBL_SUPPORT_DESCRIPTION_MONTH', 1, 'Support ending please', '12', 'LBL_SUPPORT_NOTICIATION_MONTH', 'select'),
(8, 'LBL_ACTIVITY_REMINDER_DESCRIPTION', 1, 'Activity Reminder Notification', 'This is a reminder notification for the Activity', 'LBL_ACTIVITY_NOTIFICATION', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notificationscheduler_seq`
--

CREATE TABLE `vtiger_notificationscheduler_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_notificationscheduler_seq`
--

INSERT INTO `vtiger_notificationscheduler_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_no_of_currency_decimals`
--

CREATE TABLE `vtiger_no_of_currency_decimals` (
  `no_of_currency_decimalsid` int(11) NOT NULL,
  `no_of_currency_decimals` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_no_of_currency_decimals`
--

INSERT INTO `vtiger_no_of_currency_decimals` (`no_of_currency_decimalsid`, `no_of_currency_decimals`, `sortorderid`, `presence`) VALUES
(2, '2', 2, 1),
(3, '3', 3, 1),
(4, '4', 4, 1),
(5, '5', 5, 1),
(6, '0', 0, 1),
(7, '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_no_of_currency_decimals_seq`
--

CREATE TABLE `vtiger_no_of_currency_decimals_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_no_of_currency_decimals_seq`
--

INSERT INTO `vtiger_no_of_currency_decimals_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_opportunitystage`
--

CREATE TABLE `vtiger_opportunitystage` (
  `potstageid` int(19) NOT NULL,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1,
  `probability` decimal(3,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_opportunity_type`
--

CREATE TABLE `vtiger_opportunity_type` (
  `opptypeid` int(19) NOT NULL,
  `opportunity_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_opportunity_type`
--

INSERT INTO `vtiger_opportunity_type` (`opptypeid`, `opportunity_type`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Existing Business', 1, 128, 1, NULL),
(3, 'New Business', 1, 129, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_opportunity_type_seq`
--

CREATE TABLE `vtiger_opportunity_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_opportunity_type_seq`
--

INSERT INTO `vtiger_opportunity_type_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_organizationdetails`
--

CREATE TABLE `vtiger_organizationdetails` (
  `organization_id` int(11) NOT NULL,
  `organizationname` varchar(60) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `logoname` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `vatid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_organizationdetails`
--

INSERT INTO `vtiger_organizationdetails` (`organization_id`, `organizationname`, `address`, `city`, `state`, `country`, `code`, `phone`, `fax`, `website`, `logoname`, `logo`, `vatid`) VALUES
(1, 'Nhom2crm', 'Đại học Cần Thơ', 'Cần Thơ', 'Karnataka', 'Việt Nam', '900000', '+84 9243602352', '+91 9243602352', 'www.nhom2crm.com', 'vtiger-crm-logo.png', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_organizationdetails_seq`
--

CREATE TABLE `vtiger_organizationdetails_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_organizationdetails_seq`
--

INSERT INTO `vtiger_organizationdetails_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_org_share_action2tab`
--

CREATE TABLE `vtiger_org_share_action2tab` (
  `share_action_id` int(19) NOT NULL,
  `tabid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_org_share_action2tab`
--

INSERT INTO `vtiger_org_share_action2tab` (`share_action_id`, `tabid`) VALUES
(0, 2),
(0, 4),
(0, 6),
(0, 7),
(0, 8),
(0, 9),
(0, 10),
(0, 13),
(0, 14),
(0, 16),
(0, 18),
(0, 20),
(0, 21),
(0, 22),
(0, 23),
(0, 26),
(0, 31),
(0, 35),
(0, 37),
(0, 38),
(0, 42),
(0, 43),
(0, 44),
(0, 45),
(0, 47),
(1, 2),
(1, 4),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 13),
(1, 14),
(1, 16),
(1, 18),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 26),
(1, 31),
(1, 35),
(1, 37),
(1, 38),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 47),
(2, 2),
(2, 4),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 13),
(2, 14),
(2, 16),
(2, 18),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 26),
(2, 31),
(2, 35),
(2, 37),
(2, 38),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 47),
(3, 2),
(3, 4),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 13),
(3, 14),
(3, 16),
(3, 18),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 26),
(3, 31),
(3, 35),
(3, 37),
(3, 38),
(3, 42),
(3, 43),
(3, 44),
(3, 45),
(3, 47);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_org_share_action_mapping`
--

CREATE TABLE `vtiger_org_share_action_mapping` (
  `share_action_id` int(19) NOT NULL,
  `share_action_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_org_share_action_mapping`
--

INSERT INTO `vtiger_org_share_action_mapping` (`share_action_id`, `share_action_name`) VALUES
(0, 'Public: Read Only'),
(1, 'Public: Read, Create/Edit'),
(2, 'Public: Read, Create/Edit, Delete'),
(3, 'Private'),
(4, 'Hide Details'),
(5, 'Hide Details and Add Events'),
(6, 'Show Details'),
(7, 'Show Details and Add Events');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_othereventduration`
--

CREATE TABLE `vtiger_othereventduration` (
  `othereventdurationid` int(11) NOT NULL,
  `othereventduration` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_othereventduration`
--

INSERT INTO `vtiger_othereventduration` (`othereventdurationid`, `othereventduration`, `sortorderid`, `presence`) VALUES
(1, '5', 0, 1),
(2, '10', 1, 1),
(3, '30', 2, 1),
(4, '60', 3, 1),
(5, '120', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_othereventduration_seq`
--

CREATE TABLE `vtiger_othereventduration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_othereventduration_seq`
--

INSERT INTO `vtiger_othereventduration_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_parenttab`
--

CREATE TABLE `vtiger_parenttab` (
  `parenttabid` int(19) NOT NULL,
  `parenttab_label` varchar(100) NOT NULL,
  `sequence` int(10) NOT NULL,
  `visible` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_parenttab`
--

INSERT INTO `vtiger_parenttab` (`parenttabid`, `parenttab_label`, `sequence`, `visible`) VALUES
(1, 'My Home Page', 1, 0),
(2, 'Marketing', 2, 0),
(3, 'Sales', 3, 0),
(4, 'Support', 4, 0),
(5, 'Analytics', 5, 0),
(6, 'Inventory', 6, 0),
(7, 'Tools', 7, 0),
(8, 'Settings', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_parenttabrel`
--

CREATE TABLE `vtiger_parenttabrel` (
  `parenttabid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `sequence` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_parenttabrel`
--

INSERT INTO `vtiger_parenttabrel` (`parenttabid`, `tabid`, `sequence`) VALUES
(1, 9, 2),
(1, 28, 4),
(1, 3, 1),
(3, 7, 1),
(3, 6, 2),
(3, 4, 3),
(3, 2, 4),
(3, 20, 5),
(3, 22, 6),
(3, 23, 7),
(3, 19, 8),
(3, 8, 9),
(4, 13, 1),
(4, 15, 2),
(4, 6, 3),
(4, 4, 4),
(4, 8, 5),
(5, 1, 2),
(5, 25, 1),
(6, 14, 1),
(6, 18, 2),
(6, 19, 3),
(6, 21, 4),
(6, 22, 5),
(6, 20, 6),
(6, 23, 7),
(7, 24, 1),
(7, 27, 2),
(7, 8, 3),
(2, 26, 1),
(2, 6, 2),
(2, 4, 3),
(2, 28, 4),
(4, 28, 7),
(2, 7, 5),
(2, 9, 6),
(4, 9, 8),
(2, 8, 8),
(3, 9, 11),
(7, 30, 4),
(7, 30, 5),
(6, 31, 8),
(6, 31, 9),
(7, 35, 6),
(7, 35, 7),
(4, 37, 9),
(4, 37, 10),
(7, 39, 8),
(7, 39, 9),
(7, 40, 10),
(7, 40, 11),
(3, 42, 12),
(3, 42, 13),
(4, 43, 11),
(4, 43, 12),
(4, 44, 13),
(4, 44, 14),
(4, 45, 15),
(4, 45, 16),
(6, 47, 10),
(6, 47, 11),
(8, 49, 1),
(8, 49, 2),
(7, 24, 12),
(7, 27, 13),
(7, 40, 14),
(7, 39, 15);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_payment_duration`
--

CREATE TABLE `vtiger_payment_duration` (
  `payment_duration_id` int(11) DEFAULT NULL,
  `payment_duration` varchar(200) DEFAULT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_payment_duration`
--

INSERT INTO `vtiger_payment_duration` (`payment_duration_id`, `payment_duration`, `sortorderid`, `presence`, `color`) VALUES
(1, 'Net 30 days', 6, 1, NULL),
(2, 'Net 45 days', 7, 1, NULL),
(3, 'Net 60 days', 8, 1, NULL),
(4, 'Net 01 day', 1, 1, NULL),
(5, 'Net 05 days', 2, 1, NULL),
(6, 'Net 07 days', 3, 1, NULL),
(7, 'Net 10 days', 4, 1, NULL),
(8, 'Net 15 days', 5, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_payment_duration_seq`
--

CREATE TABLE `vtiger_payment_duration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_payment_duration_seq`
--

INSERT INTO `vtiger_payment_duration_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanager`
--

CREATE TABLE `vtiger_pbxmanager` (
  `pbxmanagerid` int(20) NOT NULL,
  `direction` varchar(10) DEFAULT NULL,
  `callstatus` varchar(20) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `totalduration` int(11) DEFAULT NULL,
  `billduration` int(11) DEFAULT NULL,
  `recordingurl` varchar(200) DEFAULT NULL,
  `sourceuuid` varchar(100) DEFAULT NULL,
  `gateway` varchar(20) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `customernumber` varchar(100) DEFAULT NULL,
  `customertype` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanagercf`
--

CREATE TABLE `vtiger_pbxmanagercf` (
  `pbxmanagerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanager_gateway`
--

CREATE TABLE `vtiger_pbxmanager_gateway` (
  `id` int(11) NOT NULL,
  `gateway` varchar(20) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanager_phonelookup`
--

CREATE TABLE `vtiger_pbxmanager_phonelookup` (
  `crmid` int(20) DEFAULT NULL,
  `setype` varchar(30) DEFAULT NULL,
  `fnumber` varchar(100) DEFAULT NULL,
  `rnumber` varchar(100) DEFAULT NULL,
  `fieldname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_pbxmanager_phonelookup`
--

INSERT INTO `vtiger_pbxmanager_phonelookup` (`crmid`, `setype`, `fnumber`, `rnumber`, `fieldname`) VALUES
(2, 'Accounts', '0908123445', '5443218090', 'phone'),
(3, 'Accounts', '0903898442', '2448983090', 'phone'),
(4, 'Accounts', '0912344566', '6654432190', 'phone'),
(5, 'Leads', '0902203451', '1543022090', 'phone'),
(10, 'Leads', '0909212345', '5432129090', 'mobile'),
(13, 'Accounts', '0909123456', '6543219090', 'phone'),
(26, 'Contacts', '0973123321', '1233213790', 'mobile');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist`
--

CREATE TABLE `vtiger_picklist` (
  `picklistid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_picklist`
--

INSERT INTO `vtiger_picklist` (`picklistid`, `name`) VALUES
(1, 'accounttype'),
(2, 'activitytype'),
(45, 'assetstatus'),
(3, 'campaignstatus'),
(4, 'campaigntype'),
(5, 'carrier'),
(35, 'contract_priority'),
(34, 'contract_status'),
(36, 'contract_type'),
(48, 'defaultactivitytype'),
(47, 'defaulteventstatus'),
(49, 'defaultlandingpage'),
(6, 'eventstatus'),
(7, 'expectedresponse'),
(8, 'faqcategories'),
(9, 'faqstatus'),
(10, 'glacct'),
(11, 'industry'),
(12, 'invoicestatus'),
(13, 'leadsource'),
(14, 'leadstatus'),
(15, 'manufacturer'),
(16, 'opportunity_type'),
(17, 'postatus'),
(18, 'productcategory'),
(44, 'progress'),
(37, 'projectmilestonetype'),
(43, 'projectpriority'),
(41, 'projectstatus'),
(39, 'projecttaskpriority'),
(40, 'projecttaskprogress'),
(46, 'projecttaskstatus'),
(38, 'projecttasktype'),
(42, 'projecttype'),
(19, 'quotestage'),
(20, 'rating'),
(21, 'sales_stage'),
(22, 'salutationtype'),
(32, 'servicecategory'),
(31, 'service_usageunit'),
(23, 'sostatus'),
(24, 'taskpriority'),
(25, 'taskstatus'),
(26, 'ticketcategories'),
(27, 'ticketpriorities'),
(28, 'ticketseverities'),
(29, 'ticketstatus'),
(33, 'tracking_unit'),
(30, 'usageunit');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklistvalues_seq`
--

CREATE TABLE `vtiger_picklistvalues_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_picklistvalues_seq`
--

INSERT INTO `vtiger_picklistvalues_seq` (`id`) VALUES
(304);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist_dependency`
--

CREATE TABLE `vtiger_picklist_dependency` (
  `id` int(11) NOT NULL,
  `tabid` int(19) NOT NULL,
  `sourcefield` varchar(255) DEFAULT NULL,
  `targetfield` varchar(255) DEFAULT NULL,
  `sourcevalue` varchar(100) DEFAULT NULL,
  `targetvalues` text DEFAULT NULL,
  `criteria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist_seq`
--

CREATE TABLE `vtiger_picklist_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_picklist_seq`
--

INSERT INTO `vtiger_picklist_seq` (`id`) VALUES
(49);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist_transitions`
--

CREATE TABLE `vtiger_picklist_transitions` (
  `fieldname` varchar(255) NOT NULL,
  `module` varchar(100) NOT NULL,
  `transition_data` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pobillads`
--

CREATE TABLE `vtiger_pobillads` (
  `pobilladdressid` int(19) NOT NULL DEFAULT 0,
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_portal`
--

CREATE TABLE `vtiger_portal` (
  `portalid` int(19) NOT NULL,
  `portalname` varchar(200) NOT NULL,
  `portalurl` varchar(255) NOT NULL,
  `sequence` int(3) NOT NULL,
  `setdefault` int(3) NOT NULL DEFAULT 0,
  `createdtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_portalinfo`
--

CREATE TABLE `vtiger_portalinfo` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `cryptmode` varchar(20) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `isactive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_poshipads`
--

CREATE TABLE `vtiger_poshipads` (
  `poshipaddressid` int(19) NOT NULL DEFAULT 0,
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_postatus`
--

CREATE TABLE `vtiger_postatus` (
  `postatusid` int(19) NOT NULL,
  `postatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_postatus`
--

INSERT INTO `vtiger_postatus` (`postatusid`, `postatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Created', 0, 130, 0, NULL),
(2, 'Approved', 0, 131, 1, NULL),
(3, 'Delivered', 0, 132, 2, NULL),
(4, 'Cancelled', 0, 133, 3, NULL),
(5, 'Received Shipment', 0, 134, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_postatushistory`
--

CREATE TABLE `vtiger_postatushistory` (
  `historyid` int(19) NOT NULL,
  `purchaseorderid` int(19) NOT NULL,
  `vendorname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `postatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_postatus_seq`
--

CREATE TABLE `vtiger_postatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_postatus_seq`
--

INSERT INTO `vtiger_postatus_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_potential`
--

CREATE TABLE `vtiger_potential` (
  `potentialid` int(19) NOT NULL DEFAULT 0,
  `potential_no` varchar(100) NOT NULL,
  `related_to` int(19) DEFAULT NULL,
  `potentialname` varchar(120) NOT NULL,
  `amount` decimal(25,8) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `closingdate` date DEFAULT NULL,
  `typeofrevenue` varchar(50) DEFAULT NULL,
  `nextstep` varchar(100) DEFAULT NULL,
  `private` int(1) DEFAULT 0,
  `probability` decimal(7,3) DEFAULT 0.000,
  `campaignid` int(19) DEFAULT NULL,
  `sales_stage` varchar(200) DEFAULT NULL,
  `potentialtype` varchar(200) DEFAULT NULL,
  `leadsource` varchar(200) DEFAULT NULL,
  `productid` int(50) DEFAULT NULL,
  `productversion` varchar(50) DEFAULT NULL,
  `quotationref` varchar(50) DEFAULT NULL,
  `partnercontact` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `runtimefee` int(19) DEFAULT 0,
  `followupdate` date DEFAULT NULL,
  `evaluationstatus` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `forecastcategory` int(19) DEFAULT 0,
  `outcomeanalysis` int(19) DEFAULT 0,
  `forecast_amount` decimal(25,8) DEFAULT NULL,
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  `contact_id` int(19) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `converted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_potential`
--

INSERT INTO `vtiger_potential` (`potentialid`, `potential_no`, `related_to`, `potentialname`, `amount`, `currency`, `closingdate`, `typeofrevenue`, `nextstep`, `private`, `probability`, `campaignid`, `sales_stage`, `potentialtype`, `leadsource`, `productid`, `productversion`, `quotationref`, `partnercontact`, `remarks`, `runtimefee`, `followupdate`, `evaluationstatus`, `description`, `forecastcategory`, `outcomeanalysis`, `forecast_amount`, `isconvertedfromlead`, `contact_id`, `tags`, `converted`) VALUES
(27, 'POT1', 25, 'KH cá nhân', '500000.00000000', NULL, '2021-01-25', NULL, '', 0, '0.000', 0, 'Prospecting', '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, '0.00000000', '1', 26, '', 0),
(29, 'POT2', 4, 'Mua hàng số lượng lớn', '0.00000000', NULL, '2021-01-25', NULL, '', 0, '0.000', 0, 'Closed Won', '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, '0.00000000', '0', 26, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_potentialscf`
--

CREATE TABLE `vtiger_potentialscf` (
  `potentialid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_potentialscf`
--

INSERT INTO `vtiger_potentialscf` (`potentialid`) VALUES
(27),
(29);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_potstagehistory`
--

CREATE TABLE `vtiger_potstagehistory` (
  `historyid` int(19) NOT NULL,
  `potentialid` int(19) NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `stage` varchar(100) DEFAULT NULL,
  `probability` decimal(7,3) DEFAULT NULL,
  `expectedrevenue` decimal(10,0) DEFAULT NULL,
  `closedate` date DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pricebook`
--

CREATE TABLE `vtiger_pricebook` (
  `pricebookid` int(19) NOT NULL DEFAULT 0,
  `pricebook_no` varchar(100) NOT NULL,
  `bookname` varchar(100) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pricebookcf`
--

CREATE TABLE `vtiger_pricebookcf` (
  `pricebookid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pricebookproductrel`
--

CREATE TABLE `vtiger_pricebookproductrel` (
  `pricebookid` int(19) NOT NULL,
  `productid` int(19) NOT NULL,
  `listprice` decimal(27,8) DEFAULT NULL,
  `usedcurrency` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_priority`
--

CREATE TABLE `vtiger_priority` (
  `priorityid` int(19) NOT NULL,
  `priority` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcategory`
--

CREATE TABLE `vtiger_productcategory` (
  `productcategoryid` int(19) NOT NULL,
  `productcategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_productcategory`
--

INSERT INTO `vtiger_productcategory` (`productcategoryid`, `productcategory`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Hardware', 1, 136, 1, NULL),
(3, 'Software', 1, 137, 2, NULL),
(4, 'CRM Applications', 1, 138, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcategory_seq`
--

CREATE TABLE `vtiger_productcategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_productcategory_seq`
--

INSERT INTO `vtiger_productcategory_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcf`
--

CREATE TABLE `vtiger_productcf` (
  `productid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_productcf`
--

INSERT INTO `vtiger_productcf` (`productid`) VALUES
(7),
(8),
(22),
(23),
(32);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcurrencyrel`
--

CREATE TABLE `vtiger_productcurrencyrel` (
  `productid` int(11) NOT NULL,
  `currencyid` int(11) NOT NULL,
  `converted_price` decimal(28,8) DEFAULT NULL,
  `actual_price` decimal(28,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_productcurrencyrel`
--

INSERT INTO `vtiger_productcurrencyrel` (`productid`, `currencyid`, `converted_price`, `actual_price`) VALUES
(8, 1, '260000.00000000', '260000.00000000'),
(7, 1, '218000.00000000', '218000.00000000'),
(22, 1, '98000.00000000', '98000.00000000'),
(23, 1, '42000.00000000', '42000.00000000');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_products`
--

CREATE TABLE `vtiger_products` (
  `productid` int(11) NOT NULL,
  `product_no` varchar(100) NOT NULL,
  `productname` varchar(100) DEFAULT NULL,
  `productcode` varchar(40) DEFAULT NULL,
  `productcategory` varchar(200) DEFAULT NULL,
  `manufacturer` varchar(200) DEFAULT NULL,
  `qty_per_unit` decimal(11,2) DEFAULT 0.00,
  `unit_price` decimal(25,8) DEFAULT NULL,
  `weight` decimal(11,3) DEFAULT NULL,
  `pack_size` int(11) DEFAULT NULL,
  `sales_start_date` date DEFAULT NULL,
  `sales_end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `cost_factor` int(11) DEFAULT NULL,
  `commissionrate` decimal(7,3) DEFAULT NULL,
  `commissionmethod` varchar(50) DEFAULT NULL,
  `discontinued` int(1) NOT NULL DEFAULT 0,
  `usageunit` varchar(200) DEFAULT NULL,
  `reorderlevel` int(11) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `taxclass` varchar(200) DEFAULT NULL,
  `mfr_part_no` varchar(200) DEFAULT NULL,
  `vendor_part_no` varchar(200) DEFAULT NULL,
  `serialno` varchar(200) DEFAULT NULL,
  `qtyinstock` decimal(25,3) DEFAULT NULL,
  `productsheet` varchar(200) DEFAULT NULL,
  `qtyindemand` int(11) DEFAULT NULL,
  `glacct` varchar(200) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `imagename` text DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `is_subproducts_viewable` int(1) DEFAULT 1,
  `purchase_cost` decimal(27,8) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_products`
--

INSERT INTO `vtiger_products` (`productid`, `product_no`, `productname`, `productcode`, `productcategory`, `manufacturer`, `qty_per_unit`, `unit_price`, `weight`, `pack_size`, `sales_start_date`, `sales_end_date`, `start_date`, `expiry_date`, `cost_factor`, `commissionrate`, `commissionmethod`, `discontinued`, `usageunit`, `reorderlevel`, `website`, `taxclass`, `mfr_part_no`, `vendor_part_no`, `serialno`, `qtyinstock`, `productsheet`, `qtyindemand`, `glacct`, `vendor_id`, `imagename`, `currency_id`, `is_subproducts_viewable`, `purchase_cost`, `tags`) VALUES
(7, 'PRO1', 'Coca-cola 330ml (24 lon)', '', '', '', '200.00', '218000.00000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000', NULL, 1, '', 0, '', '', '', '', '', '0.000', '', 0, '', 0, '', 1, 1, '0.00000000', ''),
(8, 'PRO2', 'Coca-cola Plus 330ml (24 lon)', '', '', '', '100.00', '260000.00000000', NULL, NULL, '2020-12-01', NULL, NULL, NULL, NULL, '0.000', NULL, 1, '', 0, '', '', '', '', '', '0.000', '', 0, '', 0, '', 1, 1, '0.00000000', ''),
(22, 'PRO3', 'La Vie Sparkling hương chanh bạc hà 330ml', '', '', '', '150.00', '98000.00000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000', NULL, 1, '', 0, '', '', '', '', '', '0.000', '', 0, '', 0, '', 1, 1, '0.00000000', ''),
(23, 'PRO4', '7 Up Mojito hương chanh bạc hà 330ml', '', '', '', '50.00', '42000.00000000', NULL, NULL, '2021-01-22', NULL, NULL, NULL, NULL, '0.000', NULL, 1, '', 0, '', '', '', '', '', '0.000', '', 0, '', 0, '', 1, 1, '0.00000000', ''),
(32, 'PRO5', 'Thùng Coca-cola 330ml (24 lon)', '', '', '', '0.00', '0.00000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000', NULL, 1, '', 0, '', '', '', '', '', '0.000', '', 0, '', 0, '', 1, 1, '0.00000000', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_producttaxrel`
--

CREATE TABLE `vtiger_producttaxrel` (
  `productid` int(11) NOT NULL,
  `taxid` int(3) NOT NULL,
  `taxpercentage` decimal(7,3) DEFAULT NULL,
  `regions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_producttaxrel`
--

INSERT INTO `vtiger_producttaxrel` (`productid`, `taxid`, `taxpercentage`, `regions`) VALUES
(8, 1, '4.500', '[]'),
(8, 2, '10.000', '[]'),
(7, 1, '4.500', '[]'),
(7, 2, '10.000', '[]'),
(22, 1, '4.500', '[]'),
(22, 2, '10.000', '[]'),
(23, 1, '4.500', '[]'),
(23, 2, '10.000', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile`
--

CREATE TABLE `vtiger_profile` (
  `profileid` int(10) NOT NULL,
  `profilename` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `directly_related_to_role` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_profile`
--

INSERT INTO `vtiger_profile` (`profileid`, `profilename`, `description`, `directly_related_to_role`) VALUES
(1, 'Administrator', 'Admin Profile', 0),
(2, 'Sales Profile', 'Profile Related to Sales', 0),
(3, 'Support Profile', 'Profile Related to Support', 0),
(4, 'Guest Profile', 'Guest Profile for Test Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2field`
--

CREATE TABLE `vtiger_profile2field` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) DEFAULT NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) DEFAULT NULL,
  `readonly` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_profile2field`
--

INSERT INTO `vtiger_profile2field` (`profileid`, `tabid`, `fieldid`, `visible`, `readonly`) VALUES
(1, 6, 1, 0, 0),
(1, 6, 2, 0, 0),
(1, 6, 3, 0, 0),
(1, 6, 4, 0, 0),
(1, 6, 5, 0, 0),
(1, 6, 6, 0, 0),
(1, 6, 7, 0, 0),
(1, 6, 8, 0, 0),
(1, 6, 9, 0, 0),
(1, 6, 10, 0, 0),
(1, 6, 11, 0, 0),
(1, 6, 12, 0, 0),
(1, 6, 13, 0, 0),
(1, 6, 14, 0, 0),
(1, 6, 15, 0, 0),
(1, 6, 16, 0, 0),
(1, 6, 17, 0, 0),
(1, 6, 18, 0, 0),
(1, 6, 19, 0, 0),
(1, 6, 20, 0, 0),
(1, 6, 21, 0, 0),
(1, 6, 22, 0, 0),
(1, 6, 23, 0, 0),
(1, 6, 24, 0, 0),
(1, 6, 25, 0, 0),
(1, 6, 26, 0, 0),
(1, 6, 27, 0, 0),
(1, 6, 28, 0, 0),
(1, 6, 29, 0, 0),
(1, 6, 30, 0, 0),
(1, 6, 31, 0, 0),
(1, 6, 32, 0, 0),
(1, 6, 33, 0, 0),
(1, 6, 34, 0, 0),
(1, 6, 35, 0, 0),
(1, 6, 36, 0, 0),
(1, 7, 37, 0, 0),
(1, 7, 38, 0, 0),
(1, 7, 39, 0, 0),
(1, 7, 40, 0, 0),
(1, 7, 41, 0, 0),
(1, 7, 42, 0, 0),
(1, 7, 43, 0, 0),
(1, 7, 44, 0, 0),
(1, 7, 45, 0, 0),
(1, 7, 46, 0, 0),
(1, 7, 47, 0, 0),
(1, 7, 48, 0, 0),
(1, 7, 49, 0, 0),
(1, 7, 50, 0, 0),
(1, 7, 51, 0, 0),
(1, 7, 52, 0, 0),
(1, 7, 53, 0, 0),
(1, 7, 54, 0, 0),
(1, 7, 55, 0, 0),
(1, 7, 56, 0, 0),
(1, 7, 57, 0, 0),
(1, 7, 58, 0, 0),
(1, 7, 59, 0, 0),
(1, 7, 60, 0, 0),
(1, 7, 61, 0, 0),
(1, 7, 62, 0, 0),
(1, 7, 63, 0, 0),
(1, 7, 64, 0, 0),
(1, 7, 65, 0, 0),
(1, 4, 66, 0, 0),
(1, 4, 67, 0, 0),
(1, 4, 68, 0, 0),
(1, 4, 69, 0, 0),
(1, 4, 70, 0, 0),
(1, 4, 71, 0, 0),
(1, 4, 72, 0, 0),
(1, 4, 73, 0, 0),
(1, 4, 74, 0, 0),
(1, 4, 75, 0, 0),
(1, 4, 76, 0, 0),
(1, 4, 77, 0, 0),
(1, 4, 78, 0, 0),
(1, 4, 79, 0, 0),
(1, 4, 80, 0, 0),
(1, 4, 81, 0, 0),
(1, 4, 82, 0, 0),
(1, 4, 83, 0, 0),
(1, 4, 84, 0, 0),
(1, 4, 85, 0, 0),
(1, 4, 86, 0, 0),
(1, 4, 87, 0, 0),
(1, 4, 88, 0, 0),
(1, 4, 89, 0, 0),
(1, 4, 90, 0, 0),
(1, 4, 91, 0, 0),
(1, 4, 92, 0, 0),
(1, 4, 93, 0, 0),
(1, 4, 94, 0, 0),
(1, 4, 95, 0, 0),
(1, 4, 96, 0, 0),
(1, 4, 97, 0, 0),
(1, 4, 98, 0, 0),
(1, 4, 99, 0, 0),
(1, 4, 100, 0, 0),
(1, 4, 101, 0, 0),
(1, 4, 102, 0, 0),
(1, 4, 103, 0, 0),
(1, 4, 104, 0, 0),
(1, 4, 105, 0, 0),
(1, 4, 106, 0, 0),
(1, 4, 107, 0, 0),
(1, 4, 108, 0, 0),
(1, 4, 109, 0, 0),
(1, 2, 110, 0, 0),
(1, 2, 111, 0, 0),
(1, 2, 112, 0, 0),
(1, 2, 113, 0, 0),
(1, 2, 114, 0, 0),
(1, 2, 115, 0, 0),
(1, 2, 116, 0, 0),
(1, 2, 117, 0, 0),
(1, 2, 118, 0, 0),
(1, 2, 119, 0, 0),
(1, 2, 120, 0, 0),
(1, 2, 121, 0, 0),
(1, 2, 122, 0, 0),
(1, 2, 123, 0, 0),
(1, 2, 124, 0, 0),
(1, 2, 125, 0, 0),
(1, 26, 126, 0, 0),
(1, 26, 127, 0, 0),
(1, 26, 128, 0, 0),
(1, 26, 129, 0, 0),
(1, 26, 130, 0, 0),
(1, 26, 131, 0, 0),
(1, 26, 132, 0, 0),
(1, 26, 133, 0, 0),
(1, 26, 134, 0, 0),
(1, 26, 135, 0, 0),
(1, 26, 136, 0, 0),
(1, 26, 137, 0, 0),
(1, 26, 138, 0, 0),
(1, 26, 139, 0, 0),
(1, 26, 140, 0, 0),
(1, 26, 141, 0, 0),
(1, 26, 142, 0, 0),
(1, 26, 143, 0, 0),
(1, 26, 144, 0, 0),
(1, 26, 145, 0, 0),
(1, 26, 146, 0, 0),
(1, 26, 147, 0, 0),
(1, 26, 148, 0, 0),
(1, 26, 149, 0, 0),
(1, 26, 150, 0, 0),
(1, 4, 151, 0, 0),
(1, 6, 152, 0, 0),
(1, 7, 153, 0, 0),
(1, 26, 154, 0, 0),
(1, 13, 155, 0, 0),
(1, 13, 156, 0, 0),
(1, 13, 157, 0, 0),
(1, 13, 158, 0, 0),
(1, 13, 159, 0, 0),
(1, 13, 160, 0, 0),
(1, 13, 161, 0, 0),
(1, 13, 162, 0, 0),
(1, 13, 163, 0, 0),
(1, 13, 164, 0, 0),
(1, 13, 165, 0, 0),
(1, 13, 166, 0, 0),
(1, 13, 167, 0, 0),
(1, 13, 168, 0, 0),
(1, 13, 169, 0, 0),
(1, 13, 170, 0, 0),
(1, 13, 171, 0, 0),
(1, 13, 172, 0, 0),
(1, 13, 173, 0, 0),
(1, 14, 174, 0, 0),
(1, 14, 175, 0, 0),
(1, 14, 176, 0, 0),
(1, 14, 177, 0, 0),
(1, 14, 178, 0, 0),
(1, 14, 179, 0, 0),
(1, 14, 180, 0, 0),
(1, 14, 181, 0, 0),
(1, 14, 182, 0, 0),
(1, 14, 183, 0, 0),
(1, 14, 184, 0, 0),
(1, 14, 185, 0, 0),
(1, 14, 186, 0, 0),
(1, 14, 187, 0, 0),
(1, 14, 188, 0, 0),
(1, 14, 189, 0, 0),
(1, 14, 190, 0, 0),
(1, 14, 191, 0, 0),
(1, 14, 192, 0, 0),
(1, 14, 193, 0, 0),
(1, 14, 194, 0, 0),
(1, 14, 195, 0, 0),
(1, 14, 196, 0, 0),
(1, 14, 197, 0, 0),
(1, 14, 198, 0, 0),
(1, 14, 199, 0, 0),
(1, 14, 200, 0, 0),
(1, 14, 201, 0, 0),
(1, 14, 202, 0, 0),
(1, 14, 203, 0, 0),
(1, 14, 204, 0, 0),
(1, 8, 205, 0, 0),
(1, 8, 206, 0, 0),
(1, 8, 207, 0, 0),
(1, 8, 208, 0, 0),
(1, 8, 209, 0, 0),
(1, 8, 210, 0, 0),
(1, 8, 211, 0, 0),
(1, 8, 212, 0, 0),
(1, 8, 213, 0, 0),
(1, 8, 214, 0, 0),
(1, 8, 215, 0, 0),
(1, 8, 216, 0, 0),
(1, 8, 217, 0, 0),
(1, 8, 218, 0, 0),
(1, 8, 219, 0, 0),
(1, 10, 220, 0, 0),
(1, 10, 221, 0, 0),
(1, 10, 222, 0, 0),
(1, 10, 223, 0, 0),
(1, 10, 224, 0, 0),
(1, 10, 225, 0, 0),
(1, 10, 226, 0, 0),
(1, 10, 227, 0, 0),
(1, 10, 228, 0, 0),
(1, 10, 229, 0, 0),
(1, 10, 230, 0, 0),
(1, 10, 231, 0, 0),
(1, 9, 232, 0, 0),
(1, 9, 233, 0, 0),
(1, 9, 234, 0, 0),
(1, 9, 235, 0, 0),
(1, 9, 236, 0, 0),
(1, 9, 237, 0, 0),
(1, 9, 238, 0, 0),
(1, 9, 239, 0, 0),
(1, 9, 240, 0, 0),
(1, 9, 241, 0, 0),
(1, 9, 242, 0, 0),
(1, 9, 243, 0, 0),
(1, 9, 244, 0, 0),
(1, 9, 245, 0, 0),
(1, 9, 246, 0, 0),
(1, 9, 247, 0, 0),
(1, 9, 248, 0, 0),
(1, 9, 249, 0, 0),
(1, 9, 250, 0, 0),
(1, 9, 251, 0, 0),
(1, 9, 252, 0, 0),
(1, 9, 253, 0, 0),
(1, 9, 254, 0, 0),
(1, 9, 255, 0, 0),
(1, 16, 256, 0, 0),
(1, 16, 257, 0, 0),
(1, 16, 258, 0, 0),
(1, 16, 259, 0, 0),
(1, 16, 260, 0, 0),
(1, 16, 261, 0, 0),
(1, 16, 262, 0, 0),
(1, 16, 263, 0, 0),
(1, 16, 264, 0, 0),
(1, 16, 265, 0, 0),
(1, 16, 266, 0, 0),
(1, 16, 267, 0, 0),
(1, 16, 268, 0, 0),
(1, 16, 269, 0, 0),
(1, 16, 270, 0, 0),
(1, 16, 271, 0, 0),
(1, 16, 272, 0, 0),
(1, 16, 273, 0, 0),
(1, 16, 274, 0, 0),
(1, 16, 275, 0, 0),
(1, 16, 276, 0, 0),
(1, 16, 277, 0, 0),
(1, 16, 278, 0, 0),
(1, 15, 279, 0, 0),
(1, 15, 280, 0, 0),
(1, 15, 281, 0, 0),
(1, 15, 282, 0, 0),
(1, 15, 283, 0, 0),
(1, 15, 284, 0, 0),
(1, 15, 285, 0, 0),
(1, 15, 286, 0, 0),
(1, 15, 287, 0, 0),
(1, 15, 288, 0, 0),
(1, 18, 289, 0, 0),
(1, 18, 290, 0, 0),
(1, 18, 291, 0, 0),
(1, 18, 292, 0, 0),
(1, 18, 293, 0, 0),
(1, 18, 294, 0, 0),
(1, 18, 295, 0, 0),
(1, 18, 296, 0, 0),
(1, 18, 297, 0, 0),
(1, 18, 298, 0, 0),
(1, 18, 299, 0, 0),
(1, 18, 300, 0, 0),
(1, 18, 301, 0, 0),
(1, 18, 302, 0, 0),
(1, 18, 303, 0, 0),
(1, 18, 304, 0, 0),
(1, 18, 305, 0, 0),
(1, 19, 306, 0, 0),
(1, 19, 307, 0, 0),
(1, 19, 308, 0, 0),
(1, 19, 309, 0, 0),
(1, 19, 310, 0, 0),
(1, 19, 311, 0, 0),
(1, 19, 312, 0, 0),
(1, 19, 313, 0, 0),
(1, 20, 314, 0, 0),
(1, 20, 315, 0, 0),
(1, 20, 316, 0, 0),
(1, 20, 317, 0, 0),
(1, 20, 318, 0, 0),
(1, 20, 319, 0, 0),
(1, 20, 320, 0, 0),
(1, 20, 321, 0, 0),
(1, 20, 322, 0, 0),
(1, 20, 323, 0, 0),
(1, 20, 324, 0, 0),
(1, 20, 325, 0, 0),
(1, 20, 326, 0, 0),
(1, 20, 327, 0, 0),
(1, 20, 328, 0, 0),
(1, 20, 329, 0, 0),
(1, 20, 330, 0, 0),
(1, 20, 331, 0, 0),
(1, 20, 332, 0, 0),
(1, 20, 333, 0, 0),
(1, 20, 334, 0, 0),
(1, 20, 335, 0, 0),
(1, 20, 336, 0, 0),
(1, 20, 337, 0, 0),
(1, 20, 338, 0, 0),
(1, 20, 339, 0, 0),
(1, 20, 340, 0, 0),
(1, 20, 341, 0, 0),
(1, 20, 342, 0, 0),
(1, 20, 343, 0, 0),
(1, 20, 344, 0, 0),
(1, 20, 345, 0, 0),
(1, 20, 346, 0, 0),
(1, 20, 347, 0, 0),
(1, 20, 348, 0, 0),
(1, 20, 349, 0, 0),
(1, 20, 350, 0, 0),
(1, 21, 351, 0, 0),
(1, 21, 352, 0, 0),
(1, 21, 353, 0, 0),
(1, 21, 354, 0, 0),
(1, 21, 355, 0, 0),
(1, 21, 356, 0, 0),
(1, 21, 357, 0, 0),
(1, 21, 358, 0, 0),
(1, 21, 359, 0, 0),
(1, 21, 360, 0, 0),
(1, 21, 361, 0, 0),
(1, 21, 362, 0, 0),
(1, 21, 363, 0, 0),
(1, 21, 364, 0, 0),
(1, 21, 365, 0, 0),
(1, 21, 366, 0, 0),
(1, 21, 367, 0, 0),
(1, 21, 368, 0, 0),
(1, 21, 369, 0, 0),
(1, 21, 370, 0, 0),
(1, 21, 371, 0, 0),
(1, 21, 372, 0, 0),
(1, 21, 373, 0, 0),
(1, 21, 374, 0, 0),
(1, 21, 375, 0, 0),
(1, 21, 376, 0, 0),
(1, 21, 377, 0, 0),
(1, 21, 378, 0, 0),
(1, 21, 379, 0, 0),
(1, 21, 380, 0, 0),
(1, 21, 381, 0, 0),
(1, 21, 382, 0, 0),
(1, 21, 383, 0, 0),
(1, 21, 384, 0, 0),
(1, 21, 385, 0, 0),
(1, 21, 386, 0, 0),
(1, 21, 387, 0, 0),
(1, 21, 388, 0, 0),
(1, 22, 389, 0, 0),
(1, 22, 390, 0, 0),
(1, 22, 391, 0, 0),
(1, 22, 392, 0, 0),
(1, 22, 393, 0, 0),
(1, 22, 394, 0, 0),
(1, 22, 395, 0, 0),
(1, 22, 396, 0, 0),
(1, 22, 397, 0, 0),
(1, 22, 398, 0, 0),
(1, 22, 399, 0, 0),
(1, 22, 400, 0, 0),
(1, 22, 401, 0, 0),
(1, 22, 402, 0, 0),
(1, 22, 403, 0, 0),
(1, 22, 404, 0, 0),
(1, 22, 405, 0, 0),
(1, 22, 406, 0, 0),
(1, 22, 407, 0, 0),
(1, 22, 408, 0, 0),
(1, 22, 409, 0, 0),
(1, 22, 410, 0, 0),
(1, 22, 411, 0, 0),
(1, 22, 412, 0, 0),
(1, 22, 413, 0, 0),
(1, 22, 414, 0, 0),
(1, 22, 415, 0, 0),
(1, 22, 416, 0, 0),
(1, 22, 417, 0, 0),
(1, 22, 418, 0, 0),
(1, 22, 419, 0, 0),
(1, 22, 420, 0, 0),
(1, 22, 421, 0, 0),
(1, 22, 422, 0, 0),
(1, 22, 423, 0, 0),
(1, 22, 424, 0, 0),
(1, 22, 425, 0, 0),
(1, 22, 426, 0, 0),
(1, 22, 427, 0, 0),
(1, 22, 428, 0, 0),
(1, 22, 429, 0, 0),
(1, 22, 430, 0, 0),
(1, 22, 431, 0, 0),
(1, 22, 432, 0, 0),
(1, 22, 433, 0, 0),
(1, 22, 434, 0, 0),
(1, 22, 435, 0, 0),
(1, 23, 436, 0, 0),
(1, 23, 437, 0, 0),
(1, 23, 438, 0, 0),
(1, 23, 439, 0, 0),
(1, 23, 440, 0, 0),
(1, 23, 441, 0, 0),
(1, 23, 442, 0, 0),
(1, 23, 443, 0, 0),
(1, 23, 444, 0, 0),
(1, 23, 445, 0, 0),
(1, 23, 446, 0, 0),
(1, 23, 447, 0, 0),
(1, 23, 448, 0, 0),
(1, 23, 449, 0, 0),
(1, 23, 450, 0, 0),
(1, 23, 451, 0, 0),
(1, 23, 452, 0, 0),
(1, 23, 453, 0, 0),
(1, 23, 454, 0, 0),
(1, 23, 455, 0, 0),
(1, 23, 456, 0, 0),
(1, 23, 457, 0, 0),
(1, 23, 458, 0, 0),
(1, 23, 459, 0, 0),
(1, 23, 460, 0, 0),
(1, 23, 461, 0, 0),
(1, 23, 462, 0, 0),
(1, 23, 463, 0, 0),
(1, 23, 464, 0, 0),
(1, 23, 465, 0, 0),
(1, 23, 466, 0, 0),
(1, 23, 467, 0, 0),
(1, 23, 468, 0, 0),
(1, 23, 469, 0, 0),
(1, 23, 470, 0, 0),
(1, 23, 471, 0, 0),
(1, 23, 472, 0, 0),
(1, 23, 473, 0, 0),
(1, 23, 474, 0, 0),
(1, 29, 475, 0, 0),
(1, 29, 479, 0, 0),
(1, 29, 480, 0, 0),
(1, 29, 482, 0, 0),
(1, 29, 489, 0, 0),
(1, 29, 490, 0, 0),
(1, 29, 491, 0, 0),
(1, 29, 492, 0, 0),
(1, 29, 493, 0, 0),
(1, 29, 495, 0, 0),
(1, 29, 496, 0, 0),
(1, 29, 497, 0, 0),
(1, 29, 498, 0, 0),
(1, 29, 499, 0, 0),
(1, 29, 504, 0, 0),
(1, 29, 505, 0, 0),
(1, 29, 506, 0, 0),
(1, 29, 507, 0, 0),
(1, 29, 515, 0, 0),
(1, 10, 520, 0, 0),
(1, 10, 521, 0, 0),
(1, 10, 522, 0, 0),
(1, 10, 523, 0, 0),
(1, 10, 524, 0, 0),
(1, 10, 525, 0, 0),
(1, 31, 526, 0, 0),
(1, 31, 527, 0, 0),
(1, 31, 528, 0, 0),
(1, 31, 529, 0, 0),
(1, 31, 530, 0, 0),
(1, 31, 531, 0, 0),
(1, 31, 532, 0, 0),
(1, 31, 533, 0, 0),
(1, 31, 534, 0, 0),
(1, 31, 535, 0, 0),
(1, 31, 536, 0, 0),
(1, 31, 537, 0, 0),
(1, 31, 538, 0, 0),
(1, 31, 539, 0, 0),
(1, 31, 540, 0, 0),
(1, 31, 541, 0, 0),
(1, 31, 542, 0, 0),
(1, 31, 543, 0, 0),
(1, 31, 544, 0, 0),
(1, 31, 545, 0, 0),
(1, 31, 546, 0, 0),
(1, 31, 547, 0, 0),
(1, 35, 548, 0, 0),
(1, 35, 549, 0, 0),
(1, 35, 550, 0, 0),
(1, 35, 551, 0, 0),
(1, 35, 552, 0, 0),
(1, 35, 553, 0, 0),
(1, 35, 554, 0, 0),
(1, 35, 555, 0, 0),
(1, 35, 556, 0, 0),
(1, 35, 557, 0, 0),
(1, 35, 558, 0, 0),
(1, 35, 559, 0, 0),
(1, 35, 560, 0, 0),
(1, 35, 561, 0, 0),
(1, 35, 562, 0, 0),
(1, 35, 563, 0, 0),
(1, 35, 564, 0, 0),
(1, 29, 565, 0, 0),
(1, 37, 566, 0, 0),
(1, 37, 567, 0, 0),
(1, 37, 568, 0, 0),
(1, 37, 569, 0, 0),
(1, 37, 570, 0, 0),
(1, 37, 571, 0, 0),
(1, 37, 572, 0, 0),
(1, 37, 573, 0, 0),
(1, 37, 574, 0, 0),
(1, 37, 575, 0, 0),
(1, 37, 576, 0, 0),
(1, 37, 577, 0, 0),
(1, 37, 578, 0, 0),
(1, 37, 579, 0, 0),
(1, 37, 580, 0, 0),
(1, 37, 581, 0, 0),
(1, 37, 582, 0, 0),
(1, 37, 583, 0, 0),
(1, 37, 584, 0, 0),
(1, 37, 585, 0, 0),
(1, 37, 586, 0, 0),
(1, 37, 587, 0, 0),
(1, 38, 588, 0, 0),
(1, 38, 589, 0, 0),
(1, 38, 590, 0, 0),
(1, 38, 591, 0, 0),
(1, 38, 592, 0, 0),
(1, 38, 593, 0, 0),
(1, 38, 594, 0, 0),
(1, 38, 595, 0, 0),
(1, 42, 596, 0, 0),
(1, 42, 597, 0, 0),
(1, 42, 598, 0, 0),
(1, 42, 599, 0, 0),
(1, 42, 600, 0, 0),
(1, 42, 601, 0, 0),
(1, 43, 602, 0, 0),
(1, 43, 603, 0, 0),
(1, 43, 604, 0, 0),
(1, 43, 605, 0, 0),
(1, 43, 606, 0, 0),
(1, 43, 607, 0, 0),
(1, 43, 608, 0, 0),
(1, 43, 609, 0, 0),
(1, 43, 610, 0, 0),
(1, 43, 611, 0, 0),
(1, 43, 612, 0, 0),
(1, 43, 613, 0, 0),
(1, 43, 614, 0, 0),
(1, 44, 615, 0, 0),
(1, 44, 616, 0, 0),
(1, 44, 617, 0, 0),
(1, 44, 618, 0, 0),
(1, 44, 619, 0, 0),
(1, 44, 620, 0, 0),
(1, 44, 621, 0, 0),
(1, 44, 622, 0, 0),
(1, 44, 623, 0, 0),
(1, 44, 624, 0, 0),
(1, 44, 625, 0, 0),
(1, 44, 626, 0, 0),
(1, 44, 627, 0, 0),
(1, 44, 628, 0, 0),
(1, 44, 629, 0, 0),
(1, 44, 630, 0, 0),
(1, 44, 631, 0, 0),
(1, 44, 632, 0, 0),
(1, 45, 633, 0, 0),
(1, 45, 634, 0, 0),
(1, 45, 635, 0, 0),
(1, 45, 636, 0, 0),
(1, 45, 637, 0, 0),
(1, 45, 638, 0, 0),
(1, 45, 639, 0, 0),
(1, 45, 640, 0, 0),
(1, 45, 641, 0, 0),
(1, 45, 642, 0, 0),
(1, 45, 643, 0, 0),
(1, 45, 644, 0, 0),
(1, 45, 645, 0, 0),
(1, 45, 646, 0, 0),
(1, 45, 647, 0, 0),
(1, 45, 648, 0, 0),
(1, 45, 649, 0, 0),
(1, 45, 650, 0, 0),
(1, 45, 651, 0, 0),
(1, 45, 652, 0, 0),
(1, 47, 653, 0, 0),
(1, 47, 654, 0, 0),
(1, 47, 655, 0, 0),
(1, 47, 656, 0, 0),
(1, 47, 657, 0, 0),
(1, 47, 658, 0, 0),
(1, 47, 659, 0, 0),
(1, 47, 660, 0, 0),
(1, 47, 661, 0, 0),
(1, 47, 662, 0, 0),
(1, 47, 663, 0, 0),
(1, 47, 664, 0, 0),
(1, 47, 665, 0, 0),
(1, 47, 666, 0, 0),
(1, 47, 667, 0, 0),
(1, 47, 668, 0, 0),
(1, 47, 669, 0, 0),
(1, 47, 670, 0, 0),
(1, 47, 671, 0, 0),
(1, 47, 672, 0, 0),
(1, 47, 673, 0, 0),
(1, 2, 674, 0, 0),
(1, 29, 675, 0, 0),
(1, 23, 676, 0, 0),
(1, 23, 677, 0, 0),
(1, 23, 678, 0, 0),
(1, 23, 679, 0, 0),
(1, 23, 680, 0, 0),
(1, 23, 681, 0, 0),
(1, 23, 682, 0, 0),
(1, 23, 683, 0, 0),
(1, 23, 684, 0, 0),
(1, 22, 685, 0, 0),
(1, 22, 686, 0, 0),
(1, 22, 687, 0, 0),
(1, 22, 688, 0, 0),
(1, 22, 689, 0, 0),
(1, 22, 690, 0, 0),
(1, 22, 691, 0, 0),
(1, 22, 692, 0, 0),
(1, 22, 693, 0, 0),
(1, 21, 694, 0, 0),
(1, 21, 695, 0, 0),
(1, 21, 696, 0, 0),
(1, 21, 697, 0, 0),
(1, 21, 698, 0, 0),
(1, 21, 699, 0, 0),
(1, 21, 700, 0, 0),
(1, 21, 701, 0, 0),
(1, 21, 702, 0, 0),
(1, 20, 703, 0, 0),
(1, 20, 704, 0, 0),
(1, 20, 705, 0, 0),
(1, 20, 706, 0, 0),
(1, 20, 707, 0, 0),
(1, 20, 708, 0, 0),
(1, 20, 709, 0, 0),
(1, 20, 710, 0, 0),
(1, 20, 711, 0, 0),
(1, 29, 712, 0, 0),
(1, 44, 713, 0, 0),
(1, 38, 714, 0, 0),
(1, 29, 715, 0, 0),
(1, 29, 716, 0, 0),
(1, 29, 717, 0, 0),
(1, 23, 718, 0, 0),
(1, 22, 719, 0, 0),
(1, 21, 720, 0, 0),
(1, 20, 721, 0, 0),
(1, 29, 722, 0, 0),
(1, 6, 723, 0, 0),
(1, 4, 724, 0, 0),
(1, 2, 725, 0, 0),
(1, 29, 726, 0, 0),
(1, 23, 727, 0, 0),
(1, 23, 728, 0, 0),
(1, 21, 729, 0, 0),
(1, 21, 730, 0, 0),
(1, 18, 731, 0, 0),
(1, 7, 732, 0, 0),
(1, 38, 733, 0, 0),
(1, 38, 734, 0, 0),
(1, 23, 735, 0, 0),
(1, 20, 736, 0, 0),
(1, 21, 737, 0, 0),
(1, 22, 738, 0, 0),
(1, 29, 739, 0, 0),
(1, 2, 740, 0, 0),
(1, 13, 741, 0, 0),
(1, 29, 742, 0, 0),
(1, 29, 743, 0, 0),
(1, 29, 744, 0, 0),
(1, 29, 745, 0, 0),
(1, 14, 772, 0, 0),
(1, 31, 773, 0, 0),
(1, 23, 774, 0, 0),
(1, 29, 775, 0, 0),
(1, 23, 776, 0, 0),
(1, 23, 777, 0, 0),
(1, 23, 778, 0, 0),
(1, 20, 779, 0, 0),
(1, 20, 780, 0, 0),
(1, 20, 781, 0, 0),
(1, 21, 782, 0, 0),
(1, 22, 783, 0, 0),
(1, 22, 784, 0, 0),
(1, 22, 785, 0, 0),
(1, 38, 786, 0, 0),
(1, 38, 787, 0, 0),
(1, 38, 788, 0, 0),
(1, 2, 789, 0, 0),
(1, 4, 790, 0, 0),
(1, 6, 791, 0, 0),
(1, 7, 792, 0, 0),
(1, 8, 793, 0, 0),
(1, 9, 794, 0, 0),
(1, 10, 795, 0, 0),
(1, 13, 796, 0, 0),
(1, 14, 797, 0, 0),
(1, 15, 798, 0, 0),
(1, 16, 799, 0, 0),
(1, 18, 800, 0, 0),
(1, 19, 801, 0, 0),
(1, 20, 802, 0, 0),
(1, 21, 803, 0, 0),
(1, 22, 804, 0, 0),
(1, 23, 805, 0, 0),
(1, 26, 806, 0, 0),
(1, 10, 807, 0, 0),
(1, 2, 808, 0, 0),
(1, 4, 809, 0, 0),
(1, 6, 810, 0, 0),
(1, 7, 811, 0, 0),
(1, 8, 812, 0, 0),
(1, 9, 813, 0, 0),
(1, 10, 814, 0, 0),
(1, 13, 815, 0, 0),
(1, 14, 816, 0, 0),
(1, 15, 817, 0, 0),
(1, 16, 818, 0, 0),
(1, 18, 819, 0, 0),
(1, 19, 820, 0, 0),
(1, 20, 821, 0, 0),
(1, 21, 822, 0, 0),
(1, 22, 823, 0, 0),
(1, 23, 824, 0, 0),
(1, 26, 825, 0, 0),
(1, 2, 826, 0, 0),
(1, 4, 827, 0, 0),
(1, 6, 828, 0, 0),
(1, 7, 829, 0, 0),
(1, 8, 830, 0, 0),
(1, 9, 831, 0, 0),
(1, 10, 832, 0, 0),
(1, 13, 833, 0, 0),
(1, 14, 834, 0, 0),
(1, 15, 835, 0, 0),
(1, 16, 836, 0, 0),
(1, 18, 837, 0, 0),
(1, 19, 838, 0, 0),
(1, 20, 839, 0, 0),
(1, 21, 840, 0, 0),
(1, 22, 841, 0, 0),
(1, 23, 842, 0, 0),
(1, 26, 843, 0, 0),
(1, 20, 844, 0, 0),
(1, 21, 845, 0, 0),
(1, 22, 846, 0, 0),
(1, 23, 847, 0, 0),
(1, 45, 848, 0, 0),
(1, 45, 849, 0, 0),
(1, 29, 850, 0, 0),
(1, 22, 851, 0, 0),
(2, 6, 1, 0, 0),
(2, 6, 2, 0, 0),
(2, 6, 3, 0, 0),
(2, 6, 4, 0, 0),
(2, 6, 5, 0, 0),
(2, 6, 6, 0, 0),
(2, 6, 7, 0, 0),
(2, 6, 8, 0, 0),
(2, 6, 9, 0, 0),
(2, 6, 10, 0, 0),
(2, 6, 11, 0, 0),
(2, 6, 12, 0, 0),
(2, 6, 13, 0, 0),
(2, 6, 14, 0, 0),
(2, 6, 15, 0, 0),
(2, 6, 16, 0, 0),
(2, 6, 17, 0, 0),
(2, 6, 18, 0, 0),
(2, 6, 19, 0, 0),
(2, 6, 20, 0, 0),
(2, 6, 21, 0, 0),
(2, 6, 22, 0, 0),
(2, 6, 23, 0, 0),
(2, 6, 24, 0, 0),
(2, 6, 25, 0, 0),
(2, 6, 26, 0, 0),
(2, 6, 27, 0, 0),
(2, 6, 28, 0, 0),
(2, 6, 29, 0, 0),
(2, 6, 30, 0, 0),
(2, 6, 31, 0, 0),
(2, 6, 32, 0, 0),
(2, 6, 33, 0, 0),
(2, 6, 34, 0, 0),
(2, 6, 35, 0, 0),
(2, 6, 36, 0, 0),
(2, 7, 37, 0, 0),
(2, 7, 38, 0, 0),
(2, 7, 39, 0, 0),
(2, 7, 40, 0, 0),
(2, 7, 41, 0, 0),
(2, 7, 42, 0, 0),
(2, 7, 43, 0, 0),
(2, 7, 44, 0, 0),
(2, 7, 45, 0, 0),
(2, 7, 46, 0, 0),
(2, 7, 47, 0, 0),
(2, 7, 48, 0, 0),
(2, 7, 49, 0, 0),
(2, 7, 50, 0, 0),
(2, 7, 51, 0, 0),
(2, 7, 52, 0, 0),
(2, 7, 53, 0, 0),
(2, 7, 54, 0, 0),
(2, 7, 55, 0, 0),
(2, 7, 56, 0, 0),
(2, 7, 57, 0, 0),
(2, 7, 58, 0, 0),
(2, 7, 59, 0, 0),
(2, 7, 60, 0, 0),
(2, 7, 61, 0, 0),
(2, 7, 62, 0, 0),
(2, 7, 63, 0, 0),
(2, 7, 64, 0, 0),
(2, 7, 65, 0, 0),
(2, 4, 66, 0, 0),
(2, 4, 67, 0, 0),
(2, 4, 68, 0, 0),
(2, 4, 69, 0, 0),
(2, 4, 70, 0, 0),
(2, 4, 71, 0, 0),
(2, 4, 72, 0, 0),
(2, 4, 73, 0, 0),
(2, 4, 74, 0, 0),
(2, 4, 75, 0, 0),
(2, 4, 76, 0, 0),
(2, 4, 77, 0, 0),
(2, 4, 78, 0, 0),
(2, 4, 79, 0, 0),
(2, 4, 80, 0, 0),
(2, 4, 81, 0, 0),
(2, 4, 82, 0, 0),
(2, 4, 83, 0, 0),
(2, 4, 84, 0, 0),
(2, 4, 85, 0, 0),
(2, 4, 86, 0, 0),
(2, 4, 87, 0, 0),
(2, 4, 88, 0, 0),
(2, 4, 89, 0, 0),
(2, 4, 90, 0, 0),
(2, 4, 91, 0, 0),
(2, 4, 92, 0, 0),
(2, 4, 93, 0, 0),
(2, 4, 94, 0, 0),
(2, 4, 95, 0, 0),
(2, 4, 96, 0, 0),
(2, 4, 97, 0, 0),
(2, 4, 98, 0, 0),
(2, 4, 99, 0, 0),
(2, 4, 100, 0, 0),
(2, 4, 101, 0, 0),
(2, 4, 102, 0, 0),
(2, 4, 103, 0, 0),
(2, 4, 104, 0, 0),
(2, 4, 105, 0, 0),
(2, 4, 106, 0, 0),
(2, 4, 107, 0, 0),
(2, 4, 108, 0, 0),
(2, 4, 109, 0, 0),
(2, 2, 110, 0, 0),
(2, 2, 111, 0, 0),
(2, 2, 112, 0, 0),
(2, 2, 113, 0, 0),
(2, 2, 114, 0, 0),
(2, 2, 115, 0, 0),
(2, 2, 116, 0, 0),
(2, 2, 117, 0, 0),
(2, 2, 118, 0, 0),
(2, 2, 119, 0, 0),
(2, 2, 120, 0, 0),
(2, 2, 121, 0, 0),
(2, 2, 122, 0, 0),
(2, 2, 123, 0, 0),
(2, 2, 124, 0, 0),
(2, 2, 125, 0, 0),
(2, 26, 126, 0, 0),
(2, 26, 127, 0, 0),
(2, 26, 128, 0, 0),
(2, 26, 129, 0, 0),
(2, 26, 130, 0, 0),
(2, 26, 131, 0, 0),
(2, 26, 132, 0, 0),
(2, 26, 133, 0, 0),
(2, 26, 134, 0, 0),
(2, 26, 135, 0, 0),
(2, 26, 136, 0, 0),
(2, 26, 137, 0, 0),
(2, 26, 138, 0, 0),
(2, 26, 139, 0, 0),
(2, 26, 140, 0, 0),
(2, 26, 141, 0, 0),
(2, 26, 142, 0, 0),
(2, 26, 143, 0, 0),
(2, 26, 144, 0, 0),
(2, 26, 145, 0, 0),
(2, 26, 146, 0, 0),
(2, 26, 147, 0, 0),
(2, 26, 148, 0, 0),
(2, 26, 149, 0, 0),
(2, 26, 150, 0, 0),
(2, 4, 151, 0, 0),
(2, 6, 152, 0, 0),
(2, 7, 153, 0, 0),
(2, 26, 154, 0, 0),
(2, 13, 155, 0, 0),
(2, 13, 156, 0, 0),
(2, 13, 157, 0, 0),
(2, 13, 158, 0, 0),
(2, 13, 159, 0, 0),
(2, 13, 160, 0, 0),
(2, 13, 161, 0, 0),
(2, 13, 162, 0, 0),
(2, 13, 163, 0, 0),
(2, 13, 164, 0, 0),
(2, 13, 165, 0, 0),
(2, 13, 166, 0, 0),
(2, 13, 167, 0, 0),
(2, 13, 168, 0, 0),
(2, 13, 169, 0, 0),
(2, 13, 170, 0, 0),
(2, 13, 171, 0, 0),
(2, 13, 172, 0, 0),
(2, 13, 173, 0, 0),
(2, 14, 174, 0, 0),
(2, 14, 175, 0, 0),
(2, 14, 176, 0, 0),
(2, 14, 177, 0, 0),
(2, 14, 178, 0, 0),
(2, 14, 179, 0, 0),
(2, 14, 180, 0, 0),
(2, 14, 181, 0, 0),
(2, 14, 182, 0, 0),
(2, 14, 183, 0, 0),
(2, 14, 184, 0, 0),
(2, 14, 185, 0, 0),
(2, 14, 186, 0, 0),
(2, 14, 187, 0, 0),
(2, 14, 188, 0, 0),
(2, 14, 189, 0, 0),
(2, 14, 190, 0, 0),
(2, 14, 191, 0, 0),
(2, 14, 192, 0, 0),
(2, 14, 193, 0, 0),
(2, 14, 194, 0, 0),
(2, 14, 195, 0, 0),
(2, 14, 196, 0, 0),
(2, 14, 197, 0, 0),
(2, 14, 198, 0, 0),
(2, 14, 199, 0, 0),
(2, 14, 200, 0, 0),
(2, 14, 201, 0, 0),
(2, 14, 202, 0, 0),
(2, 14, 203, 0, 0),
(2, 14, 204, 0, 0),
(2, 8, 205, 0, 0),
(2, 8, 206, 0, 0),
(2, 8, 207, 0, 0),
(2, 8, 208, 0, 0),
(2, 8, 209, 0, 0),
(2, 8, 210, 0, 0),
(2, 8, 211, 0, 0),
(2, 8, 212, 0, 0),
(2, 8, 213, 0, 0),
(2, 8, 214, 0, 0),
(2, 8, 215, 0, 0),
(2, 8, 216, 0, 0),
(2, 8, 217, 0, 0),
(2, 8, 218, 0, 0),
(2, 8, 219, 0, 0),
(2, 10, 220, 0, 0),
(2, 10, 221, 0, 0),
(2, 10, 222, 0, 0),
(2, 10, 223, 0, 0),
(2, 10, 224, 0, 0),
(2, 10, 225, 0, 0),
(2, 10, 226, 0, 0),
(2, 10, 227, 0, 0),
(2, 10, 228, 0, 0),
(2, 10, 229, 0, 0),
(2, 10, 230, 0, 0),
(2, 10, 231, 0, 0),
(2, 9, 232, 0, 0),
(2, 9, 233, 0, 0),
(2, 9, 234, 0, 0),
(2, 9, 235, 0, 0),
(2, 9, 236, 0, 0),
(2, 9, 237, 0, 0),
(2, 9, 238, 0, 0),
(2, 9, 239, 0, 0),
(2, 9, 240, 0, 0),
(2, 9, 241, 0, 0),
(2, 9, 242, 0, 0),
(2, 9, 243, 0, 0),
(2, 9, 244, 0, 0),
(2, 9, 245, 0, 0),
(2, 9, 246, 0, 0),
(2, 9, 247, 0, 0),
(2, 9, 248, 0, 0),
(2, 9, 249, 0, 0),
(2, 9, 250, 0, 0),
(2, 9, 251, 0, 0),
(2, 9, 252, 0, 0),
(2, 9, 253, 0, 0),
(2, 9, 254, 0, 0),
(2, 9, 255, 0, 0),
(2, 16, 256, 0, 0),
(2, 16, 257, 0, 0),
(2, 16, 258, 0, 0),
(2, 16, 259, 0, 0),
(2, 16, 260, 0, 0),
(2, 16, 261, 0, 0),
(2, 16, 262, 0, 0),
(2, 16, 263, 0, 0),
(2, 16, 264, 0, 0),
(2, 16, 265, 0, 0),
(2, 16, 266, 0, 0),
(2, 16, 267, 0, 0),
(2, 16, 268, 0, 0),
(2, 16, 269, 0, 0),
(2, 16, 270, 0, 0),
(2, 16, 271, 0, 0),
(2, 16, 272, 0, 0),
(2, 16, 273, 0, 0),
(2, 16, 274, 0, 0),
(2, 16, 275, 0, 0),
(2, 16, 276, 0, 0),
(2, 16, 277, 0, 0),
(2, 16, 278, 0, 0),
(2, 15, 279, 0, 0),
(2, 15, 280, 0, 0),
(2, 15, 281, 0, 0),
(2, 15, 282, 0, 0),
(2, 15, 283, 0, 0),
(2, 15, 284, 0, 0),
(2, 15, 285, 0, 0),
(2, 15, 286, 0, 0),
(2, 15, 287, 0, 0),
(2, 15, 288, 0, 0),
(2, 18, 289, 0, 0),
(2, 18, 290, 0, 0),
(2, 18, 291, 0, 0),
(2, 18, 292, 0, 0),
(2, 18, 293, 0, 0),
(2, 18, 294, 0, 0),
(2, 18, 295, 0, 0),
(2, 18, 296, 0, 0),
(2, 18, 297, 0, 0),
(2, 18, 298, 0, 0),
(2, 18, 299, 0, 0),
(2, 18, 300, 0, 0),
(2, 18, 301, 0, 0),
(2, 18, 302, 0, 0),
(2, 18, 303, 0, 0),
(2, 18, 304, 0, 0),
(2, 18, 305, 0, 0),
(2, 19, 306, 0, 0),
(2, 19, 307, 0, 0),
(2, 19, 308, 0, 0),
(2, 19, 309, 0, 0),
(2, 19, 310, 0, 0),
(2, 19, 311, 0, 0),
(2, 19, 312, 0, 0),
(2, 19, 313, 0, 0),
(2, 20, 314, 0, 0),
(2, 20, 315, 0, 0),
(2, 20, 316, 0, 0),
(2, 20, 317, 0, 0),
(2, 20, 318, 0, 0),
(2, 20, 319, 0, 0),
(2, 20, 320, 0, 0),
(2, 20, 321, 0, 0),
(2, 20, 322, 0, 0),
(2, 20, 323, 0, 0),
(2, 20, 324, 0, 0),
(2, 20, 325, 0, 0),
(2, 20, 326, 0, 0),
(2, 20, 327, 0, 0),
(2, 20, 328, 0, 0),
(2, 20, 329, 0, 0),
(2, 20, 330, 0, 0),
(2, 20, 331, 0, 0),
(2, 20, 332, 0, 0),
(2, 20, 333, 0, 0),
(2, 20, 334, 0, 0),
(2, 20, 335, 0, 0),
(2, 20, 336, 0, 0),
(2, 20, 337, 0, 0),
(2, 20, 338, 0, 0),
(2, 20, 339, 0, 0),
(2, 20, 340, 0, 0),
(2, 20, 341, 0, 0),
(2, 20, 342, 0, 0),
(2, 20, 343, 0, 0),
(2, 20, 344, 0, 0),
(2, 20, 345, 0, 0),
(2, 20, 346, 0, 0),
(2, 20, 347, 0, 0),
(2, 20, 348, 0, 0),
(2, 20, 349, 0, 0),
(2, 20, 350, 0, 0),
(2, 21, 351, 0, 0),
(2, 21, 352, 0, 0),
(2, 21, 353, 0, 0),
(2, 21, 354, 0, 0),
(2, 21, 355, 0, 0),
(2, 21, 356, 0, 0),
(2, 21, 357, 0, 0),
(2, 21, 358, 0, 0),
(2, 21, 359, 0, 0),
(2, 21, 360, 0, 0),
(2, 21, 361, 0, 0),
(2, 21, 362, 0, 0),
(2, 21, 363, 0, 0),
(2, 21, 364, 0, 0),
(2, 21, 365, 0, 0),
(2, 21, 366, 0, 0),
(2, 21, 367, 0, 0),
(2, 21, 368, 0, 0),
(2, 21, 369, 0, 0),
(2, 21, 370, 0, 0),
(2, 21, 371, 0, 0),
(2, 21, 372, 0, 0),
(2, 21, 373, 0, 0),
(2, 21, 374, 0, 0),
(2, 21, 375, 0, 0),
(2, 21, 376, 0, 0),
(2, 21, 377, 0, 0),
(2, 21, 378, 0, 0),
(2, 21, 379, 0, 0),
(2, 21, 380, 0, 0),
(2, 21, 381, 0, 0),
(2, 21, 382, 0, 0),
(2, 21, 383, 0, 0),
(2, 21, 384, 0, 0),
(2, 21, 385, 0, 0),
(2, 21, 386, 0, 0),
(2, 21, 387, 0, 0),
(2, 21, 388, 0, 0),
(2, 22, 389, 0, 0),
(2, 22, 390, 0, 0),
(2, 22, 391, 0, 0),
(2, 22, 392, 0, 0),
(2, 22, 393, 0, 0),
(2, 22, 394, 0, 0),
(2, 22, 395, 0, 0),
(2, 22, 396, 0, 0),
(2, 22, 397, 0, 0),
(2, 22, 398, 0, 0),
(2, 22, 399, 0, 0),
(2, 22, 400, 0, 0),
(2, 22, 401, 0, 0),
(2, 22, 402, 0, 0),
(2, 22, 403, 0, 0),
(2, 22, 404, 0, 0),
(2, 22, 405, 0, 0),
(2, 22, 406, 0, 0),
(2, 22, 407, 0, 0),
(2, 22, 408, 0, 0),
(2, 22, 409, 0, 0),
(2, 22, 410, 0, 0),
(2, 22, 411, 0, 0),
(2, 22, 412, 0, 0),
(2, 22, 413, 0, 0),
(2, 22, 414, 0, 0),
(2, 22, 415, 0, 0),
(2, 22, 416, 0, 0),
(2, 22, 417, 0, 0),
(2, 22, 418, 0, 0),
(2, 22, 419, 0, 0),
(2, 22, 420, 0, 0),
(2, 22, 421, 0, 0),
(2, 22, 422, 0, 0),
(2, 22, 423, 0, 0),
(2, 22, 424, 0, 0),
(2, 22, 425, 0, 0),
(2, 22, 426, 0, 0),
(2, 22, 427, 0, 0),
(2, 22, 428, 0, 0),
(2, 22, 429, 0, 0),
(2, 22, 430, 0, 0),
(2, 22, 431, 0, 0),
(2, 22, 432, 0, 0),
(2, 22, 433, 0, 0),
(2, 22, 434, 0, 0),
(2, 22, 435, 0, 0),
(2, 23, 436, 0, 0),
(2, 23, 437, 0, 0),
(2, 23, 438, 0, 0),
(2, 23, 439, 0, 0),
(2, 23, 440, 0, 0),
(2, 23, 441, 0, 0),
(2, 23, 442, 0, 0),
(2, 23, 443, 0, 0),
(2, 23, 444, 0, 0),
(2, 23, 445, 0, 0),
(2, 23, 446, 0, 0),
(2, 23, 447, 0, 0),
(2, 23, 448, 0, 0),
(2, 23, 449, 0, 0),
(2, 23, 450, 0, 0),
(2, 23, 451, 0, 0),
(2, 23, 452, 0, 0),
(2, 23, 453, 0, 0),
(2, 23, 454, 0, 0),
(2, 23, 455, 0, 0),
(2, 23, 456, 0, 0),
(2, 23, 457, 0, 0),
(2, 23, 458, 0, 0),
(2, 23, 459, 0, 0),
(2, 23, 460, 0, 0),
(2, 23, 461, 0, 0),
(2, 23, 462, 0, 0),
(2, 23, 463, 0, 0),
(2, 23, 464, 0, 0),
(2, 23, 465, 0, 0),
(2, 23, 466, 0, 0),
(2, 23, 467, 0, 0),
(2, 23, 468, 0, 0),
(2, 23, 469, 0, 0),
(2, 23, 470, 0, 0),
(2, 23, 471, 0, 0),
(2, 23, 472, 0, 0),
(2, 23, 473, 0, 0),
(2, 23, 474, 0, 0),
(2, 29, 475, 0, 0),
(2, 29, 479, 0, 0),
(2, 29, 480, 0, 0),
(2, 29, 482, 0, 0),
(2, 29, 489, 0, 0),
(2, 29, 490, 0, 0),
(2, 29, 491, 0, 0),
(2, 29, 492, 0, 0),
(2, 29, 493, 0, 0),
(2, 29, 495, 0, 0),
(2, 29, 496, 0, 0),
(2, 29, 497, 0, 0),
(2, 29, 498, 0, 0),
(2, 29, 499, 0, 0),
(2, 29, 504, 0, 0),
(2, 29, 505, 0, 0),
(2, 29, 506, 0, 0),
(2, 29, 507, 0, 0),
(2, 29, 515, 0, 0),
(2, 10, 520, 0, 0),
(2, 10, 521, 0, 0),
(2, 10, 522, 0, 0),
(2, 10, 523, 0, 0),
(2, 10, 524, 0, 0),
(2, 10, 525, 0, 0),
(2, 31, 526, 0, 0),
(2, 31, 527, 0, 0),
(2, 31, 528, 0, 0),
(2, 31, 529, 0, 0),
(2, 31, 530, 0, 0),
(2, 31, 531, 0, 0),
(2, 31, 532, 0, 0),
(2, 31, 533, 0, 0),
(2, 31, 534, 0, 0),
(2, 31, 535, 0, 0),
(2, 31, 536, 0, 0),
(2, 31, 537, 0, 0),
(2, 31, 538, 0, 0),
(2, 31, 539, 0, 0),
(2, 31, 540, 0, 0),
(2, 31, 541, 0, 0),
(2, 31, 542, 0, 0),
(2, 31, 543, 0, 0),
(2, 31, 544, 0, 0),
(2, 31, 545, 0, 0),
(2, 31, 546, 0, 0),
(2, 31, 547, 0, 0),
(2, 35, 548, 0, 0),
(2, 35, 549, 0, 0),
(2, 35, 550, 0, 0),
(2, 35, 551, 0, 0),
(2, 35, 552, 0, 0),
(2, 35, 553, 0, 0),
(2, 35, 554, 0, 0),
(2, 35, 555, 0, 0),
(2, 35, 556, 0, 0),
(2, 35, 557, 0, 0),
(2, 35, 558, 0, 0),
(2, 35, 559, 0, 0),
(2, 35, 560, 0, 0),
(2, 35, 561, 0, 0),
(2, 35, 562, 0, 0),
(2, 35, 563, 0, 0),
(2, 35, 564, 0, 0),
(2, 29, 565, 0, 0),
(2, 37, 566, 0, 0),
(2, 37, 567, 0, 0),
(2, 37, 568, 0, 0),
(2, 37, 569, 0, 0),
(2, 37, 570, 0, 0),
(2, 37, 571, 0, 0),
(2, 37, 572, 0, 0),
(2, 37, 573, 0, 0),
(2, 37, 574, 0, 0),
(2, 37, 575, 0, 0),
(2, 37, 576, 0, 0),
(2, 37, 577, 0, 0),
(2, 37, 578, 0, 0),
(2, 37, 579, 0, 0),
(2, 37, 580, 0, 0),
(2, 37, 581, 0, 0),
(2, 37, 582, 0, 0),
(2, 37, 583, 0, 0),
(2, 37, 584, 0, 0),
(2, 37, 585, 0, 0),
(2, 37, 586, 0, 0),
(2, 37, 587, 0, 0),
(2, 38, 588, 0, 0),
(2, 38, 589, 0, 0),
(2, 38, 590, 0, 0),
(2, 38, 591, 0, 0),
(2, 38, 592, 0, 0),
(2, 38, 593, 0, 0),
(2, 38, 594, 0, 0),
(2, 38, 595, 0, 0),
(2, 42, 596, 0, 0),
(2, 42, 597, 0, 0),
(2, 42, 598, 0, 0),
(2, 42, 599, 0, 0),
(2, 42, 600, 0, 0),
(2, 42, 601, 0, 0),
(2, 43, 602, 0, 0),
(2, 43, 603, 0, 0),
(2, 43, 604, 0, 0),
(2, 43, 605, 0, 0),
(2, 43, 606, 0, 0),
(2, 43, 607, 0, 0),
(2, 43, 608, 0, 0),
(2, 43, 609, 0, 0),
(2, 43, 610, 0, 0),
(2, 43, 611, 0, 0),
(2, 43, 612, 0, 0),
(2, 43, 613, 0, 0),
(2, 43, 614, 0, 0),
(2, 44, 615, 0, 0),
(2, 44, 616, 0, 0),
(2, 44, 617, 0, 0),
(2, 44, 618, 0, 0),
(2, 44, 619, 0, 0),
(2, 44, 620, 0, 0),
(2, 44, 621, 0, 0),
(2, 44, 622, 0, 0),
(2, 44, 623, 0, 0),
(2, 44, 624, 0, 0),
(2, 44, 625, 0, 0),
(2, 44, 626, 0, 0),
(2, 44, 627, 0, 0),
(2, 44, 628, 0, 0),
(2, 44, 629, 0, 0),
(2, 44, 630, 0, 0),
(2, 44, 631, 0, 0),
(2, 44, 632, 0, 0),
(2, 45, 633, 0, 0),
(2, 45, 634, 0, 0),
(2, 45, 635, 0, 0),
(2, 45, 636, 0, 0),
(2, 45, 637, 0, 0),
(2, 45, 638, 0, 0),
(2, 45, 639, 0, 0),
(2, 45, 640, 0, 0),
(2, 45, 641, 0, 0),
(2, 45, 642, 0, 0),
(2, 45, 643, 0, 0),
(2, 45, 644, 0, 0),
(2, 45, 645, 0, 0),
(2, 45, 646, 0, 0),
(2, 45, 647, 0, 0),
(2, 45, 648, 0, 0),
(2, 45, 649, 0, 0),
(2, 45, 650, 0, 0),
(2, 45, 651, 0, 0),
(2, 45, 652, 0, 0),
(2, 47, 653, 0, 0),
(2, 47, 654, 0, 0),
(2, 47, 655, 0, 0),
(2, 47, 656, 0, 0),
(2, 47, 657, 0, 0),
(2, 47, 658, 0, 0),
(2, 47, 659, 0, 0),
(2, 47, 660, 0, 0),
(2, 47, 661, 0, 0),
(2, 47, 662, 0, 0),
(2, 47, 663, 0, 0),
(2, 47, 664, 0, 0),
(2, 47, 665, 0, 0),
(2, 47, 666, 0, 0),
(2, 47, 667, 0, 0),
(2, 47, 668, 0, 0),
(2, 47, 669, 0, 0),
(2, 47, 670, 0, 0),
(2, 47, 671, 0, 0),
(2, 47, 672, 0, 0),
(2, 47, 673, 0, 0),
(2, 2, 674, 0, 0),
(2, 29, 675, 0, 0),
(2, 23, 676, 0, 0),
(2, 23, 677, 0, 0),
(2, 23, 678, 0, 0),
(2, 23, 679, 0, 0),
(2, 23, 680, 0, 0),
(2, 23, 681, 0, 0),
(2, 23, 682, 0, 0),
(2, 23, 683, 0, 0),
(2, 23, 684, 0, 0),
(2, 22, 685, 0, 0),
(2, 22, 686, 0, 0),
(2, 22, 687, 0, 0),
(2, 22, 688, 0, 0),
(2, 22, 689, 0, 0),
(2, 22, 690, 0, 0),
(2, 22, 691, 0, 0),
(2, 22, 692, 0, 0),
(2, 22, 693, 0, 0),
(2, 21, 694, 0, 0),
(2, 21, 695, 0, 0),
(2, 21, 696, 0, 0),
(2, 21, 697, 0, 0),
(2, 21, 698, 0, 0),
(2, 21, 699, 0, 0),
(2, 21, 700, 0, 0),
(2, 21, 701, 0, 0),
(2, 21, 702, 0, 0),
(2, 20, 703, 0, 0),
(2, 20, 704, 0, 0),
(2, 20, 705, 0, 0),
(2, 20, 706, 0, 0),
(2, 20, 707, 0, 0),
(2, 20, 708, 0, 0),
(2, 20, 709, 0, 0),
(2, 20, 710, 0, 0),
(2, 20, 711, 0, 0),
(2, 29, 712, 0, 0),
(2, 44, 713, 0, 0),
(2, 38, 714, 0, 0),
(2, 29, 715, 0, 0),
(2, 29, 716, 0, 0),
(2, 29, 717, 0, 0),
(2, 23, 718, 0, 0),
(2, 22, 719, 0, 0),
(2, 21, 720, 0, 0),
(2, 20, 721, 0, 0),
(2, 29, 722, 0, 0),
(2, 6, 723, 0, 0),
(2, 4, 724, 0, 0),
(2, 2, 725, 0, 0),
(2, 29, 726, 0, 0),
(2, 23, 727, 0, 0),
(2, 23, 728, 0, 0),
(2, 21, 729, 0, 0),
(2, 21, 730, 0, 0),
(2, 18, 731, 0, 0),
(2, 7, 732, 0, 0),
(2, 38, 733, 0, 0),
(2, 38, 734, 0, 0),
(2, 23, 735, 0, 0),
(2, 20, 736, 0, 0),
(2, 21, 737, 0, 0),
(2, 22, 738, 0, 0),
(2, 29, 739, 0, 0),
(2, 2, 740, 0, 0),
(2, 13, 741, 0, 0),
(2, 29, 742, 0, 0),
(2, 29, 743, 0, 0),
(2, 29, 744, 0, 0),
(2, 29, 745, 0, 0),
(2, 14, 772, 0, 0),
(2, 31, 773, 0, 0),
(2, 23, 774, 0, 0),
(2, 29, 775, 0, 0),
(2, 23, 776, 0, 0),
(2, 23, 777, 0, 0),
(2, 23, 778, 0, 0),
(2, 20, 779, 0, 0),
(2, 20, 780, 0, 0),
(2, 20, 781, 0, 0),
(2, 21, 782, 0, 0),
(2, 22, 783, 0, 0),
(2, 22, 784, 0, 0),
(2, 22, 785, 0, 0),
(2, 38, 786, 0, 0),
(2, 38, 787, 0, 0),
(2, 38, 788, 0, 0),
(2, 2, 789, 0, 0),
(2, 4, 790, 0, 0),
(2, 6, 791, 0, 0),
(2, 7, 792, 0, 0),
(2, 8, 793, 0, 0),
(2, 9, 794, 0, 0),
(2, 10, 795, 0, 0),
(2, 13, 796, 0, 0),
(2, 14, 797, 0, 0),
(2, 15, 798, 0, 0),
(2, 16, 799, 0, 0),
(2, 18, 800, 0, 0),
(2, 19, 801, 0, 0),
(2, 20, 802, 0, 0),
(2, 21, 803, 0, 0),
(2, 22, 804, 0, 0),
(2, 23, 805, 0, 0),
(2, 26, 806, 0, 0),
(2, 10, 807, 0, 0),
(2, 2, 808, 0, 0),
(2, 4, 809, 0, 0),
(2, 6, 810, 0, 0),
(2, 7, 811, 0, 0),
(2, 8, 812, 0, 0),
(2, 9, 813, 0, 0),
(2, 10, 814, 0, 0),
(2, 13, 815, 0, 0),
(2, 14, 816, 0, 0),
(2, 15, 817, 0, 0),
(2, 16, 818, 0, 0),
(2, 18, 819, 0, 0),
(2, 19, 820, 0, 0),
(2, 20, 821, 0, 0),
(2, 21, 822, 0, 0),
(2, 22, 823, 0, 0),
(2, 23, 824, 0, 0),
(2, 26, 825, 0, 0),
(2, 2, 826, 0, 0),
(2, 4, 827, 0, 0),
(2, 6, 828, 0, 0),
(2, 7, 829, 0, 0),
(2, 8, 830, 0, 0),
(2, 9, 831, 0, 0),
(2, 10, 832, 0, 0),
(2, 13, 833, 0, 0),
(2, 14, 834, 0, 0),
(2, 15, 835, 0, 0),
(2, 16, 836, 0, 0),
(2, 18, 837, 0, 0),
(2, 19, 838, 0, 0),
(2, 20, 839, 0, 0),
(2, 21, 840, 0, 0),
(2, 22, 841, 0, 0),
(2, 23, 842, 0, 0),
(2, 26, 843, 0, 0),
(2, 20, 844, 0, 0),
(2, 21, 845, 0, 0),
(2, 22, 846, 0, 0),
(2, 23, 847, 0, 0),
(2, 45, 848, 0, 0),
(2, 45, 849, 0, 0),
(2, 29, 850, 0, 0),
(2, 22, 851, 0, 0),
(3, 6, 1, 0, 0),
(3, 6, 2, 0, 0),
(3, 6, 3, 0, 0),
(3, 6, 4, 0, 0),
(3, 6, 5, 0, 0),
(3, 6, 6, 0, 0),
(3, 6, 7, 0, 0),
(3, 6, 8, 0, 0),
(3, 6, 9, 0, 0),
(3, 6, 10, 0, 0),
(3, 6, 11, 0, 0),
(3, 6, 12, 0, 0),
(3, 6, 13, 0, 0),
(3, 6, 14, 0, 0),
(3, 6, 15, 0, 0),
(3, 6, 16, 0, 0),
(3, 6, 17, 0, 0),
(3, 6, 18, 0, 0),
(3, 6, 19, 0, 0),
(3, 6, 20, 0, 0),
(3, 6, 21, 0, 0),
(3, 6, 22, 0, 0),
(3, 6, 23, 0, 0),
(3, 6, 24, 0, 0),
(3, 6, 25, 0, 0),
(3, 6, 26, 0, 0),
(3, 6, 27, 0, 0),
(3, 6, 28, 0, 0),
(3, 6, 29, 0, 0),
(3, 6, 30, 0, 0),
(3, 6, 31, 0, 0),
(3, 6, 32, 0, 0),
(3, 6, 33, 0, 0),
(3, 6, 34, 0, 0),
(3, 6, 35, 0, 0),
(3, 6, 36, 0, 0),
(3, 7, 37, 0, 0),
(3, 7, 38, 0, 0),
(3, 7, 39, 0, 0),
(3, 7, 40, 0, 0),
(3, 7, 41, 0, 0),
(3, 7, 42, 0, 0),
(3, 7, 43, 0, 0),
(3, 7, 44, 0, 0),
(3, 7, 45, 0, 0),
(3, 7, 46, 0, 0),
(3, 7, 47, 0, 0),
(3, 7, 48, 0, 0),
(3, 7, 49, 0, 0),
(3, 7, 50, 0, 0),
(3, 7, 51, 0, 0),
(3, 7, 52, 0, 0),
(3, 7, 53, 0, 0),
(3, 7, 54, 0, 0),
(3, 7, 55, 0, 0),
(3, 7, 56, 0, 0),
(3, 7, 57, 0, 0),
(3, 7, 58, 0, 0),
(3, 7, 59, 0, 0),
(3, 7, 60, 0, 0),
(3, 7, 61, 0, 0),
(3, 7, 62, 0, 0),
(3, 7, 63, 0, 0),
(3, 7, 64, 0, 0),
(3, 7, 65, 0, 0),
(3, 4, 66, 0, 0),
(3, 4, 67, 0, 0),
(3, 4, 68, 0, 0),
(3, 4, 69, 0, 0),
(3, 4, 70, 0, 0),
(3, 4, 71, 0, 0),
(3, 4, 72, 0, 0),
(3, 4, 73, 0, 0),
(3, 4, 74, 0, 0),
(3, 4, 75, 0, 0),
(3, 4, 76, 0, 0),
(3, 4, 77, 0, 0),
(3, 4, 78, 0, 0),
(3, 4, 79, 0, 0),
(3, 4, 80, 0, 0),
(3, 4, 81, 0, 0),
(3, 4, 82, 0, 0),
(3, 4, 83, 0, 0),
(3, 4, 84, 0, 0),
(3, 4, 85, 0, 0),
(3, 4, 86, 0, 0),
(3, 4, 87, 0, 0),
(3, 4, 88, 0, 0),
(3, 4, 89, 0, 0),
(3, 4, 90, 0, 0),
(3, 4, 91, 0, 0),
(3, 4, 92, 0, 0),
(3, 4, 93, 0, 0),
(3, 4, 94, 0, 0),
(3, 4, 95, 0, 0),
(3, 4, 96, 0, 0),
(3, 4, 97, 0, 0),
(3, 4, 98, 0, 0),
(3, 4, 99, 0, 0),
(3, 4, 100, 0, 0),
(3, 4, 101, 0, 0),
(3, 4, 102, 0, 0),
(3, 4, 103, 0, 0),
(3, 4, 104, 0, 0),
(3, 4, 105, 0, 0),
(3, 4, 106, 0, 0),
(3, 4, 107, 0, 0),
(3, 4, 108, 0, 0),
(3, 4, 109, 0, 0),
(3, 2, 110, 0, 0),
(3, 2, 111, 0, 0),
(3, 2, 112, 0, 0),
(3, 2, 113, 0, 0),
(3, 2, 114, 0, 0),
(3, 2, 115, 0, 0),
(3, 2, 116, 0, 0),
(3, 2, 117, 0, 0),
(3, 2, 118, 0, 0),
(3, 2, 119, 0, 0),
(3, 2, 120, 0, 0),
(3, 2, 121, 0, 0),
(3, 2, 122, 0, 0),
(3, 2, 123, 0, 0),
(3, 2, 124, 0, 0),
(3, 2, 125, 0, 0),
(3, 26, 126, 0, 0),
(3, 26, 127, 0, 0),
(3, 26, 128, 0, 0),
(3, 26, 129, 0, 0),
(3, 26, 130, 0, 0),
(3, 26, 131, 0, 0),
(3, 26, 132, 0, 0),
(3, 26, 133, 0, 0),
(3, 26, 134, 0, 0),
(3, 26, 135, 0, 0),
(3, 26, 136, 0, 0),
(3, 26, 137, 0, 0),
(3, 26, 138, 0, 0),
(3, 26, 139, 0, 0),
(3, 26, 140, 0, 0),
(3, 26, 141, 0, 0),
(3, 26, 142, 0, 0),
(3, 26, 143, 0, 0),
(3, 26, 144, 0, 0),
(3, 26, 145, 0, 0),
(3, 26, 146, 0, 0),
(3, 26, 147, 0, 0),
(3, 26, 148, 0, 0),
(3, 26, 149, 0, 0),
(3, 26, 150, 0, 0),
(3, 4, 151, 0, 0),
(3, 6, 152, 0, 0),
(3, 7, 153, 0, 0),
(3, 26, 154, 0, 0),
(3, 13, 155, 0, 0),
(3, 13, 156, 0, 0),
(3, 13, 157, 0, 0),
(3, 13, 158, 0, 0),
(3, 13, 159, 0, 0),
(3, 13, 160, 0, 0),
(3, 13, 161, 0, 0),
(3, 13, 162, 0, 0),
(3, 13, 163, 0, 0),
(3, 13, 164, 0, 0),
(3, 13, 165, 0, 0),
(3, 13, 166, 0, 0),
(3, 13, 167, 0, 0),
(3, 13, 168, 0, 0),
(3, 13, 169, 0, 0),
(3, 13, 170, 0, 0),
(3, 13, 171, 0, 0),
(3, 13, 172, 0, 0),
(3, 13, 173, 0, 0),
(3, 14, 174, 0, 0),
(3, 14, 175, 0, 0),
(3, 14, 176, 0, 0),
(3, 14, 177, 0, 0),
(3, 14, 178, 0, 0),
(3, 14, 179, 0, 0),
(3, 14, 180, 0, 0),
(3, 14, 181, 0, 0),
(3, 14, 182, 0, 0),
(3, 14, 183, 0, 0),
(3, 14, 184, 0, 0),
(3, 14, 185, 0, 0),
(3, 14, 186, 0, 0),
(3, 14, 187, 0, 0),
(3, 14, 188, 0, 0),
(3, 14, 189, 0, 0),
(3, 14, 190, 0, 0),
(3, 14, 191, 0, 0),
(3, 14, 192, 0, 0),
(3, 14, 193, 0, 0),
(3, 14, 194, 0, 0),
(3, 14, 195, 0, 0),
(3, 14, 196, 0, 0),
(3, 14, 197, 0, 0),
(3, 14, 198, 0, 0),
(3, 14, 199, 0, 0),
(3, 14, 200, 0, 0),
(3, 14, 201, 0, 0),
(3, 14, 202, 0, 0),
(3, 14, 203, 0, 0),
(3, 14, 204, 0, 0),
(3, 8, 205, 0, 0),
(3, 8, 206, 0, 0),
(3, 8, 207, 0, 0),
(3, 8, 208, 0, 0),
(3, 8, 209, 0, 0),
(3, 8, 210, 0, 0),
(3, 8, 211, 0, 0),
(3, 8, 212, 0, 0),
(3, 8, 213, 0, 0),
(3, 8, 214, 0, 0),
(3, 8, 215, 0, 0),
(3, 8, 216, 0, 0),
(3, 8, 217, 0, 0),
(3, 8, 218, 0, 0),
(3, 8, 219, 0, 0),
(3, 10, 220, 0, 0),
(3, 10, 221, 0, 0),
(3, 10, 222, 0, 0),
(3, 10, 223, 0, 0),
(3, 10, 224, 0, 0),
(3, 10, 225, 0, 0),
(3, 10, 226, 0, 0),
(3, 10, 227, 0, 0),
(3, 10, 228, 0, 0),
(3, 10, 229, 0, 0),
(3, 10, 230, 0, 0),
(3, 10, 231, 0, 0),
(3, 9, 232, 0, 0),
(3, 9, 233, 0, 0),
(3, 9, 234, 0, 0),
(3, 9, 235, 0, 0),
(3, 9, 236, 0, 0),
(3, 9, 237, 0, 0),
(3, 9, 238, 0, 0),
(3, 9, 239, 0, 0),
(3, 9, 240, 0, 0),
(3, 9, 241, 0, 0),
(3, 9, 242, 0, 0),
(3, 9, 243, 0, 0),
(3, 9, 244, 0, 0),
(3, 9, 245, 0, 0),
(3, 9, 246, 0, 0),
(3, 9, 247, 0, 0),
(3, 9, 248, 0, 0),
(3, 9, 249, 0, 0),
(3, 9, 250, 0, 0),
(3, 9, 251, 0, 0),
(3, 9, 252, 0, 0),
(3, 9, 253, 0, 0),
(3, 9, 254, 0, 0),
(3, 9, 255, 0, 0),
(3, 16, 256, 0, 0),
(3, 16, 257, 0, 0),
(3, 16, 258, 0, 0),
(3, 16, 259, 0, 0),
(3, 16, 260, 0, 0),
(3, 16, 261, 0, 0),
(3, 16, 262, 0, 0),
(3, 16, 263, 0, 0),
(3, 16, 264, 0, 0),
(3, 16, 265, 0, 0),
(3, 16, 266, 0, 0),
(3, 16, 267, 0, 0),
(3, 16, 268, 0, 0),
(3, 16, 269, 0, 0),
(3, 16, 270, 0, 0),
(3, 16, 271, 0, 0),
(3, 16, 272, 0, 0),
(3, 16, 273, 0, 0),
(3, 16, 274, 0, 0),
(3, 16, 275, 0, 0),
(3, 16, 276, 0, 0),
(3, 16, 277, 0, 0),
(3, 16, 278, 0, 0),
(3, 15, 279, 0, 0),
(3, 15, 280, 0, 0),
(3, 15, 281, 0, 0),
(3, 15, 282, 0, 0),
(3, 15, 283, 0, 0),
(3, 15, 284, 0, 0),
(3, 15, 285, 0, 0),
(3, 15, 286, 0, 0),
(3, 15, 287, 0, 0),
(3, 15, 288, 0, 0),
(3, 18, 289, 0, 0),
(3, 18, 290, 0, 0),
(3, 18, 291, 0, 0),
(3, 18, 292, 0, 0),
(3, 18, 293, 0, 0),
(3, 18, 294, 0, 0),
(3, 18, 295, 0, 0),
(3, 18, 296, 0, 0),
(3, 18, 297, 0, 0),
(3, 18, 298, 0, 0),
(3, 18, 299, 0, 0),
(3, 18, 300, 0, 0),
(3, 18, 301, 0, 0),
(3, 18, 302, 0, 0),
(3, 18, 303, 0, 0),
(3, 18, 304, 0, 0),
(3, 18, 305, 0, 0),
(3, 19, 306, 0, 0),
(3, 19, 307, 0, 0),
(3, 19, 308, 0, 0),
(3, 19, 309, 0, 0),
(3, 19, 310, 0, 0),
(3, 19, 311, 0, 0),
(3, 19, 312, 0, 0),
(3, 19, 313, 0, 0),
(3, 20, 314, 0, 0),
(3, 20, 315, 0, 0),
(3, 20, 316, 0, 0),
(3, 20, 317, 0, 0),
(3, 20, 318, 0, 0),
(3, 20, 319, 0, 0),
(3, 20, 320, 0, 0),
(3, 20, 321, 0, 0),
(3, 20, 322, 0, 0),
(3, 20, 323, 0, 0),
(3, 20, 324, 0, 0),
(3, 20, 325, 0, 0),
(3, 20, 326, 0, 0),
(3, 20, 327, 0, 0),
(3, 20, 328, 0, 0),
(3, 20, 329, 0, 0),
(3, 20, 330, 0, 0),
(3, 20, 331, 0, 0),
(3, 20, 332, 0, 0),
(3, 20, 333, 0, 0),
(3, 20, 334, 0, 0),
(3, 20, 335, 0, 0),
(3, 20, 336, 0, 0),
(3, 20, 337, 0, 0),
(3, 20, 338, 0, 0),
(3, 20, 339, 0, 0),
(3, 20, 340, 0, 0),
(3, 20, 341, 0, 0),
(3, 20, 342, 0, 0),
(3, 20, 343, 0, 0),
(3, 20, 344, 0, 0),
(3, 20, 345, 0, 0),
(3, 20, 346, 0, 0),
(3, 20, 347, 0, 0),
(3, 20, 348, 0, 0),
(3, 20, 349, 0, 0),
(3, 20, 350, 0, 0),
(3, 21, 351, 0, 0),
(3, 21, 352, 0, 0),
(3, 21, 353, 0, 0),
(3, 21, 354, 0, 0),
(3, 21, 355, 0, 0),
(3, 21, 356, 0, 0),
(3, 21, 357, 0, 0),
(3, 21, 358, 0, 0),
(3, 21, 359, 0, 0),
(3, 21, 360, 0, 0),
(3, 21, 361, 0, 0),
(3, 21, 362, 0, 0),
(3, 21, 363, 0, 0),
(3, 21, 364, 0, 0),
(3, 21, 365, 0, 0),
(3, 21, 366, 0, 0),
(3, 21, 367, 0, 0),
(3, 21, 368, 0, 0),
(3, 21, 369, 0, 0),
(3, 21, 370, 0, 0),
(3, 21, 371, 0, 0),
(3, 21, 372, 0, 0),
(3, 21, 373, 0, 0),
(3, 21, 374, 0, 0),
(3, 21, 375, 0, 0),
(3, 21, 376, 0, 0),
(3, 21, 377, 0, 0),
(3, 21, 378, 0, 0),
(3, 21, 379, 0, 0),
(3, 21, 380, 0, 0),
(3, 21, 381, 0, 0),
(3, 21, 382, 0, 0),
(3, 21, 383, 0, 0),
(3, 21, 384, 0, 0),
(3, 21, 385, 0, 0),
(3, 21, 386, 0, 0),
(3, 21, 387, 0, 0),
(3, 21, 388, 0, 0),
(3, 22, 389, 0, 0),
(3, 22, 390, 0, 0),
(3, 22, 391, 0, 0),
(3, 22, 392, 0, 0),
(3, 22, 393, 0, 0),
(3, 22, 394, 0, 0),
(3, 22, 395, 0, 0),
(3, 22, 396, 0, 0),
(3, 22, 397, 0, 0),
(3, 22, 398, 0, 0),
(3, 22, 399, 0, 0),
(3, 22, 400, 0, 0),
(3, 22, 401, 0, 0),
(3, 22, 402, 0, 0),
(3, 22, 403, 0, 0),
(3, 22, 404, 0, 0),
(3, 22, 405, 0, 0),
(3, 22, 406, 0, 0),
(3, 22, 407, 0, 0),
(3, 22, 408, 0, 0),
(3, 22, 409, 0, 0),
(3, 22, 410, 0, 0),
(3, 22, 411, 0, 0),
(3, 22, 412, 0, 0),
(3, 22, 413, 0, 0),
(3, 22, 414, 0, 0),
(3, 22, 415, 0, 0),
(3, 22, 416, 0, 0),
(3, 22, 417, 0, 0),
(3, 22, 418, 0, 0),
(3, 22, 419, 0, 0),
(3, 22, 420, 0, 0),
(3, 22, 421, 0, 0),
(3, 22, 422, 0, 0),
(3, 22, 423, 0, 0),
(3, 22, 424, 0, 0),
(3, 22, 425, 0, 0),
(3, 22, 426, 0, 0),
(3, 22, 427, 0, 0),
(3, 22, 428, 0, 0),
(3, 22, 429, 0, 0),
(3, 22, 430, 0, 0),
(3, 22, 431, 0, 0),
(3, 22, 432, 0, 0),
(3, 22, 433, 0, 0),
(3, 22, 434, 0, 0),
(3, 22, 435, 0, 0),
(3, 23, 436, 0, 0),
(3, 23, 437, 0, 0),
(3, 23, 438, 0, 0),
(3, 23, 439, 0, 0),
(3, 23, 440, 0, 0),
(3, 23, 441, 0, 0),
(3, 23, 442, 0, 0),
(3, 23, 443, 0, 0),
(3, 23, 444, 0, 0),
(3, 23, 445, 0, 0),
(3, 23, 446, 0, 0),
(3, 23, 447, 0, 0),
(3, 23, 448, 0, 0),
(3, 23, 449, 0, 0),
(3, 23, 450, 0, 0),
(3, 23, 451, 0, 0),
(3, 23, 452, 0, 0),
(3, 23, 453, 0, 0),
(3, 23, 454, 0, 0),
(3, 23, 455, 0, 0),
(3, 23, 456, 0, 0),
(3, 23, 457, 0, 0),
(3, 23, 458, 0, 0),
(3, 23, 459, 0, 0),
(3, 23, 460, 0, 0),
(3, 23, 461, 0, 0),
(3, 23, 462, 0, 0),
(3, 23, 463, 0, 0),
(3, 23, 464, 0, 0),
(3, 23, 465, 0, 0),
(3, 23, 466, 0, 0),
(3, 23, 467, 0, 0),
(3, 23, 468, 0, 0),
(3, 23, 469, 0, 0),
(3, 23, 470, 0, 0),
(3, 23, 471, 0, 0),
(3, 23, 472, 0, 0),
(3, 23, 473, 0, 0),
(3, 23, 474, 0, 0),
(3, 29, 475, 0, 0),
(3, 29, 479, 0, 0),
(3, 29, 480, 0, 0),
(3, 29, 482, 0, 0),
(3, 29, 489, 0, 0),
(3, 29, 490, 0, 0),
(3, 29, 491, 0, 0),
(3, 29, 492, 0, 0),
(3, 29, 493, 0, 0),
(3, 29, 495, 0, 0),
(3, 29, 496, 0, 0),
(3, 29, 497, 0, 0),
(3, 29, 498, 0, 0),
(3, 29, 499, 0, 0),
(3, 29, 504, 0, 0),
(3, 29, 505, 0, 0),
(3, 29, 506, 0, 0),
(3, 29, 507, 0, 0),
(3, 29, 515, 0, 0),
(3, 10, 520, 0, 0),
(3, 10, 521, 0, 0),
(3, 10, 522, 0, 0),
(3, 10, 523, 0, 0),
(3, 10, 524, 0, 0),
(3, 10, 525, 0, 0),
(3, 31, 526, 0, 0),
(3, 31, 527, 0, 0),
(3, 31, 528, 0, 0),
(3, 31, 529, 0, 0),
(3, 31, 530, 0, 0),
(3, 31, 531, 0, 0),
(3, 31, 532, 0, 0),
(3, 31, 533, 0, 0),
(3, 31, 534, 0, 0),
(3, 31, 535, 0, 0),
(3, 31, 536, 0, 0),
(3, 31, 537, 0, 0),
(3, 31, 538, 0, 0),
(3, 31, 539, 0, 0),
(3, 31, 540, 0, 0),
(3, 31, 541, 0, 0),
(3, 31, 542, 0, 0),
(3, 31, 543, 0, 0),
(3, 31, 544, 0, 0),
(3, 31, 545, 0, 0),
(3, 31, 546, 0, 0),
(3, 31, 547, 0, 0),
(3, 35, 548, 0, 0),
(3, 35, 549, 0, 0),
(3, 35, 550, 0, 0),
(3, 35, 551, 0, 0),
(3, 35, 552, 0, 0),
(3, 35, 553, 0, 0),
(3, 35, 554, 0, 0),
(3, 35, 555, 0, 0),
(3, 35, 556, 0, 0),
(3, 35, 557, 0, 0),
(3, 35, 558, 0, 0),
(3, 35, 559, 0, 0),
(3, 35, 560, 0, 0),
(3, 35, 561, 0, 0),
(3, 35, 562, 0, 0),
(3, 35, 563, 0, 0),
(3, 35, 564, 0, 0),
(3, 29, 565, 0, 0),
(3, 37, 566, 0, 0),
(3, 37, 567, 0, 0),
(3, 37, 568, 0, 0),
(3, 37, 569, 0, 0),
(3, 37, 570, 0, 0),
(3, 37, 571, 0, 0),
(3, 37, 572, 0, 0),
(3, 37, 573, 0, 0),
(3, 37, 574, 0, 0),
(3, 37, 575, 0, 0),
(3, 37, 576, 0, 0),
(3, 37, 577, 0, 0),
(3, 37, 578, 0, 0),
(3, 37, 579, 0, 0),
(3, 37, 580, 0, 0),
(3, 37, 581, 0, 0),
(3, 37, 582, 0, 0),
(3, 37, 583, 0, 0),
(3, 37, 584, 0, 0),
(3, 37, 585, 0, 0),
(3, 37, 586, 0, 0),
(3, 37, 587, 0, 0),
(3, 38, 588, 0, 0),
(3, 38, 589, 0, 0),
(3, 38, 590, 0, 0),
(3, 38, 591, 0, 0),
(3, 38, 592, 0, 0),
(3, 38, 593, 0, 0),
(3, 38, 594, 0, 0),
(3, 38, 595, 0, 0),
(3, 42, 596, 0, 0),
(3, 42, 597, 0, 0),
(3, 42, 598, 0, 0),
(3, 42, 599, 0, 0),
(3, 42, 600, 0, 0),
(3, 42, 601, 0, 0),
(3, 43, 602, 0, 0),
(3, 43, 603, 0, 0),
(3, 43, 604, 0, 0),
(3, 43, 605, 0, 0),
(3, 43, 606, 0, 0),
(3, 43, 607, 0, 0),
(3, 43, 608, 0, 0),
(3, 43, 609, 0, 0),
(3, 43, 610, 0, 0),
(3, 43, 611, 0, 0),
(3, 43, 612, 0, 0),
(3, 43, 613, 0, 0),
(3, 43, 614, 0, 0),
(3, 44, 615, 0, 0),
(3, 44, 616, 0, 0),
(3, 44, 617, 0, 0),
(3, 44, 618, 0, 0),
(3, 44, 619, 0, 0),
(3, 44, 620, 0, 0),
(3, 44, 621, 0, 0),
(3, 44, 622, 0, 0),
(3, 44, 623, 0, 0),
(3, 44, 624, 0, 0),
(3, 44, 625, 0, 0),
(3, 44, 626, 0, 0),
(3, 44, 627, 0, 0),
(3, 44, 628, 0, 0),
(3, 44, 629, 0, 0),
(3, 44, 630, 0, 0),
(3, 44, 631, 0, 0),
(3, 44, 632, 0, 0),
(3, 45, 633, 0, 0),
(3, 45, 634, 0, 0),
(3, 45, 635, 0, 0),
(3, 45, 636, 0, 0),
(3, 45, 637, 0, 0),
(3, 45, 638, 0, 0),
(3, 45, 639, 0, 0),
(3, 45, 640, 0, 0),
(3, 45, 641, 0, 0),
(3, 45, 642, 0, 0),
(3, 45, 643, 0, 0),
(3, 45, 644, 0, 0),
(3, 45, 645, 0, 0),
(3, 45, 646, 0, 0),
(3, 45, 647, 0, 0),
(3, 45, 648, 0, 0),
(3, 45, 649, 0, 0),
(3, 45, 650, 0, 0),
(3, 45, 651, 0, 0),
(3, 45, 652, 0, 0),
(3, 47, 653, 0, 0),
(3, 47, 654, 0, 0),
(3, 47, 655, 0, 0),
(3, 47, 656, 0, 0),
(3, 47, 657, 0, 0),
(3, 47, 658, 0, 0),
(3, 47, 659, 0, 0),
(3, 47, 660, 0, 0),
(3, 47, 661, 0, 0),
(3, 47, 662, 0, 0),
(3, 47, 663, 0, 0),
(3, 47, 664, 0, 0),
(3, 47, 665, 0, 0),
(3, 47, 666, 0, 0),
(3, 47, 667, 0, 0),
(3, 47, 668, 0, 0),
(3, 47, 669, 0, 0),
(3, 47, 670, 0, 0),
(3, 47, 671, 0, 0),
(3, 47, 672, 0, 0),
(3, 47, 673, 0, 0),
(3, 2, 674, 0, 0),
(3, 29, 675, 0, 0),
(3, 23, 676, 0, 0),
(3, 23, 677, 0, 0),
(3, 23, 678, 0, 0),
(3, 23, 679, 0, 0),
(3, 23, 680, 0, 0),
(3, 23, 681, 0, 0),
(3, 23, 682, 0, 0),
(3, 23, 683, 0, 0),
(3, 23, 684, 0, 0),
(3, 22, 685, 0, 0),
(3, 22, 686, 0, 0),
(3, 22, 687, 0, 0),
(3, 22, 688, 0, 0),
(3, 22, 689, 0, 0),
(3, 22, 690, 0, 0),
(3, 22, 691, 0, 0),
(3, 22, 692, 0, 0),
(3, 22, 693, 0, 0),
(3, 21, 694, 0, 0),
(3, 21, 695, 0, 0),
(3, 21, 696, 0, 0),
(3, 21, 697, 0, 0),
(3, 21, 698, 0, 0),
(3, 21, 699, 0, 0),
(3, 21, 700, 0, 0),
(3, 21, 701, 0, 0),
(3, 21, 702, 0, 0),
(3, 20, 703, 0, 0),
(3, 20, 704, 0, 0),
(3, 20, 705, 0, 0),
(3, 20, 706, 0, 0),
(3, 20, 707, 0, 0),
(3, 20, 708, 0, 0),
(3, 20, 709, 0, 0),
(3, 20, 710, 0, 0),
(3, 20, 711, 0, 0),
(3, 29, 712, 0, 0),
(3, 44, 713, 0, 0),
(3, 38, 714, 0, 0),
(3, 29, 715, 0, 0),
(3, 29, 716, 0, 0),
(3, 29, 717, 0, 0),
(3, 23, 718, 0, 0),
(3, 22, 719, 0, 0),
(3, 21, 720, 0, 0),
(3, 20, 721, 0, 0),
(3, 29, 722, 0, 0),
(3, 6, 723, 0, 0),
(3, 4, 724, 0, 0),
(3, 2, 725, 0, 0),
(3, 29, 726, 0, 0),
(3, 23, 727, 0, 0),
(3, 23, 728, 0, 0),
(3, 21, 729, 0, 0),
(3, 21, 730, 0, 0),
(3, 18, 731, 0, 0),
(3, 7, 732, 0, 0),
(3, 38, 733, 0, 0),
(3, 38, 734, 0, 0),
(3, 23, 735, 0, 0),
(3, 20, 736, 0, 0),
(3, 21, 737, 0, 0),
(3, 22, 738, 0, 0),
(3, 29, 739, 0, 0),
(3, 2, 740, 0, 0),
(3, 13, 741, 0, 0),
(3, 29, 742, 0, 0),
(3, 29, 743, 0, 0),
(3, 29, 744, 0, 0),
(3, 29, 745, 0, 0),
(3, 14, 772, 0, 0),
(3, 31, 773, 0, 0),
(3, 23, 774, 0, 0),
(3, 29, 775, 0, 0),
(3, 23, 776, 0, 0),
(3, 23, 777, 0, 0),
(3, 23, 778, 0, 0),
(3, 20, 779, 0, 0),
(3, 20, 780, 0, 0),
(3, 20, 781, 0, 0),
(3, 21, 782, 0, 0),
(3, 22, 783, 0, 0),
(3, 22, 784, 0, 0),
(3, 22, 785, 0, 0),
(3, 38, 786, 0, 0),
(3, 38, 787, 0, 0),
(3, 38, 788, 0, 0),
(3, 2, 789, 0, 0),
(3, 4, 790, 0, 0),
(3, 6, 791, 0, 0),
(3, 7, 792, 0, 0),
(3, 8, 793, 0, 0),
(3, 9, 794, 0, 0),
(3, 10, 795, 0, 0),
(3, 13, 796, 0, 0),
(3, 14, 797, 0, 0),
(3, 15, 798, 0, 0),
(3, 16, 799, 0, 0),
(3, 18, 800, 0, 0),
(3, 19, 801, 0, 0),
(3, 20, 802, 0, 0),
(3, 21, 803, 0, 0),
(3, 22, 804, 0, 0),
(3, 23, 805, 0, 0),
(3, 26, 806, 0, 0),
(3, 10, 807, 0, 0),
(3, 2, 808, 0, 0),
(3, 4, 809, 0, 0),
(3, 6, 810, 0, 0),
(3, 7, 811, 0, 0),
(3, 8, 812, 0, 0),
(3, 9, 813, 0, 0),
(3, 10, 814, 0, 0),
(3, 13, 815, 0, 0),
(3, 14, 816, 0, 0),
(3, 15, 817, 0, 0),
(3, 16, 818, 0, 0),
(3, 18, 819, 0, 0),
(3, 19, 820, 0, 0),
(3, 20, 821, 0, 0),
(3, 21, 822, 0, 0),
(3, 22, 823, 0, 0),
(3, 23, 824, 0, 0),
(3, 26, 825, 0, 0),
(3, 2, 826, 0, 0),
(3, 4, 827, 0, 0),
(3, 6, 828, 0, 0),
(3, 7, 829, 0, 0),
(3, 8, 830, 0, 0),
(3, 9, 831, 0, 0),
(3, 10, 832, 0, 0),
(3, 13, 833, 0, 0),
(3, 14, 834, 0, 0),
(3, 15, 835, 0, 0),
(3, 16, 836, 0, 0),
(3, 18, 837, 0, 0),
(3, 19, 838, 0, 0),
(3, 20, 839, 0, 0),
(3, 21, 840, 0, 0),
(3, 22, 841, 0, 0),
(3, 23, 842, 0, 0),
(3, 26, 843, 0, 0),
(3, 20, 844, 0, 0),
(3, 21, 845, 0, 0),
(3, 22, 846, 0, 0),
(3, 23, 847, 0, 0),
(3, 45, 848, 0, 0),
(3, 45, 849, 0, 0),
(3, 29, 850, 0, 0),
(3, 22, 851, 0, 0),
(4, 6, 1, 0, 0),
(4, 6, 2, 0, 0),
(4, 6, 3, 0, 0),
(4, 6, 4, 0, 0),
(4, 6, 5, 0, 0),
(4, 6, 6, 0, 0),
(4, 6, 7, 0, 0),
(4, 6, 8, 0, 0),
(4, 6, 9, 0, 0),
(4, 6, 10, 0, 0),
(4, 6, 11, 0, 0),
(4, 6, 12, 0, 0),
(4, 6, 13, 0, 0),
(4, 6, 14, 0, 0),
(4, 6, 15, 0, 0),
(4, 6, 16, 0, 0),
(4, 6, 17, 0, 0),
(4, 6, 18, 0, 0),
(4, 6, 19, 0, 0),
(4, 6, 20, 0, 0),
(4, 6, 21, 0, 0),
(4, 6, 22, 0, 0),
(4, 6, 23, 0, 0),
(4, 6, 24, 0, 0),
(4, 6, 25, 0, 0),
(4, 6, 26, 0, 0),
(4, 6, 27, 0, 0),
(4, 6, 28, 0, 0),
(4, 6, 29, 0, 0),
(4, 6, 30, 0, 0),
(4, 6, 31, 0, 0),
(4, 6, 32, 0, 0),
(4, 6, 33, 0, 0),
(4, 6, 34, 0, 0),
(4, 6, 35, 0, 0),
(4, 6, 36, 0, 0),
(4, 7, 37, 0, 0),
(4, 7, 38, 0, 0),
(4, 7, 39, 0, 0),
(4, 7, 40, 0, 0),
(4, 7, 41, 0, 0),
(4, 7, 42, 0, 0),
(4, 7, 43, 0, 0),
(4, 7, 44, 0, 0),
(4, 7, 45, 0, 0),
(4, 7, 46, 0, 0),
(4, 7, 47, 0, 0),
(4, 7, 48, 0, 0),
(4, 7, 49, 0, 0),
(4, 7, 50, 0, 0),
(4, 7, 51, 0, 0),
(4, 7, 52, 0, 0),
(4, 7, 53, 0, 0),
(4, 7, 54, 0, 0),
(4, 7, 55, 0, 0),
(4, 7, 56, 0, 0),
(4, 7, 57, 0, 0),
(4, 7, 58, 0, 0),
(4, 7, 59, 0, 0),
(4, 7, 60, 0, 0),
(4, 7, 61, 0, 0),
(4, 7, 62, 0, 0),
(4, 7, 63, 0, 0),
(4, 7, 64, 0, 0),
(4, 7, 65, 0, 0),
(4, 4, 66, 0, 0),
(4, 4, 67, 0, 0),
(4, 4, 68, 0, 0),
(4, 4, 69, 0, 0),
(4, 4, 70, 0, 0),
(4, 4, 71, 0, 0),
(4, 4, 72, 0, 0),
(4, 4, 73, 0, 0),
(4, 4, 74, 0, 0),
(4, 4, 75, 0, 0),
(4, 4, 76, 0, 0),
(4, 4, 77, 0, 0),
(4, 4, 78, 0, 0),
(4, 4, 79, 0, 0),
(4, 4, 80, 0, 0),
(4, 4, 81, 0, 0),
(4, 4, 82, 0, 0),
(4, 4, 83, 0, 0),
(4, 4, 84, 0, 0),
(4, 4, 85, 0, 0),
(4, 4, 86, 0, 0),
(4, 4, 87, 0, 0),
(4, 4, 88, 0, 0),
(4, 4, 89, 0, 0),
(4, 4, 90, 0, 0),
(4, 4, 91, 0, 0),
(4, 4, 92, 0, 0),
(4, 4, 93, 0, 0),
(4, 4, 94, 0, 0),
(4, 4, 95, 0, 0),
(4, 4, 96, 0, 0),
(4, 4, 97, 0, 0),
(4, 4, 98, 0, 0),
(4, 4, 99, 0, 0),
(4, 4, 100, 0, 0),
(4, 4, 101, 0, 0),
(4, 4, 102, 0, 0),
(4, 4, 103, 0, 0),
(4, 4, 104, 0, 0),
(4, 4, 105, 0, 0),
(4, 4, 106, 0, 0),
(4, 4, 107, 0, 0),
(4, 4, 108, 0, 0),
(4, 4, 109, 0, 0),
(4, 2, 110, 0, 0),
(4, 2, 111, 0, 0),
(4, 2, 112, 0, 0),
(4, 2, 113, 0, 0),
(4, 2, 114, 0, 0),
(4, 2, 115, 0, 0),
(4, 2, 116, 0, 0),
(4, 2, 117, 0, 0),
(4, 2, 118, 0, 0),
(4, 2, 119, 0, 0),
(4, 2, 120, 0, 0),
(4, 2, 121, 0, 0),
(4, 2, 122, 0, 0),
(4, 2, 123, 0, 0),
(4, 2, 124, 0, 0),
(4, 2, 125, 0, 0),
(4, 26, 126, 0, 0),
(4, 26, 127, 0, 0),
(4, 26, 128, 0, 0),
(4, 26, 129, 0, 0),
(4, 26, 130, 0, 0),
(4, 26, 131, 0, 0),
(4, 26, 132, 0, 0),
(4, 26, 133, 0, 0),
(4, 26, 134, 0, 0),
(4, 26, 135, 0, 0),
(4, 26, 136, 0, 0),
(4, 26, 137, 0, 0),
(4, 26, 138, 0, 0),
(4, 26, 139, 0, 0),
(4, 26, 140, 0, 0),
(4, 26, 141, 0, 0),
(4, 26, 142, 0, 0),
(4, 26, 143, 0, 0),
(4, 26, 144, 0, 0),
(4, 26, 145, 0, 0),
(4, 26, 146, 0, 0),
(4, 26, 147, 0, 0),
(4, 26, 148, 0, 0),
(4, 26, 149, 0, 0),
(4, 26, 150, 0, 0),
(4, 4, 151, 0, 0),
(4, 6, 152, 0, 0),
(4, 7, 153, 0, 0),
(4, 26, 154, 0, 0),
(4, 13, 155, 0, 0),
(4, 13, 156, 0, 0),
(4, 13, 157, 0, 0),
(4, 13, 158, 0, 0),
(4, 13, 159, 0, 0),
(4, 13, 160, 0, 0),
(4, 13, 161, 0, 0),
(4, 13, 162, 0, 0),
(4, 13, 163, 0, 0),
(4, 13, 164, 0, 0),
(4, 13, 165, 0, 0),
(4, 13, 166, 0, 0),
(4, 13, 167, 0, 0),
(4, 13, 168, 0, 0),
(4, 13, 169, 0, 0),
(4, 13, 170, 0, 0),
(4, 13, 171, 0, 0),
(4, 13, 172, 0, 0),
(4, 13, 173, 0, 0),
(4, 14, 174, 0, 0),
(4, 14, 175, 0, 0),
(4, 14, 176, 0, 0),
(4, 14, 177, 0, 0),
(4, 14, 178, 0, 0),
(4, 14, 179, 0, 0),
(4, 14, 180, 0, 0),
(4, 14, 181, 0, 0),
(4, 14, 182, 0, 0),
(4, 14, 183, 0, 0),
(4, 14, 184, 0, 0),
(4, 14, 185, 0, 0),
(4, 14, 186, 0, 0),
(4, 14, 187, 0, 0),
(4, 14, 188, 0, 0),
(4, 14, 189, 0, 0),
(4, 14, 190, 0, 0),
(4, 14, 191, 0, 0),
(4, 14, 192, 0, 0),
(4, 14, 193, 0, 0),
(4, 14, 194, 0, 0),
(4, 14, 195, 0, 0),
(4, 14, 196, 0, 0),
(4, 14, 197, 0, 0),
(4, 14, 198, 0, 0),
(4, 14, 199, 0, 0),
(4, 14, 200, 0, 0),
(4, 14, 201, 0, 0),
(4, 14, 202, 0, 0),
(4, 14, 203, 0, 0),
(4, 14, 204, 0, 0),
(4, 8, 205, 0, 0),
(4, 8, 206, 0, 0),
(4, 8, 207, 0, 0),
(4, 8, 208, 0, 0),
(4, 8, 209, 0, 0),
(4, 8, 210, 0, 0),
(4, 8, 211, 0, 0),
(4, 8, 212, 0, 0),
(4, 8, 213, 0, 0),
(4, 8, 214, 0, 0),
(4, 8, 215, 0, 0),
(4, 8, 216, 0, 0),
(4, 8, 217, 0, 0),
(4, 8, 218, 0, 0),
(4, 8, 219, 0, 0),
(4, 10, 220, 0, 0),
(4, 10, 221, 0, 0),
(4, 10, 222, 0, 0),
(4, 10, 223, 0, 0),
(4, 10, 224, 0, 0),
(4, 10, 225, 0, 0),
(4, 10, 226, 0, 0),
(4, 10, 227, 0, 0),
(4, 10, 228, 0, 0),
(4, 10, 229, 0, 0),
(4, 10, 230, 0, 0),
(4, 10, 231, 0, 0),
(4, 9, 232, 0, 0),
(4, 9, 233, 0, 0),
(4, 9, 234, 0, 0),
(4, 9, 235, 0, 0),
(4, 9, 236, 0, 0),
(4, 9, 237, 0, 0),
(4, 9, 238, 0, 0),
(4, 9, 239, 0, 0),
(4, 9, 240, 0, 0),
(4, 9, 241, 0, 0),
(4, 9, 242, 0, 0),
(4, 9, 243, 0, 0),
(4, 9, 244, 0, 0),
(4, 9, 245, 0, 0),
(4, 9, 246, 0, 0),
(4, 9, 247, 0, 0),
(4, 9, 248, 0, 0),
(4, 9, 249, 0, 0),
(4, 9, 250, 0, 0),
(4, 9, 251, 0, 0),
(4, 9, 252, 0, 0),
(4, 9, 253, 0, 0),
(4, 9, 254, 0, 0),
(4, 9, 255, 0, 0),
(4, 16, 256, 0, 0),
(4, 16, 257, 0, 0),
(4, 16, 258, 0, 0),
(4, 16, 259, 0, 0),
(4, 16, 260, 0, 0),
(4, 16, 261, 0, 0),
(4, 16, 262, 0, 0),
(4, 16, 263, 0, 0),
(4, 16, 264, 0, 0),
(4, 16, 265, 0, 0),
(4, 16, 266, 0, 0),
(4, 16, 267, 0, 0),
(4, 16, 268, 0, 0),
(4, 16, 269, 0, 0),
(4, 16, 270, 0, 0),
(4, 16, 271, 0, 0),
(4, 16, 272, 0, 0),
(4, 16, 273, 0, 0),
(4, 16, 274, 0, 0),
(4, 16, 275, 0, 0),
(4, 16, 276, 0, 0),
(4, 16, 277, 0, 0),
(4, 16, 278, 0, 0),
(4, 15, 279, 0, 0),
(4, 15, 280, 0, 0),
(4, 15, 281, 0, 0),
(4, 15, 282, 0, 0),
(4, 15, 283, 0, 0),
(4, 15, 284, 0, 0),
(4, 15, 285, 0, 0),
(4, 15, 286, 0, 0),
(4, 15, 287, 0, 0),
(4, 15, 288, 0, 0),
(4, 18, 289, 0, 0),
(4, 18, 290, 0, 0),
(4, 18, 291, 0, 0),
(4, 18, 292, 0, 0),
(4, 18, 293, 0, 0),
(4, 18, 294, 0, 0),
(4, 18, 295, 0, 0),
(4, 18, 296, 0, 0),
(4, 18, 297, 0, 0),
(4, 18, 298, 0, 0),
(4, 18, 299, 0, 0),
(4, 18, 300, 0, 0),
(4, 18, 301, 0, 0),
(4, 18, 302, 0, 0),
(4, 18, 303, 0, 0),
(4, 18, 304, 0, 0),
(4, 18, 305, 0, 0),
(4, 19, 306, 0, 0),
(4, 19, 307, 0, 0),
(4, 19, 308, 0, 0),
(4, 19, 309, 0, 0),
(4, 19, 310, 0, 0),
(4, 19, 311, 0, 0),
(4, 19, 312, 0, 0),
(4, 19, 313, 0, 0),
(4, 20, 314, 0, 0),
(4, 20, 315, 0, 0),
(4, 20, 316, 0, 0),
(4, 20, 317, 0, 0),
(4, 20, 318, 0, 0),
(4, 20, 319, 0, 0),
(4, 20, 320, 0, 0),
(4, 20, 321, 0, 0),
(4, 20, 322, 0, 0),
(4, 20, 323, 0, 0),
(4, 20, 324, 0, 0),
(4, 20, 325, 0, 0),
(4, 20, 326, 0, 0),
(4, 20, 327, 0, 0),
(4, 20, 328, 0, 0),
(4, 20, 329, 0, 0),
(4, 20, 330, 0, 0),
(4, 20, 331, 0, 0),
(4, 20, 332, 0, 0),
(4, 20, 333, 0, 0),
(4, 20, 334, 0, 0),
(4, 20, 335, 0, 0),
(4, 20, 336, 0, 0),
(4, 20, 337, 0, 0),
(4, 20, 338, 0, 0),
(4, 20, 339, 0, 0),
(4, 20, 340, 0, 0),
(4, 20, 341, 0, 0),
(4, 20, 342, 0, 0),
(4, 20, 343, 0, 0),
(4, 20, 344, 0, 0),
(4, 20, 345, 0, 0),
(4, 20, 346, 0, 0),
(4, 20, 347, 0, 0),
(4, 20, 348, 0, 0),
(4, 20, 349, 0, 0),
(4, 20, 350, 0, 0),
(4, 21, 351, 0, 0),
(4, 21, 352, 0, 0),
(4, 21, 353, 0, 0),
(4, 21, 354, 0, 0),
(4, 21, 355, 0, 0),
(4, 21, 356, 0, 0),
(4, 21, 357, 0, 0),
(4, 21, 358, 0, 0),
(4, 21, 359, 0, 0),
(4, 21, 360, 0, 0),
(4, 21, 361, 0, 0),
(4, 21, 362, 0, 0),
(4, 21, 363, 0, 0),
(4, 21, 364, 0, 0),
(4, 21, 365, 0, 0),
(4, 21, 366, 0, 0),
(4, 21, 367, 0, 0),
(4, 21, 368, 0, 0),
(4, 21, 369, 0, 0),
(4, 21, 370, 0, 0),
(4, 21, 371, 0, 0),
(4, 21, 372, 0, 0),
(4, 21, 373, 0, 0),
(4, 21, 374, 0, 0),
(4, 21, 375, 0, 0),
(4, 21, 376, 0, 0),
(4, 21, 377, 0, 0),
(4, 21, 378, 0, 0),
(4, 21, 379, 0, 0),
(4, 21, 380, 0, 0),
(4, 21, 381, 0, 0),
(4, 21, 382, 0, 0),
(4, 21, 383, 0, 0),
(4, 21, 384, 0, 0),
(4, 21, 385, 0, 0),
(4, 21, 386, 0, 0),
(4, 21, 387, 0, 0),
(4, 21, 388, 0, 0),
(4, 22, 389, 0, 0),
(4, 22, 390, 0, 0),
(4, 22, 391, 0, 0),
(4, 22, 392, 0, 0),
(4, 22, 393, 0, 0),
(4, 22, 394, 0, 0),
(4, 22, 395, 0, 0),
(4, 22, 396, 0, 0),
(4, 22, 397, 0, 0),
(4, 22, 398, 0, 0),
(4, 22, 399, 0, 0),
(4, 22, 400, 0, 0),
(4, 22, 401, 0, 0),
(4, 22, 402, 0, 0),
(4, 22, 403, 0, 0),
(4, 22, 404, 0, 0),
(4, 22, 405, 0, 0),
(4, 22, 406, 0, 0),
(4, 22, 407, 0, 0),
(4, 22, 408, 0, 0),
(4, 22, 409, 0, 0),
(4, 22, 410, 0, 0),
(4, 22, 411, 0, 0),
(4, 22, 412, 0, 0),
(4, 22, 413, 0, 0),
(4, 22, 414, 0, 0),
(4, 22, 415, 0, 0),
(4, 22, 416, 0, 0),
(4, 22, 417, 0, 0),
(4, 22, 418, 0, 0),
(4, 22, 419, 0, 0),
(4, 22, 420, 0, 0),
(4, 22, 421, 0, 0),
(4, 22, 422, 0, 0),
(4, 22, 423, 0, 0),
(4, 22, 424, 0, 0),
(4, 22, 425, 0, 0),
(4, 22, 426, 0, 0),
(4, 22, 427, 0, 0),
(4, 22, 428, 0, 0),
(4, 22, 429, 0, 0),
(4, 22, 430, 0, 0),
(4, 22, 431, 0, 0),
(4, 22, 432, 0, 0),
(4, 22, 433, 0, 0),
(4, 22, 434, 0, 0),
(4, 22, 435, 0, 0),
(4, 23, 436, 0, 0),
(4, 23, 437, 0, 0),
(4, 23, 438, 0, 0),
(4, 23, 439, 0, 0),
(4, 23, 440, 0, 0);
INSERT INTO `vtiger_profile2field` (`profileid`, `tabid`, `fieldid`, `visible`, `readonly`) VALUES
(4, 23, 441, 0, 0),
(4, 23, 442, 0, 0),
(4, 23, 443, 0, 0),
(4, 23, 444, 0, 0),
(4, 23, 445, 0, 0),
(4, 23, 446, 0, 0),
(4, 23, 447, 0, 0),
(4, 23, 448, 0, 0),
(4, 23, 449, 0, 0),
(4, 23, 450, 0, 0),
(4, 23, 451, 0, 0),
(4, 23, 452, 0, 0),
(4, 23, 453, 0, 0),
(4, 23, 454, 0, 0),
(4, 23, 455, 0, 0),
(4, 23, 456, 0, 0),
(4, 23, 457, 0, 0),
(4, 23, 458, 0, 0),
(4, 23, 459, 0, 0),
(4, 23, 460, 0, 0),
(4, 23, 461, 0, 0),
(4, 23, 462, 0, 0),
(4, 23, 463, 0, 0),
(4, 23, 464, 0, 0),
(4, 23, 465, 0, 0),
(4, 23, 466, 0, 0),
(4, 23, 467, 0, 0),
(4, 23, 468, 0, 0),
(4, 23, 469, 0, 0),
(4, 23, 470, 0, 0),
(4, 23, 471, 0, 0),
(4, 23, 472, 0, 0),
(4, 23, 473, 0, 0),
(4, 23, 474, 0, 0),
(4, 29, 475, 0, 0),
(4, 29, 479, 0, 0),
(4, 29, 480, 0, 0),
(4, 29, 482, 0, 0),
(4, 29, 489, 0, 0),
(4, 29, 490, 0, 0),
(4, 29, 491, 0, 0),
(4, 29, 492, 0, 0),
(4, 29, 493, 0, 0),
(4, 29, 495, 0, 0),
(4, 29, 496, 0, 0),
(4, 29, 497, 0, 0),
(4, 29, 498, 0, 0),
(4, 29, 499, 0, 0),
(4, 29, 504, 0, 0),
(4, 29, 505, 0, 0),
(4, 29, 506, 0, 0),
(4, 29, 507, 0, 0),
(4, 29, 515, 0, 0),
(4, 10, 520, 0, 0),
(4, 10, 521, 0, 0),
(4, 10, 522, 0, 0),
(4, 10, 523, 0, 0),
(4, 10, 524, 0, 0),
(4, 10, 525, 0, 0),
(4, 31, 526, 0, 0),
(4, 31, 527, 0, 0),
(4, 31, 528, 0, 0),
(4, 31, 529, 0, 0),
(4, 31, 530, 0, 0),
(4, 31, 531, 0, 0),
(4, 31, 532, 0, 0),
(4, 31, 533, 0, 0),
(4, 31, 534, 0, 0),
(4, 31, 535, 0, 0),
(4, 31, 536, 0, 0),
(4, 31, 537, 0, 0),
(4, 31, 538, 0, 0),
(4, 31, 539, 0, 0),
(4, 31, 540, 0, 0),
(4, 31, 541, 0, 0),
(4, 31, 542, 0, 0),
(4, 31, 543, 0, 0),
(4, 31, 544, 0, 0),
(4, 31, 545, 0, 0),
(4, 31, 546, 0, 0),
(4, 31, 547, 0, 0),
(4, 35, 548, 0, 0),
(4, 35, 549, 0, 0),
(4, 35, 550, 0, 0),
(4, 35, 551, 0, 0),
(4, 35, 552, 0, 0),
(4, 35, 553, 0, 0),
(4, 35, 554, 0, 0),
(4, 35, 555, 0, 0),
(4, 35, 556, 0, 0),
(4, 35, 557, 0, 0),
(4, 35, 558, 0, 0),
(4, 35, 559, 0, 0),
(4, 35, 560, 0, 0),
(4, 35, 561, 0, 0),
(4, 35, 562, 0, 0),
(4, 35, 563, 0, 0),
(4, 35, 564, 0, 0),
(4, 29, 565, 0, 0),
(4, 37, 566, 0, 0),
(4, 37, 567, 0, 0),
(4, 37, 568, 0, 0),
(4, 37, 569, 0, 0),
(4, 37, 570, 0, 0),
(4, 37, 571, 0, 0),
(4, 37, 572, 0, 0),
(4, 37, 573, 0, 0),
(4, 37, 574, 0, 0),
(4, 37, 575, 0, 0),
(4, 37, 576, 0, 0),
(4, 37, 577, 0, 0),
(4, 37, 578, 0, 0),
(4, 37, 579, 0, 0),
(4, 37, 580, 0, 0),
(4, 37, 581, 0, 0),
(4, 37, 582, 0, 0),
(4, 37, 583, 0, 0),
(4, 37, 584, 0, 0),
(4, 37, 585, 0, 0),
(4, 37, 586, 0, 0),
(4, 37, 587, 0, 0),
(4, 38, 588, 0, 0),
(4, 38, 589, 0, 0),
(4, 38, 590, 0, 0),
(4, 38, 591, 0, 0),
(4, 38, 592, 0, 0),
(4, 38, 593, 0, 0),
(4, 38, 594, 0, 0),
(4, 38, 595, 0, 0),
(4, 42, 596, 0, 0),
(4, 42, 597, 0, 0),
(4, 42, 598, 0, 0),
(4, 42, 599, 0, 0),
(4, 42, 600, 0, 0),
(4, 42, 601, 0, 0),
(4, 43, 602, 0, 0),
(4, 43, 603, 0, 0),
(4, 43, 604, 0, 0),
(4, 43, 605, 0, 0),
(4, 43, 606, 0, 0),
(4, 43, 607, 0, 0),
(4, 43, 608, 0, 0),
(4, 43, 609, 0, 0),
(4, 43, 610, 0, 0),
(4, 43, 611, 0, 0),
(4, 43, 612, 0, 0),
(4, 43, 613, 0, 0),
(4, 43, 614, 0, 0),
(4, 44, 615, 0, 0),
(4, 44, 616, 0, 0),
(4, 44, 617, 0, 0),
(4, 44, 618, 0, 0),
(4, 44, 619, 0, 0),
(4, 44, 620, 0, 0),
(4, 44, 621, 0, 0),
(4, 44, 622, 0, 0),
(4, 44, 623, 0, 0),
(4, 44, 624, 0, 0),
(4, 44, 625, 0, 0),
(4, 44, 626, 0, 0),
(4, 44, 627, 0, 0),
(4, 44, 628, 0, 0),
(4, 44, 629, 0, 0),
(4, 44, 630, 0, 0),
(4, 44, 631, 0, 0),
(4, 44, 632, 0, 0),
(4, 45, 633, 0, 0),
(4, 45, 634, 0, 0),
(4, 45, 635, 0, 0),
(4, 45, 636, 0, 0),
(4, 45, 637, 0, 0),
(4, 45, 638, 0, 0),
(4, 45, 639, 0, 0),
(4, 45, 640, 0, 0),
(4, 45, 641, 0, 0),
(4, 45, 642, 0, 0),
(4, 45, 643, 0, 0),
(4, 45, 644, 0, 0),
(4, 45, 645, 0, 0),
(4, 45, 646, 0, 0),
(4, 45, 647, 0, 0),
(4, 45, 648, 0, 0),
(4, 45, 649, 0, 0),
(4, 45, 650, 0, 0),
(4, 45, 651, 0, 0),
(4, 45, 652, 0, 0),
(4, 47, 653, 0, 0),
(4, 47, 654, 0, 0),
(4, 47, 655, 0, 0),
(4, 47, 656, 0, 0),
(4, 47, 657, 0, 0),
(4, 47, 658, 0, 0),
(4, 47, 659, 0, 0),
(4, 47, 660, 0, 0),
(4, 47, 661, 0, 0),
(4, 47, 662, 0, 0),
(4, 47, 663, 0, 0),
(4, 47, 664, 0, 0),
(4, 47, 665, 0, 0),
(4, 47, 666, 0, 0),
(4, 47, 667, 0, 0),
(4, 47, 668, 0, 0),
(4, 47, 669, 0, 0),
(4, 47, 670, 0, 0),
(4, 47, 671, 0, 0),
(4, 47, 672, 0, 0),
(4, 47, 673, 0, 0),
(4, 2, 674, 0, 0),
(4, 29, 675, 0, 0),
(4, 23, 676, 0, 0),
(4, 23, 677, 0, 0),
(4, 23, 678, 0, 0),
(4, 23, 679, 0, 0),
(4, 23, 680, 0, 0),
(4, 23, 681, 0, 0),
(4, 23, 682, 0, 0),
(4, 23, 683, 0, 0),
(4, 23, 684, 0, 0),
(4, 22, 685, 0, 0),
(4, 22, 686, 0, 0),
(4, 22, 687, 0, 0),
(4, 22, 688, 0, 0),
(4, 22, 689, 0, 0),
(4, 22, 690, 0, 0),
(4, 22, 691, 0, 0),
(4, 22, 692, 0, 0),
(4, 22, 693, 0, 0),
(4, 21, 694, 0, 0),
(4, 21, 695, 0, 0),
(4, 21, 696, 0, 0),
(4, 21, 697, 0, 0),
(4, 21, 698, 0, 0),
(4, 21, 699, 0, 0),
(4, 21, 700, 0, 0),
(4, 21, 701, 0, 0),
(4, 21, 702, 0, 0),
(4, 20, 703, 0, 0),
(4, 20, 704, 0, 0),
(4, 20, 705, 0, 0),
(4, 20, 706, 0, 0),
(4, 20, 707, 0, 0),
(4, 20, 708, 0, 0),
(4, 20, 709, 0, 0),
(4, 20, 710, 0, 0),
(4, 20, 711, 0, 0),
(4, 29, 712, 0, 0),
(4, 44, 713, 0, 0),
(4, 38, 714, 0, 0),
(4, 29, 715, 0, 0),
(4, 29, 716, 0, 0),
(4, 29, 717, 0, 0),
(4, 23, 718, 0, 0),
(4, 22, 719, 0, 0),
(4, 21, 720, 0, 0),
(4, 20, 721, 0, 0),
(4, 29, 722, 0, 0),
(4, 6, 723, 0, 0),
(4, 4, 724, 0, 0),
(4, 2, 725, 0, 0),
(4, 29, 726, 0, 0),
(4, 23, 727, 0, 0),
(4, 23, 728, 0, 0),
(4, 21, 729, 0, 0),
(4, 21, 730, 0, 0),
(4, 18, 731, 0, 0),
(4, 7, 732, 0, 0),
(4, 38, 733, 0, 0),
(4, 38, 734, 0, 0),
(4, 23, 735, 0, 0),
(4, 20, 736, 0, 0),
(4, 21, 737, 0, 0),
(4, 22, 738, 0, 0),
(4, 29, 739, 0, 0),
(4, 2, 740, 0, 0),
(4, 13, 741, 0, 0),
(4, 29, 742, 0, 0),
(4, 29, 743, 0, 0),
(4, 29, 744, 0, 0),
(4, 29, 745, 0, 0),
(4, 14, 772, 0, 0),
(4, 31, 773, 0, 0),
(4, 23, 774, 0, 0),
(4, 29, 775, 0, 0),
(4, 23, 776, 0, 0),
(4, 23, 777, 0, 0),
(4, 23, 778, 0, 0),
(4, 20, 779, 0, 0),
(4, 20, 780, 0, 0),
(4, 20, 781, 0, 0),
(4, 21, 782, 0, 0),
(4, 22, 783, 0, 0),
(4, 22, 784, 0, 0),
(4, 22, 785, 0, 0),
(4, 38, 786, 0, 0),
(4, 38, 787, 0, 0),
(4, 38, 788, 0, 0),
(4, 2, 789, 0, 0),
(4, 4, 790, 0, 0),
(4, 6, 791, 0, 0),
(4, 7, 792, 0, 0),
(4, 8, 793, 0, 0),
(4, 9, 794, 0, 0),
(4, 10, 795, 0, 0),
(4, 13, 796, 0, 0),
(4, 14, 797, 0, 0),
(4, 15, 798, 0, 0),
(4, 16, 799, 0, 0),
(4, 18, 800, 0, 0),
(4, 19, 801, 0, 0),
(4, 20, 802, 0, 0),
(4, 21, 803, 0, 0),
(4, 22, 804, 0, 0),
(4, 23, 805, 0, 0),
(4, 26, 806, 0, 0),
(4, 10, 807, 0, 0),
(4, 2, 808, 0, 0),
(4, 4, 809, 0, 0),
(4, 6, 810, 0, 0),
(4, 7, 811, 0, 0),
(4, 8, 812, 0, 0),
(4, 9, 813, 0, 0),
(4, 10, 814, 0, 0),
(4, 13, 815, 0, 0),
(4, 14, 816, 0, 0),
(4, 15, 817, 0, 0),
(4, 16, 818, 0, 0),
(4, 18, 819, 0, 0),
(4, 19, 820, 0, 0),
(4, 20, 821, 0, 0),
(4, 21, 822, 0, 0),
(4, 22, 823, 0, 0),
(4, 23, 824, 0, 0),
(4, 26, 825, 0, 0),
(4, 2, 826, 0, 0),
(4, 4, 827, 0, 0),
(4, 6, 828, 0, 0),
(4, 7, 829, 0, 0),
(4, 8, 830, 0, 0),
(4, 9, 831, 0, 0),
(4, 10, 832, 0, 0),
(4, 13, 833, 0, 0),
(4, 14, 834, 0, 0),
(4, 15, 835, 0, 0),
(4, 16, 836, 0, 0),
(4, 18, 837, 0, 0),
(4, 19, 838, 0, 0),
(4, 20, 839, 0, 0),
(4, 21, 840, 0, 0),
(4, 22, 841, 0, 0),
(4, 23, 842, 0, 0),
(4, 26, 843, 0, 0),
(4, 20, 844, 0, 0),
(4, 21, 845, 0, 0),
(4, 22, 846, 0, 0),
(4, 23, 847, 0, 0),
(4, 45, 848, 0, 0),
(4, 45, 849, 0, 0),
(4, 29, 850, 0, 0),
(4, 22, 851, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2globalpermissions`
--

CREATE TABLE `vtiger_profile2globalpermissions` (
  `profileid` int(19) NOT NULL,
  `globalactionid` int(19) NOT NULL,
  `globalactionpermission` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_profile2globalpermissions`
--

INSERT INTO `vtiger_profile2globalpermissions` (`profileid`, `globalactionid`, `globalactionpermission`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 1, 1),
(2, 2, 1),
(3, 1, 1),
(3, 2, 1),
(4, 1, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2standardpermissions`
--

CREATE TABLE `vtiger_profile2standardpermissions` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) NOT NULL,
  `operation` int(10) NOT NULL,
  `permissions` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_profile2standardpermissions`
--

INSERT INTO `vtiger_profile2standardpermissions` (`profileid`, `tabid`, `operation`, `permissions`) VALUES
(1, 2, 0, 0),
(1, 2, 1, 0),
(1, 2, 2, 0),
(1, 2, 3, 0),
(1, 2, 4, 0),
(1, 2, 7, 0),
(1, 4, 0, 0),
(1, 4, 1, 0),
(1, 4, 2, 0),
(1, 4, 3, 0),
(1, 4, 4, 0),
(1, 4, 7, 0),
(1, 6, 0, 0),
(1, 6, 1, 0),
(1, 6, 2, 0),
(1, 6, 3, 0),
(1, 6, 4, 0),
(1, 6, 7, 0),
(1, 7, 0, 0),
(1, 7, 1, 0),
(1, 7, 2, 0),
(1, 7, 3, 0),
(1, 7, 4, 0),
(1, 7, 7, 0),
(1, 8, 0, 0),
(1, 8, 1, 0),
(1, 8, 2, 0),
(1, 8, 3, 0),
(1, 8, 4, 0),
(1, 8, 7, 0),
(1, 9, 0, 0),
(1, 9, 1, 0),
(1, 9, 2, 0),
(1, 9, 3, 0),
(1, 9, 4, 0),
(1, 9, 7, 0),
(1, 10, 0, 0),
(1, 10, 1, 0),
(1, 10, 2, 0),
(1, 10, 4, 0),
(1, 13, 0, 0),
(1, 13, 1, 0),
(1, 13, 2, 0),
(1, 13, 3, 0),
(1, 13, 4, 0),
(1, 13, 7, 0),
(1, 14, 0, 0),
(1, 14, 1, 0),
(1, 14, 2, 0),
(1, 14, 3, 0),
(1, 14, 4, 0),
(1, 14, 7, 0),
(1, 15, 0, 0),
(1, 15, 1, 0),
(1, 15, 2, 0),
(1, 15, 3, 0),
(1, 15, 4, 0),
(1, 15, 7, 0),
(1, 16, 0, 0),
(1, 16, 1, 0),
(1, 16, 2, 0),
(1, 16, 3, 0),
(1, 16, 4, 0),
(1, 16, 7, 0),
(1, 18, 0, 0),
(1, 18, 1, 0),
(1, 18, 2, 0),
(1, 18, 3, 0),
(1, 18, 4, 0),
(1, 18, 7, 0),
(1, 19, 0, 0),
(1, 19, 1, 0),
(1, 19, 2, 0),
(1, 19, 3, 0),
(1, 19, 4, 0),
(1, 19, 7, 0),
(1, 20, 0, 0),
(1, 20, 1, 0),
(1, 20, 2, 0),
(1, 20, 3, 0),
(1, 20, 4, 0),
(1, 20, 7, 0),
(1, 21, 0, 0),
(1, 21, 1, 0),
(1, 21, 2, 0),
(1, 21, 3, 0),
(1, 21, 4, 0),
(1, 21, 7, 0),
(1, 22, 0, 0),
(1, 22, 1, 0),
(1, 22, 2, 0),
(1, 22, 3, 0),
(1, 22, 4, 0),
(1, 22, 7, 0),
(1, 23, 0, 0),
(1, 23, 1, 0),
(1, 23, 2, 0),
(1, 23, 3, 0),
(1, 23, 4, 0),
(1, 23, 7, 0),
(1, 25, 0, 1),
(1, 25, 1, 1),
(1, 25, 2, 1),
(1, 25, 3, 0),
(1, 25, 4, 0),
(1, 25, 7, 1),
(1, 26, 0, 0),
(1, 26, 1, 0),
(1, 26, 2, 0),
(1, 26, 3, 0),
(1, 26, 4, 0),
(1, 26, 7, 0),
(1, 31, 0, 0),
(1, 31, 1, 0),
(1, 31, 2, 0),
(1, 31, 3, 0),
(1, 31, 4, 0),
(1, 31, 7, 0),
(1, 35, 0, 0),
(1, 35, 1, 0),
(1, 35, 2, 0),
(1, 35, 3, 0),
(1, 35, 4, 0),
(1, 35, 7, 0),
(1, 37, 0, 0),
(1, 37, 1, 0),
(1, 37, 2, 0),
(1, 37, 3, 0),
(1, 37, 4, 0),
(1, 37, 7, 0),
(1, 38, 0, 0),
(1, 38, 1, 0),
(1, 38, 2, 0),
(1, 38, 3, 0),
(1, 38, 4, 0),
(1, 38, 7, 0),
(1, 42, 0, 0),
(1, 42, 1, 0),
(1, 42, 2, 0),
(1, 42, 3, 0),
(1, 42, 4, 0),
(1, 42, 7, 0),
(1, 43, 0, 0),
(1, 43, 1, 0),
(1, 43, 2, 0),
(1, 43, 3, 0),
(1, 43, 4, 0),
(1, 43, 7, 0),
(1, 44, 0, 0),
(1, 44, 1, 0),
(1, 44, 2, 0),
(1, 44, 3, 0),
(1, 44, 4, 0),
(1, 44, 7, 0),
(1, 45, 0, 0),
(1, 45, 1, 0),
(1, 45, 2, 0),
(1, 45, 3, 0),
(1, 45, 4, 0),
(1, 45, 7, 0),
(1, 47, 0, 0),
(1, 47, 1, 0),
(1, 47, 2, 0),
(1, 47, 3, 0),
(1, 47, 4, 0),
(1, 47, 7, 0),
(2, 2, 0, 0),
(2, 2, 1, 0),
(2, 2, 2, 0),
(2, 2, 3, 0),
(2, 2, 4, 0),
(2, 2, 7, 0),
(2, 4, 0, 0),
(2, 4, 1, 0),
(2, 4, 2, 0),
(2, 4, 3, 0),
(2, 4, 4, 0),
(2, 4, 7, 0),
(2, 6, 0, 0),
(2, 6, 1, 0),
(2, 6, 2, 0),
(2, 6, 3, 0),
(2, 6, 4, 0),
(2, 6, 7, 0),
(2, 7, 0, 0),
(2, 7, 1, 0),
(2, 7, 2, 0),
(2, 7, 3, 0),
(2, 7, 4, 0),
(2, 7, 7, 0),
(2, 8, 0, 0),
(2, 8, 1, 0),
(2, 8, 2, 0),
(2, 8, 3, 0),
(2, 8, 4, 0),
(2, 8, 7, 0),
(2, 9, 0, 0),
(2, 9, 1, 0),
(2, 9, 2, 0),
(2, 9, 3, 0),
(2, 9, 4, 0),
(2, 9, 7, 0),
(2, 10, 0, 0),
(2, 10, 1, 0),
(2, 10, 2, 0),
(2, 10, 4, 0),
(2, 13, 0, 1),
(2, 13, 1, 1),
(2, 13, 2, 1),
(2, 13, 3, 0),
(2, 13, 4, 0),
(2, 13, 7, 1),
(2, 14, 0, 0),
(2, 14, 1, 0),
(2, 14, 2, 0),
(2, 14, 3, 0),
(2, 14, 4, 0),
(2, 14, 7, 0),
(2, 15, 0, 0),
(2, 15, 1, 0),
(2, 15, 2, 0),
(2, 15, 3, 0),
(2, 15, 4, 0),
(2, 15, 7, 0),
(2, 16, 0, 0),
(2, 16, 1, 0),
(2, 16, 2, 0),
(2, 16, 3, 0),
(2, 16, 4, 0),
(2, 16, 7, 0),
(2, 18, 0, 0),
(2, 18, 1, 0),
(2, 18, 2, 0),
(2, 18, 3, 0),
(2, 18, 4, 0),
(2, 18, 7, 0),
(2, 19, 0, 0),
(2, 19, 1, 0),
(2, 19, 2, 0),
(2, 19, 3, 0),
(2, 19, 4, 0),
(2, 19, 7, 0),
(2, 20, 0, 0),
(2, 20, 1, 0),
(2, 20, 2, 0),
(2, 20, 3, 0),
(2, 20, 4, 0),
(2, 20, 7, 0),
(2, 21, 0, 0),
(2, 21, 1, 0),
(2, 21, 2, 0),
(2, 21, 3, 0),
(2, 21, 4, 0),
(2, 21, 7, 0),
(2, 22, 0, 0),
(2, 22, 1, 0),
(2, 22, 2, 0),
(2, 22, 3, 0),
(2, 22, 4, 0),
(2, 22, 7, 0),
(2, 23, 0, 0),
(2, 23, 1, 0),
(2, 23, 2, 0),
(2, 23, 3, 0),
(2, 23, 4, 0),
(2, 23, 7, 0),
(2, 25, 0, 1),
(2, 25, 1, 1),
(2, 25, 2, 1),
(2, 25, 3, 0),
(2, 25, 4, 0),
(2, 25, 7, 1),
(2, 26, 0, 0),
(2, 26, 1, 0),
(2, 26, 2, 0),
(2, 26, 3, 0),
(2, 26, 4, 0),
(2, 26, 7, 0),
(2, 31, 0, 0),
(2, 31, 1, 0),
(2, 31, 2, 0),
(2, 31, 3, 0),
(2, 31, 4, 0),
(2, 31, 7, 0),
(2, 35, 0, 0),
(2, 35, 1, 0),
(2, 35, 2, 0),
(2, 35, 3, 0),
(2, 35, 4, 0),
(2, 35, 7, 0),
(2, 37, 0, 0),
(2, 37, 1, 0),
(2, 37, 2, 0),
(2, 37, 3, 0),
(2, 37, 4, 0),
(2, 37, 7, 0),
(2, 38, 0, 0),
(2, 38, 1, 0),
(2, 38, 2, 0),
(2, 38, 3, 0),
(2, 38, 4, 0),
(2, 38, 7, 0),
(2, 42, 0, 0),
(2, 42, 1, 0),
(2, 42, 2, 0),
(2, 42, 3, 0),
(2, 42, 4, 0),
(2, 42, 7, 0),
(2, 43, 0, 0),
(2, 43, 1, 0),
(2, 43, 2, 0),
(2, 43, 3, 0),
(2, 43, 4, 0),
(2, 43, 7, 0),
(2, 44, 0, 0),
(2, 44, 1, 0),
(2, 44, 2, 0),
(2, 44, 3, 0),
(2, 44, 4, 0),
(2, 44, 7, 0),
(2, 45, 0, 0),
(2, 45, 1, 0),
(2, 45, 2, 0),
(2, 45, 3, 0),
(2, 45, 4, 0),
(2, 45, 7, 0),
(2, 47, 0, 0),
(2, 47, 1, 0),
(2, 47, 2, 0),
(2, 47, 3, 0),
(2, 47, 4, 0),
(2, 47, 7, 0),
(3, 2, 0, 1),
(3, 2, 1, 1),
(3, 2, 2, 1),
(3, 2, 3, 0),
(3, 2, 4, 0),
(3, 2, 7, 1),
(3, 4, 0, 0),
(3, 4, 1, 0),
(3, 4, 2, 0),
(3, 4, 3, 0),
(3, 4, 4, 0),
(3, 4, 7, 0),
(3, 6, 0, 0),
(3, 6, 1, 0),
(3, 6, 2, 0),
(3, 6, 3, 0),
(3, 6, 4, 0),
(3, 6, 7, 0),
(3, 7, 0, 0),
(3, 7, 1, 0),
(3, 7, 2, 0),
(3, 7, 3, 0),
(3, 7, 4, 0),
(3, 7, 7, 0),
(3, 8, 0, 0),
(3, 8, 1, 0),
(3, 8, 2, 0),
(3, 8, 3, 0),
(3, 8, 4, 0),
(3, 8, 7, 0),
(3, 9, 0, 0),
(3, 9, 1, 0),
(3, 9, 2, 0),
(3, 9, 3, 0),
(3, 9, 4, 0),
(3, 9, 7, 0),
(3, 10, 0, 0),
(3, 10, 1, 0),
(3, 10, 2, 0),
(3, 10, 4, 0),
(3, 13, 0, 0),
(3, 13, 1, 0),
(3, 13, 2, 0),
(3, 13, 3, 0),
(3, 13, 4, 0),
(3, 13, 7, 0),
(3, 14, 0, 0),
(3, 14, 1, 0),
(3, 14, 2, 0),
(3, 14, 3, 0),
(3, 14, 4, 0),
(3, 14, 7, 0),
(3, 15, 0, 0),
(3, 15, 1, 0),
(3, 15, 2, 0),
(3, 15, 3, 0),
(3, 15, 4, 0),
(3, 15, 7, 0),
(3, 16, 0, 0),
(3, 16, 1, 0),
(3, 16, 2, 0),
(3, 16, 3, 0),
(3, 16, 4, 0),
(3, 16, 7, 0),
(3, 18, 0, 0),
(3, 18, 1, 0),
(3, 18, 2, 0),
(3, 18, 3, 0),
(3, 18, 4, 0),
(3, 18, 7, 0),
(3, 19, 0, 0),
(3, 19, 1, 0),
(3, 19, 2, 0),
(3, 19, 3, 0),
(3, 19, 4, 0),
(3, 19, 7, 0),
(3, 20, 0, 0),
(3, 20, 1, 0),
(3, 20, 2, 0),
(3, 20, 3, 0),
(3, 20, 4, 0),
(3, 20, 7, 0),
(3, 21, 0, 0),
(3, 21, 1, 0),
(3, 21, 2, 0),
(3, 21, 3, 0),
(3, 21, 4, 0),
(3, 21, 7, 0),
(3, 22, 0, 0),
(3, 22, 1, 0),
(3, 22, 2, 0),
(3, 22, 3, 0),
(3, 22, 4, 0),
(3, 22, 7, 0),
(3, 23, 0, 0),
(3, 23, 1, 0),
(3, 23, 2, 0),
(3, 23, 3, 0),
(3, 23, 4, 0),
(3, 23, 7, 0),
(3, 25, 0, 1),
(3, 25, 1, 1),
(3, 25, 2, 1),
(3, 25, 3, 0),
(3, 25, 4, 0),
(3, 25, 7, 1),
(3, 26, 0, 0),
(3, 26, 1, 0),
(3, 26, 2, 0),
(3, 26, 3, 0),
(3, 26, 4, 0),
(3, 26, 7, 0),
(3, 31, 0, 0),
(3, 31, 1, 0),
(3, 31, 2, 0),
(3, 31, 3, 0),
(3, 31, 4, 0),
(3, 31, 7, 0),
(3, 35, 0, 0),
(3, 35, 1, 0),
(3, 35, 2, 0),
(3, 35, 3, 0),
(3, 35, 4, 0),
(3, 35, 7, 0),
(3, 37, 0, 0),
(3, 37, 1, 0),
(3, 37, 2, 0),
(3, 37, 3, 0),
(3, 37, 4, 0),
(3, 37, 7, 0),
(3, 38, 0, 0),
(3, 38, 1, 0),
(3, 38, 2, 0),
(3, 38, 3, 0),
(3, 38, 4, 0),
(3, 38, 7, 0),
(3, 42, 0, 0),
(3, 42, 1, 0),
(3, 42, 2, 0),
(3, 42, 3, 0),
(3, 42, 4, 0),
(3, 42, 7, 0),
(3, 43, 0, 0),
(3, 43, 1, 0),
(3, 43, 2, 0),
(3, 43, 3, 0),
(3, 43, 4, 0),
(3, 43, 7, 0),
(3, 44, 0, 0),
(3, 44, 1, 0),
(3, 44, 2, 0),
(3, 44, 3, 0),
(3, 44, 4, 0),
(3, 44, 7, 0),
(3, 45, 0, 0),
(3, 45, 1, 0),
(3, 45, 2, 0),
(3, 45, 3, 0),
(3, 45, 4, 0),
(3, 45, 7, 0),
(3, 47, 0, 0),
(3, 47, 1, 0),
(3, 47, 2, 0),
(3, 47, 3, 0),
(3, 47, 4, 0),
(3, 47, 7, 0),
(4, 2, 0, 1),
(4, 2, 1, 1),
(4, 2, 2, 1),
(4, 2, 3, 0),
(4, 2, 4, 0),
(4, 2, 7, 1),
(4, 4, 0, 1),
(4, 4, 1, 1),
(4, 4, 2, 1),
(4, 4, 3, 0),
(4, 4, 4, 0),
(4, 4, 7, 1),
(4, 6, 0, 1),
(4, 6, 1, 1),
(4, 6, 2, 1),
(4, 6, 3, 0),
(4, 6, 4, 0),
(4, 6, 7, 1),
(4, 7, 0, 1),
(4, 7, 1, 1),
(4, 7, 2, 1),
(4, 7, 3, 0),
(4, 7, 4, 0),
(4, 7, 7, 1),
(4, 8, 0, 1),
(4, 8, 1, 1),
(4, 8, 2, 1),
(4, 8, 3, 0),
(4, 8, 4, 0),
(4, 8, 7, 1),
(4, 9, 0, 1),
(4, 9, 1, 1),
(4, 9, 2, 1),
(4, 9, 3, 0),
(4, 9, 4, 0),
(4, 9, 7, 1),
(4, 10, 0, 0),
(4, 10, 1, 0),
(4, 10, 2, 0),
(4, 10, 4, 0),
(4, 13, 0, 1),
(4, 13, 1, 1),
(4, 13, 2, 1),
(4, 13, 3, 0),
(4, 13, 4, 0),
(4, 13, 7, 1),
(4, 14, 0, 1),
(4, 14, 1, 1),
(4, 14, 2, 1),
(4, 14, 3, 0),
(4, 14, 4, 0),
(4, 14, 7, 1),
(4, 15, 0, 1),
(4, 15, 1, 1),
(4, 15, 2, 1),
(4, 15, 3, 0),
(4, 15, 4, 0),
(4, 15, 7, 1),
(4, 16, 0, 1),
(4, 16, 1, 1),
(4, 16, 2, 1),
(4, 16, 3, 0),
(4, 16, 4, 0),
(4, 16, 7, 1),
(4, 18, 0, 1),
(4, 18, 1, 1),
(4, 18, 2, 1),
(4, 18, 3, 0),
(4, 18, 4, 0),
(4, 18, 7, 1),
(4, 19, 0, 1),
(4, 19, 1, 1),
(4, 19, 2, 1),
(4, 19, 3, 0),
(4, 19, 4, 0),
(4, 19, 7, 1),
(4, 20, 0, 1),
(4, 20, 1, 1),
(4, 20, 2, 1),
(4, 20, 3, 0),
(4, 20, 4, 0),
(4, 20, 7, 1),
(4, 21, 0, 1),
(4, 21, 1, 1),
(4, 21, 2, 1),
(4, 21, 3, 0),
(4, 21, 4, 0),
(4, 21, 7, 1),
(4, 22, 0, 1),
(4, 22, 1, 1),
(4, 22, 2, 1),
(4, 22, 3, 0),
(4, 22, 4, 0),
(4, 22, 7, 1),
(4, 23, 0, 1),
(4, 23, 1, 1),
(4, 23, 2, 1),
(4, 23, 3, 0),
(4, 23, 4, 0),
(4, 23, 7, 1),
(4, 25, 0, 1),
(4, 25, 1, 1),
(4, 25, 2, 1),
(4, 25, 3, 0),
(4, 25, 4, 0),
(4, 25, 7, 1),
(4, 26, 0, 1),
(4, 26, 1, 1),
(4, 26, 2, 1),
(4, 26, 3, 0),
(4, 26, 4, 0),
(4, 26, 7, 1),
(4, 31, 0, 0),
(4, 31, 1, 0),
(4, 31, 2, 0),
(4, 31, 3, 0),
(4, 31, 4, 0),
(4, 31, 7, 0),
(4, 35, 0, 0),
(4, 35, 1, 0),
(4, 35, 2, 0),
(4, 35, 3, 0),
(4, 35, 4, 0),
(4, 35, 7, 0),
(4, 37, 0, 0),
(4, 37, 1, 0),
(4, 37, 2, 0),
(4, 37, 3, 0),
(4, 37, 4, 0),
(4, 37, 7, 0),
(4, 38, 0, 0),
(4, 38, 1, 0),
(4, 38, 2, 0),
(4, 38, 3, 0),
(4, 38, 4, 0),
(4, 38, 7, 0),
(4, 42, 0, 0),
(4, 42, 1, 0),
(4, 42, 2, 0),
(4, 42, 3, 0),
(4, 42, 4, 0),
(4, 42, 7, 0),
(4, 43, 0, 0),
(4, 43, 1, 0),
(4, 43, 2, 0),
(4, 43, 3, 0),
(4, 43, 4, 0),
(4, 43, 7, 0),
(4, 44, 0, 0),
(4, 44, 1, 0),
(4, 44, 2, 0),
(4, 44, 3, 0),
(4, 44, 4, 0),
(4, 44, 7, 0),
(4, 45, 0, 0),
(4, 45, 1, 0),
(4, 45, 2, 0),
(4, 45, 3, 0),
(4, 45, 4, 0),
(4, 45, 7, 0),
(4, 47, 0, 0),
(4, 47, 1, 0),
(4, 47, 2, 0),
(4, 47, 3, 0),
(4, 47, 4, 0),
(4, 47, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2tab`
--

CREATE TABLE `vtiger_profile2tab` (
  `profileid` int(11) DEFAULT NULL,
  `tabid` int(10) DEFAULT NULL,
  `permissions` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_profile2tab`
--

INSERT INTO `vtiger_profile2tab` (`profileid`, `tabid`, `permissions`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(2, 1, 0),
(2, 2, 0),
(2, 3, 0),
(2, 4, 0),
(2, 6, 0),
(2, 7, 0),
(2, 8, 0),
(2, 9, 0),
(2, 10, 0),
(2, 13, 0),
(2, 14, 0),
(2, 15, 0),
(2, 16, 0),
(2, 18, 0),
(2, 19, 0),
(2, 20, 0),
(2, 21, 0),
(2, 22, 0),
(2, 23, 0),
(2, 24, 0),
(2, 25, 0),
(2, 26, 0),
(2, 27, 0),
(3, 1, 0),
(3, 2, 0),
(3, 3, 0),
(3, 4, 0),
(3, 6, 0),
(3, 7, 0),
(3, 8, 0),
(3, 9, 0),
(3, 10, 0),
(3, 13, 0),
(3, 14, 0),
(3, 15, 0),
(3, 16, 0),
(3, 18, 0),
(3, 19, 0),
(3, 20, 0),
(3, 21, 0),
(3, 22, 0),
(3, 23, 0),
(3, 24, 0),
(3, 25, 0),
(3, 26, 0),
(3, 27, 0),
(4, 1, 0),
(4, 2, 0),
(4, 3, 0),
(4, 4, 0),
(4, 6, 0),
(4, 7, 0),
(4, 8, 0),
(4, 9, 0),
(4, 10, 0),
(4, 13, 0),
(4, 14, 0),
(4, 15, 0),
(4, 16, 0),
(4, 18, 0),
(4, 19, 0),
(4, 20, 0),
(4, 21, 0),
(4, 22, 0),
(4, 23, 0),
(4, 24, 0),
(4, 25, 0),
(4, 26, 0),
(4, 27, 0),
(1, 30, 0),
(2, 30, 0),
(3, 30, 0),
(4, 30, 0),
(1, 31, 0),
(2, 31, 0),
(3, 31, 0),
(4, 31, 0),
(1, 32, 0),
(2, 32, 0),
(3, 32, 0),
(4, 32, 0),
(1, 33, 0),
(2, 33, 0),
(3, 33, 0),
(4, 33, 0),
(1, 34, 0),
(2, 34, 0),
(3, 34, 0),
(4, 34, 0),
(1, 35, 0),
(2, 35, 0),
(3, 35, 0),
(4, 35, 0),
(1, 36, 0),
(2, 36, 0),
(3, 36, 0),
(4, 36, 0),
(1, 37, 0),
(2, 37, 0),
(3, 37, 0),
(4, 37, 0),
(1, 38, 0),
(2, 38, 0),
(3, 38, 0),
(4, 38, 0),
(1, 39, 0),
(2, 39, 0),
(3, 39, 0),
(4, 39, 0),
(1, 40, 0),
(2, 40, 0),
(3, 40, 0),
(4, 40, 0),
(1, 41, 0),
(2, 41, 0),
(3, 41, 0),
(4, 41, 0),
(1, 42, 0),
(2, 42, 0),
(3, 42, 0),
(4, 42, 0),
(1, 43, 0),
(2, 43, 0),
(3, 43, 0),
(4, 43, 0),
(1, 44, 0),
(2, 44, 0),
(3, 44, 0),
(4, 44, 0),
(1, 45, 0),
(2, 45, 0),
(3, 45, 0),
(4, 45, 0),
(1, 46, 0),
(2, 46, 0),
(3, 46, 0),
(4, 46, 0),
(1, 47, 0),
(2, 47, 0),
(3, 47, 0),
(4, 47, 0),
(1, 48, 0),
(2, 48, 0),
(3, 48, 0),
(4, 48, 0),
(1, 49, 0),
(2, 49, 0),
(3, 49, 0),
(4, 49, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2utility`
--

CREATE TABLE `vtiger_profile2utility` (
  `profileid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `permission` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_profile2utility`
--

INSERT INTO `vtiger_profile2utility` (`profileid`, `tabid`, `activityid`, `permission`) VALUES
(1, 2, 5, 0),
(1, 2, 6, 0),
(1, 2, 10, 0),
(1, 4, 5, 0),
(1, 4, 6, 0),
(1, 4, 8, 0),
(1, 4, 10, 0),
(1, 6, 5, 0),
(1, 6, 6, 0),
(1, 6, 8, 0),
(1, 6, 10, 0),
(1, 7, 5, 0),
(1, 7, 6, 0),
(1, 7, 8, 0),
(1, 7, 9, 0),
(1, 7, 10, 0),
(1, 8, 6, 0),
(1, 9, 5, 0),
(1, 9, 6, 0),
(1, 13, 5, 0),
(1, 13, 6, 0),
(1, 13, 8, 0),
(1, 13, 10, 0),
(1, 14, 5, 0),
(1, 14, 6, 0),
(1, 14, 10, 0),
(1, 18, 5, 0),
(1, 18, 6, 0),
(1, 18, 10, 0),
(1, 19, 5, 1),
(1, 19, 6, 1),
(1, 19, 10, 1),
(1, 20, 5, 0),
(1, 20, 6, 0),
(1, 21, 5, 0),
(1, 21, 6, 0),
(1, 22, 5, 0),
(1, 22, 6, 0),
(1, 23, 5, 0),
(1, 23, 6, 0),
(1, 25, 6, 0),
(1, 25, 13, 0),
(1, 31, 5, 0),
(1, 31, 6, 0),
(1, 31, 10, 0),
(1, 35, 11, 0),
(1, 35, 12, 0),
(1, 37, 5, 0),
(1, 37, 6, 0),
(1, 37, 10, 0),
(1, 43, 5, 1),
(1, 43, 6, 1),
(1, 43, 10, 1),
(1, 44, 5, 0),
(1, 44, 6, 0),
(1, 44, 10, 0),
(1, 45, 5, 0),
(1, 45, 6, 0),
(1, 45, 10, 0),
(2, 2, 5, 1),
(2, 2, 6, 1),
(2, 2, 10, 0),
(2, 4, 5, 1),
(2, 4, 6, 1),
(2, 4, 8, 0),
(2, 4, 10, 0),
(2, 6, 5, 1),
(2, 6, 6, 1),
(2, 6, 8, 0),
(2, 6, 10, 0),
(2, 7, 5, 1),
(2, 7, 6, 1),
(2, 7, 8, 0),
(2, 7, 9, 0),
(2, 7, 10, 0),
(2, 8, 6, 1),
(2, 9, 5, 0),
(2, 9, 6, 0),
(2, 13, 5, 1),
(2, 13, 6, 1),
(2, 13, 8, 0),
(2, 13, 10, 0),
(2, 14, 5, 1),
(2, 14, 6, 1),
(2, 14, 10, 0),
(2, 18, 5, 1),
(2, 18, 6, 1),
(2, 18, 10, 0),
(2, 19, 5, 1),
(2, 19, 6, 1),
(2, 19, 10, 1),
(2, 20, 5, 0),
(2, 20, 6, 0),
(2, 21, 5, 0),
(2, 21, 6, 0),
(2, 22, 5, 0),
(2, 22, 6, 0),
(2, 23, 5, 0),
(2, 23, 6, 0),
(2, 25, 6, 0),
(2, 25, 13, 0),
(2, 31, 5, 0),
(2, 31, 6, 0),
(2, 31, 10, 0),
(2, 35, 11, 0),
(2, 35, 12, 0),
(2, 37, 5, 0),
(2, 37, 6, 0),
(2, 37, 10, 0),
(2, 43, 5, 1),
(2, 43, 6, 1),
(2, 43, 10, 1),
(2, 44, 5, 0),
(2, 44, 6, 0),
(2, 44, 10, 0),
(2, 45, 5, 0),
(2, 45, 6, 0),
(2, 45, 10, 0),
(3, 2, 5, 1),
(3, 2, 6, 1),
(3, 2, 10, 0),
(3, 4, 5, 1),
(3, 4, 6, 1),
(3, 4, 8, 0),
(3, 4, 10, 0),
(3, 6, 5, 1),
(3, 6, 6, 1),
(3, 6, 8, 0),
(3, 6, 10, 0),
(3, 7, 5, 1),
(3, 7, 6, 1),
(3, 7, 8, 0),
(3, 7, 9, 0),
(3, 7, 10, 0),
(3, 8, 6, 1),
(3, 9, 5, 0),
(3, 9, 6, 0),
(3, 13, 5, 1),
(3, 13, 6, 1),
(3, 13, 8, 0),
(3, 13, 10, 0),
(3, 14, 5, 1),
(3, 14, 6, 1),
(3, 14, 10, 0),
(3, 18, 5, 1),
(3, 18, 6, 1),
(3, 18, 10, 0),
(3, 19, 5, 1),
(3, 19, 6, 1),
(3, 19, 10, 1),
(3, 20, 5, 0),
(3, 20, 6, 0),
(3, 21, 5, 0),
(3, 21, 6, 0),
(3, 22, 5, 0),
(3, 22, 6, 0),
(3, 23, 5, 0),
(3, 23, 6, 0),
(3, 25, 6, 0),
(3, 25, 13, 0),
(3, 31, 5, 0),
(3, 31, 6, 0),
(3, 31, 10, 0),
(3, 35, 11, 0),
(3, 35, 12, 0),
(3, 37, 5, 0),
(3, 37, 6, 0),
(3, 37, 10, 0),
(3, 43, 5, 1),
(3, 43, 6, 1),
(3, 43, 10, 1),
(3, 44, 5, 0),
(3, 44, 6, 0),
(3, 44, 10, 0),
(3, 45, 5, 0),
(3, 45, 6, 0),
(3, 45, 10, 0),
(4, 2, 5, 1),
(4, 2, 6, 1),
(4, 2, 10, 0),
(4, 4, 5, 1),
(4, 4, 6, 1),
(4, 4, 8, 1),
(4, 4, 10, 0),
(4, 6, 5, 1),
(4, 6, 6, 1),
(4, 6, 8, 1),
(4, 6, 10, 0),
(4, 7, 5, 1),
(4, 7, 6, 1),
(4, 7, 8, 1),
(4, 7, 9, 0),
(4, 7, 10, 0),
(4, 8, 6, 1),
(4, 9, 5, 0),
(4, 9, 6, 0),
(4, 13, 5, 1),
(4, 13, 6, 1),
(4, 13, 8, 1),
(4, 13, 10, 0),
(4, 14, 5, 1),
(4, 14, 6, 1),
(4, 14, 10, 0),
(4, 18, 5, 1),
(4, 18, 6, 1),
(4, 18, 10, 0),
(4, 19, 5, 1),
(4, 19, 6, 1),
(4, 19, 10, 1),
(4, 20, 5, 0),
(4, 20, 6, 0),
(4, 21, 5, 0),
(4, 21, 6, 0),
(4, 22, 5, 0),
(4, 22, 6, 0),
(4, 23, 5, 0),
(4, 23, 6, 0),
(4, 25, 6, 0),
(4, 25, 13, 0),
(4, 31, 5, 0),
(4, 31, 6, 0),
(4, 31, 10, 0),
(4, 35, 11, 0),
(4, 35, 12, 0),
(4, 37, 5, 0),
(4, 37, 6, 0),
(4, 37, 10, 0),
(4, 43, 5, 1),
(4, 43, 6, 1),
(4, 43, 10, 1),
(4, 44, 5, 0),
(4, 44, 6, 0),
(4, 44, 10, 0),
(4, 45, 5, 0),
(4, 45, 6, 0),
(4, 45, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile_seq`
--

CREATE TABLE `vtiger_profile_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_profile_seq`
--

INSERT INTO `vtiger_profile_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_progress`
--

CREATE TABLE `vtiger_progress` (
  `progressid` int(11) NOT NULL,
  `progress` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_progress`
--

INSERT INTO `vtiger_progress` (`progressid`, `progress`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, '10%', 1, 276, 2, NULL),
(3, '20%', 1, 277, 3, NULL),
(4, '30%', 1, 278, 4, NULL),
(5, '40%', 1, 279, 5, NULL),
(6, '50%', 1, 280, 6, NULL),
(7, '60%', 1, 281, 7, NULL),
(8, '70%', 1, 282, 8, NULL),
(9, '80%', 1, 283, 9, NULL),
(10, '90%', 1, 284, 10, NULL),
(11, '100%', 1, 285, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_progress_seq`
--

CREATE TABLE `vtiger_progress_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_progress_seq`
--

INSERT INTO `vtiger_progress_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_project`
--

CREATE TABLE `vtiger_project` (
  `projectid` int(19) NOT NULL,
  `projectname` varchar(255) DEFAULT NULL,
  `project_no` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `targetenddate` date DEFAULT NULL,
  `actualenddate` date DEFAULT NULL,
  `targetbudget` varchar(255) DEFAULT NULL,
  `projecturl` varchar(255) DEFAULT NULL,
  `projectstatus` varchar(100) DEFAULT NULL,
  `projectpriority` varchar(100) DEFAULT NULL,
  `projecttype` varchar(100) DEFAULT NULL,
  `progress` varchar(100) DEFAULT NULL,
  `linktoaccountscontacts` varchar(100) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `isconvertedfrompotential` int(1) NOT NULL DEFAULT 0,
  `potentialid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectcf`
--

CREATE TABLE `vtiger_projectcf` (
  `projectid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestone`
--

CREATE TABLE `vtiger_projectmilestone` (
  `projectmilestoneid` int(11) NOT NULL,
  `projectmilestonename` varchar(255) DEFAULT NULL,
  `projectmilestone_no` varchar(100) DEFAULT NULL,
  `projectmilestonedate` varchar(255) DEFAULT NULL,
  `projectid` varchar(100) DEFAULT NULL,
  `projectmilestonetype` varchar(100) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestonecf`
--

CREATE TABLE `vtiger_projectmilestonecf` (
  `projectmilestoneid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestonetype`
--

CREATE TABLE `vtiger_projectmilestonetype` (
  `projectmilestonetypeid` int(11) NOT NULL,
  `projectmilestonetype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projectmilestonetype`
--

INSERT INTO `vtiger_projectmilestonetype` (`projectmilestonetypeid`, `projectmilestonetype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'administrative', 1, 236, 2, NULL),
(3, 'operative', 1, 237, 3, NULL),
(4, 'other', 1, 238, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestonetype_seq`
--

CREATE TABLE `vtiger_projectmilestonetype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projectmilestonetype_seq`
--

INSERT INTO `vtiger_projectmilestonetype_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectpriority`
--

CREATE TABLE `vtiger_projectpriority` (
  `projectpriorityid` int(11) NOT NULL,
  `projectpriority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projectpriority`
--

INSERT INTO `vtiger_projectpriority` (`projectpriorityid`, `projectpriority`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'low', 1, 272, 2, NULL),
(3, 'normal', 1, 273, 3, NULL),
(4, 'high', 1, 274, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectpriority_seq`
--

CREATE TABLE `vtiger_projectpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projectpriority_seq`
--

INSERT INTO `vtiger_projectpriority_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectstatus`
--

CREATE TABLE `vtiger_projectstatus` (
  `projectstatusid` int(11) NOT NULL,
  `projectstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projectstatus`
--

INSERT INTO `vtiger_projectstatus` (`projectstatusid`, `projectstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'prospecting', 1, 259, 2, NULL),
(3, 'initiated', 1, 260, 3, NULL),
(4, 'in progress', 1, 261, 4, NULL),
(5, 'waiting for feedback', 1, 262, 5, NULL),
(6, 'on hold', 1, 263, 6, NULL),
(7, 'completed', 1, 264, 7, NULL),
(8, 'delivered', 1, 265, 8, NULL),
(9, 'archived', 1, 266, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectstatus_seq`
--

CREATE TABLE `vtiger_projectstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projectstatus_seq`
--

INSERT INTO `vtiger_projectstatus_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttask`
--

CREATE TABLE `vtiger_projecttask` (
  `projecttaskid` int(11) NOT NULL,
  `projecttaskname` varchar(255) DEFAULT NULL,
  `projecttask_no` varchar(100) DEFAULT NULL,
  `projecttasktype` varchar(100) DEFAULT NULL,
  `projecttaskpriority` varchar(100) DEFAULT NULL,
  `projecttaskprogress` varchar(100) DEFAULT NULL,
  `projecttaskhours` varchar(255) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `projectid` varchar(100) DEFAULT NULL,
  `projecttasknumber` int(11) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `projecttaskstatus` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskcf`
--

CREATE TABLE `vtiger_projecttaskcf` (
  `projecttaskid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskpriority`
--

CREATE TABLE `vtiger_projecttaskpriority` (
  `projecttaskpriorityid` int(11) NOT NULL,
  `projecttaskpriority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projecttaskpriority`
--

INSERT INTO `vtiger_projecttaskpriority` (`projecttaskpriorityid`, `projecttaskpriority`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'low', 1, 244, 2, NULL),
(3, 'normal', 1, 245, 3, NULL),
(4, 'high', 1, 246, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskpriority_seq`
--

CREATE TABLE `vtiger_projecttaskpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projecttaskpriority_seq`
--

INSERT INTO `vtiger_projecttaskpriority_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskprogress`
--

CREATE TABLE `vtiger_projecttaskprogress` (
  `projecttaskprogressid` int(11) NOT NULL,
  `projecttaskprogress` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projecttaskprogress`
--

INSERT INTO `vtiger_projecttaskprogress` (`projecttaskprogressid`, `projecttaskprogress`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, '10%', 1, 248, 2, NULL),
(3, '20%', 1, 249, 3, NULL),
(4, '30%', 1, 250, 4, NULL),
(5, '40%', 1, 251, 5, NULL),
(6, '50%', 1, 252, 6, NULL),
(7, '60%', 1, 253, 7, NULL),
(8, '70%', 1, 254, 8, NULL),
(9, '80%', 1, 255, 9, NULL),
(10, '90%', 1, 256, 10, NULL),
(11, '100%', 1, 257, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskprogress_seq`
--

CREATE TABLE `vtiger_projecttaskprogress_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projecttaskprogress_seq`
--

INSERT INTO `vtiger_projecttaskprogress_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskstatus`
--

CREATE TABLE `vtiger_projecttaskstatus` (
  `projecttaskstatusid` int(11) NOT NULL,
  `projecttaskstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projecttaskstatus`
--

INSERT INTO `vtiger_projecttaskstatus` (`projecttaskstatusid`, `projecttaskstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Open', 0, 290, 2, NULL),
(3, 'In Progress', 0, 291, 3, NULL),
(4, 'Completed', 0, 292, 4, NULL),
(5, 'Deferred', 0, 293, 5, NULL),
(6, 'Canceled ', 0, 294, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskstatus_seq`
--

CREATE TABLE `vtiger_projecttaskstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projecttaskstatus_seq`
--

INSERT INTO `vtiger_projecttaskstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttasktype`
--

CREATE TABLE `vtiger_projecttasktype` (
  `projecttasktypeid` int(11) NOT NULL,
  `projecttasktype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projecttasktype`
--

INSERT INTO `vtiger_projecttasktype` (`projecttasktypeid`, `projecttasktype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'administrative', 1, 240, 2, NULL),
(3, 'operative', 1, 241, 3, NULL),
(4, 'other', 1, 242, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttasktype_seq`
--

CREATE TABLE `vtiger_projecttasktype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projecttasktype_seq`
--

INSERT INTO `vtiger_projecttasktype_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttask_status_color`
--

CREATE TABLE `vtiger_projecttask_status_color` (
  `status` varchar(255) DEFAULT NULL,
  `defaultcolor` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projecttask_status_color`
--

INSERT INTO `vtiger_projecttask_status_color` (`status`, `defaultcolor`, `color`) VALUES
('Open', '#0099ff', NULL),
('In Progress', '#fdff00', NULL),
('Completed', '#3BBF67', NULL),
('Deferred', '#fbb11e', NULL),
('Canceled', '#660066', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttype`
--

CREATE TABLE `vtiger_projecttype` (
  `projecttypeid` int(11) NOT NULL,
  `projecttype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projecttype`
--

INSERT INTO `vtiger_projecttype` (`projecttypeid`, `projecttype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'administrative', 1, 268, 2, NULL),
(3, 'operative', 1, 269, 3, NULL),
(4, 'other', 1, 270, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttype_seq`
--

CREATE TABLE `vtiger_projecttype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projecttype_seq`
--

INSERT INTO `vtiger_projecttype_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_purchaseorder`
--

CREATE TABLE `vtiger_purchaseorder` (
  `purchaseorderid` int(19) NOT NULL DEFAULT 0,
  `subject` varchar(100) DEFAULT NULL,
  `quoteid` int(19) DEFAULT NULL,
  `vendorid` int(19) DEFAULT NULL,
  `requisition_no` varchar(100) DEFAULT NULL,
  `purchaseorder_no` varchar(100) DEFAULT NULL,
  `tracking_no` varchar(100) DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `salescommission` decimal(25,3) DEFAULT NULL,
  `exciseduty` decimal(25,3) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `terms_conditions` text DEFAULT NULL,
  `postatus` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT 1.000,
  `compound_taxes_info` text DEFAULT NULL,
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `paid` decimal(25,8) DEFAULT NULL,
  `balance` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `region_id` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_purchaseordercf`
--

CREATE TABLE `vtiger_purchaseordercf` (
  `purchaseorderid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotes`
--

CREATE TABLE `vtiger_quotes` (
  `quoteid` int(19) NOT NULL DEFAULT 0,
  `subject` varchar(100) DEFAULT NULL,
  `potentialid` int(19) DEFAULT NULL,
  `quotestage` varchar(200) DEFAULT NULL,
  `validtill` date DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `quote_no` varchar(100) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `shipping` varchar(100) DEFAULT NULL,
  `inventorymanager` int(19) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `terms_conditions` text DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT 1.000,
  `compound_taxes_info` text DEFAULT NULL,
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `region_id` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_quotes`
--

INSERT INTO `vtiger_quotes` (`quoteid`, `subject`, `potentialid`, `quotestage`, `validtill`, `contactid`, `quote_no`, `subtotal`, `carrier`, `shipping`, `inventorymanager`, `type`, `adjustment`, `total`, `taxtype`, `discount_percent`, `discount_amount`, `s_h_amount`, `accountid`, `terms_conditions`, `currency_id`, `conversion_rate`, `compound_taxes_info`, `pre_tax_total`, `s_h_percent`, `tags`, `region_id`) VALUES
(15, 'Trao đổi trực tiếp', NULL, 'Created', NULL, NULL, 'QUO1', '1300000.00000000', '', '', 0, NULL, '0.00000000', '1651000.00000000', 'group', NULL, NULL, '0.00000000', 13, '- Trừ khi có thỏa thuận khác bằng văn bản của nhà cung cấp, tất cả các hóa đơn phải được thanh toán trong vòng bảy (7) ngày kể từ ngày lập hóa đơn, bằng đơn vị tiền tệ của hóa đơn hoặc theo phương thức khác như đã được thỏa thuận trước bởi nhà cung cấp.\n - Tất cả giá chưa bao gồm VAT, Khách hàng sẽ phải thanh toán thêm theo tỷ giá áp dụng.', 1, '1.000', '[]', '1300000.00000000', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotesbillads`
--

CREATE TABLE `vtiger_quotesbillads` (
  `quotebilladdressid` int(19) NOT NULL DEFAULT 0,
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_quotesbillads`
--

INSERT INTO `vtiger_quotesbillads` (`quotebilladdressid`, `bill_city`, `bill_code`, `bill_country`, `bill_state`, `bill_street`, `bill_pobox`) VALUES
(15, '', '', '', '', 'Chi nhánh Cần Thơ', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotescf`
--

CREATE TABLE `vtiger_quotescf` (
  `quoteid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_quotescf`
--

INSERT INTO `vtiger_quotescf` (`quoteid`) VALUES
(15);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotesshipads`
--

CREATE TABLE `vtiger_quotesshipads` (
  `quoteshipaddressid` int(19) NOT NULL DEFAULT 0,
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_quotesshipads`
--

INSERT INTO `vtiger_quotesshipads` (`quoteshipaddressid`, `ship_city`, `ship_code`, `ship_country`, `ship_state`, `ship_street`, `ship_pobox`) VALUES
(15, '', '', '', '', 'Tạp hóa Ngọc Mai, Cần Thơ', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotestage`
--

CREATE TABLE `vtiger_quotestage` (
  `quotestageid` int(19) NOT NULL,
  `quotestage` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_quotestage`
--

INSERT INTO `vtiger_quotestage` (`quotestageid`, `quotestage`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Created', 0, 139, 0, NULL),
(2, 'Delivered', 0, 140, 1, NULL),
(3, 'Reviewed', 0, 141, 2, NULL),
(4, 'Accepted', 0, 142, 3, NULL),
(5, 'Rejected', 0, 143, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotestagehistory`
--

CREATE TABLE `vtiger_quotestagehistory` (
  `historyid` int(19) NOT NULL,
  `quoteid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `quotestage` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotestage_seq`
--

CREATE TABLE `vtiger_quotestage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_quotestage_seq`
--

INSERT INTO `vtiger_quotestage_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rating`
--

CREATE TABLE `vtiger_rating` (
  `rating_id` int(19) NOT NULL,
  `rating` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_rating`
--

INSERT INTO `vtiger_rating` (`rating_id`, `rating`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Acquired', 1, 145, 1, NULL),
(3, 'Active', 1, 146, 2, NULL),
(4, 'Market Failed', 1, 147, 3, NULL),
(5, 'Project Cancelled', 1, 148, 4, NULL),
(6, 'Shutdown', 1, 149, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rating_seq`
--

CREATE TABLE `vtiger_rating_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_rating_seq`
--

INSERT INTO `vtiger_rating_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurringevents`
--

CREATE TABLE `vtiger_recurringevents` (
  `recurringid` int(19) NOT NULL,
  `activityid` int(19) NOT NULL,
  `recurringdate` date DEFAULT NULL,
  `recurringtype` varchar(30) DEFAULT NULL,
  `recurringfreq` int(19) DEFAULT NULL,
  `recurringinfo` varchar(50) DEFAULT NULL,
  `recurringenddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurringtype`
--

CREATE TABLE `vtiger_recurringtype` (
  `recurringeventid` int(19) NOT NULL,
  `recurringtype` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_recurringtype`
--

INSERT INTO `vtiger_recurringtype` (`recurringeventid`, `recurringtype`, `sortorderid`, `presence`, `color`) VALUES
(2, 'Daily', 1, 1, NULL),
(3, 'Weekly', 2, 1, NULL),
(4, 'Monthly', 3, 1, NULL),
(5, 'Yearly', 4, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurringtype_seq`
--

CREATE TABLE `vtiger_recurringtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_recurringtype_seq`
--

INSERT INTO `vtiger_recurringtype_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurring_frequency`
--

CREATE TABLE `vtiger_recurring_frequency` (
  `recurring_frequency_id` int(11) DEFAULT NULL,
  `recurring_frequency` varchar(200) DEFAULT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_recurring_frequency`
--

INSERT INTO `vtiger_recurring_frequency` (`recurring_frequency_id`, `recurring_frequency`, `sortorderid`, `presence`, `color`) VALUES
(2, 'Daily', 1, 1, NULL),
(3, 'Weekly', 2, 1, NULL),
(4, 'Monthly', 3, 1, NULL),
(5, 'Quarterly', 4, 1, NULL),
(6, 'Yearly', 5, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurring_frequency_seq`
--

CREATE TABLE `vtiger_recurring_frequency_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_recurring_frequency_seq`
--

INSERT INTO `vtiger_recurring_frequency_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relatedlists`
--

CREATE TABLE `vtiger_relatedlists` (
  `relation_id` int(19) NOT NULL,
  `tabid` int(10) DEFAULT NULL,
  `related_tabid` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sequence` int(10) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `presence` int(10) NOT NULL DEFAULT 0,
  `actions` varchar(50) NOT NULL DEFAULT '',
  `relationfieldid` int(19) DEFAULT NULL,
  `source` varchar(25) DEFAULT NULL,
  `relationtype` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_relatedlists`
--

INSERT INTO `vtiger_relatedlists` (`relation_id`, `tabid`, `related_tabid`, `name`, `sequence`, `label`, `presence`, `actions`, `relationfieldid`, `source`, `relationtype`) VALUES
(1, 6, 4, 'get_contacts', 2, 'Contacts', 0, 'add', 72, '', '1:N'),
(2, 6, 2, 'get_opportunities', 3, 'Potentials', 0, 'add', 113, '', '1:N'),
(3, 6, 20, 'get_quotes', 4, 'Quotes', 0, 'add', 330, '', '1:N'),
(4, 6, 22, 'get_salesorder', 5, 'Sales Order', 0, 'add', 409, '', '1:N'),
(5, 6, 23, 'get_invoices', 6, 'Invoice', 0, 'add', 452, '', '1:N'),
(6, 6, 9, 'get_activities', 7, 'Activities', 0, 'add', 238, '', '1:N'),
(7, 6, 10, 'get_emails', 8, 'Emails', 0, 'add', NULL, '', 'N:N'),
(8, 6, 9, 'get_history', 9, 'Activity History', 0, 'add', 238, '', '1:N'),
(9, 6, 8, 'get_attachments', 10, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(10, 6, 13, 'get_tickets', 11, 'HelpDesk', 0, 'add', 157, '', '1:N'),
(11, 6, 14, 'get_products', 12, 'Products', 0, 'select', NULL, '', 'N:N'),
(12, 7, 9, 'get_activities', 2, 'Activities', 0, 'add', 238, '', '1:N'),
(13, 7, 10, 'get_emails', 3, 'Emails', 0, 'add', NULL, '', 'N:N'),
(14, 7, 9, 'get_history', 4, 'Activity History', 0, 'add', 238, '', '1:N'),
(15, 7, 8, 'get_attachments', 5, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(16, 7, 14, 'get_products', 6, 'Products', 0, 'select', NULL, '', 'N:N'),
(17, 7, 26, 'get_campaigns', 7, 'Campaigns', 0, 'select', NULL, '', 'N:N'),
(18, 4, 2, 'get_opportunities', 2, 'Potentials', 0, 'add', 740, '', '1:N'),
(19, 4, 9, 'get_activities', 3, 'Activities', 0, 'add', 239, '', '1:N'),
(20, 4, 10, 'get_emails', 4, 'Emails', 0, 'add', NULL, '', 'N:N'),
(21, 4, 13, 'get_tickets', 5, 'HelpDesk', 0, 'add', 741, '', '1:N'),
(22, 4, 20, 'get_quotes', 6, 'Quotes', 0, 'add', 319, '', '1:N'),
(23, 4, 21, 'get_purchase_orders', 7, 'Purchase Order', 0, 'add', 356, '', '1:N'),
(24, 4, 22, 'get_salesorder', 8, 'Sales Order', 0, 'add', 395, '', '1:N'),
(25, 4, 14, 'get_products', 9, 'Products', 0, 'select', NULL, '', 'N:N'),
(26, 4, 9, 'get_history', 10, 'Activity History', 0, 'add', 239, '', '1:N'),
(27, 4, 8, 'get_attachments', 11, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(28, 4, 26, 'get_campaigns', 12, 'Campaigns', 0, 'select', NULL, '', 'N:N'),
(29, 4, 23, 'get_invoices', 13, 'Invoice', 0, 'add', 439, '', '1:N'),
(30, 2, 9, 'get_activities', 2, 'Activities', 0, 'add', 238, '', '1:N'),
(31, 2, 4, 'get_contacts', 3, 'Contacts', 0, 'select', NULL, '', 'N:N'),
(32, 2, 14, 'get_products', 4, 'Products', 0, 'select', NULL, '', 'N:N'),
(33, 2, 0, 'get_stage_history', 5, 'Sales Stage History', 0, '', NULL, '', 'N:N'),
(34, 2, 8, 'get_attachments', 6, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(35, 2, 20, 'get_Quotes', 7, 'Quotes', 0, 'add', 316, '', '1:N'),
(36, 2, 22, 'get_salesorder', 8, 'Sales Order', 0, 'add', 391, '', '1:N'),
(37, 2, 9, 'get_history', 9, 'Activity History', 0, '', 238, '', '1:N'),
(38, 14, 13, 'get_tickets', 1, 'HelpDesk', 0, 'add', 159, '', '1:N'),
(39, 14, 8, 'get_attachments', 3, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(40, 14, 20, 'get_quotes', 4, 'Quotes', 0, 'add', 703, '', '1:N'),
(41, 14, 21, 'get_purchase_orders', 5, 'Purchase Order', 0, 'add', 694, '', '1:N'),
(42, 14, 22, 'get_salesorder', 6, 'Sales Order', 0, 'add', 685, '', '1:N'),
(43, 14, 23, 'get_invoices', 7, 'Invoice', 0, 'add', 676, '', '1:N'),
(44, 14, 19, 'get_product_pricebooks', 8, 'PriceBooks', 0, 'ADD,SELECT', NULL, '', 'N:N'),
(45, 14, 7, 'get_leads', 9, 'Leads', 0, 'select', NULL, '', 'N:N'),
(46, 14, 6, 'get_accounts', 10, 'Accounts', 0, 'select', NULL, '', 'N:N'),
(47, 14, 4, 'get_contacts', 11, 'Contacts', 0, 'select', NULL, '', 'N:N'),
(48, 14, 2, 'get_opportunities', 12, 'Potentials', 0, 'select', NULL, '', 'N:N'),
(49, 14, 14, 'get_products', 13, 'Product Bundles', 0, 'add,select', NULL, '', 'N:N'),
(50, 14, 14, 'get_parent_products', 14, 'Parent Product', 0, '', NULL, '', 'N:N'),
(51, 10, 4, 'get_contacts', 1, 'Contacts', 0, 'select,bulkmail', NULL, '', 'N:N'),
(52, 10, 0, 'get_users', 2, 'Users', 0, '', NULL, '', 'N:N'),
(53, 10, 8, 'get_attachments', 3, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(54, 13, 9, 'get_activities', 2, 'Activities', 0, 'add', 238, '', '1:N'),
(55, 13, 8, 'get_attachments', 3, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(56, 13, 0, 'get_ticket_history', 4, 'Ticket History', 0, '', NULL, '', 'N:N'),
(57, 13, 9, 'get_history', 5, 'Activity History', 0, 'add', 238, '', '1:N'),
(58, 19, 14, 'get_pricebook_products', 2, 'Products', 0, 'select', NULL, '', 'N:N'),
(59, 18, 14, 'get_products', 1, 'Products', 0, 'add,select', 185, '', '1:N'),
(60, 18, 21, 'get_purchase_orders', 2, 'Purchase Order', 0, 'add', 353, '', '1:N'),
(61, 18, 4, 'get_contacts', 3, 'Contacts', 0, 'select', NULL, '', 'N:N'),
(62, 18, 10, 'get_emails', 4, 'Emails', 0, 'add', NULL, '', 'N:N'),
(63, 20, 22, 'get_salesorder', 1, 'Sales Order', 0, '', 393, '', '1:N'),
(64, 20, 9, 'get_activities', 2, 'Activities', 0, 'add', NULL, '', 'N:N'),
(65, 20, 8, 'get_attachments', 3, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(66, 20, 9, 'get_history', 4, 'Activity History', 0, '', NULL, '', 'N:N'),
(67, 20, 0, 'get_quotestagehistory', 5, 'Quote Stage History', 0, '', NULL, '', 'N:N'),
(68, 21, 9, 'get_activities', 1, 'Activities', 0, 'add', NULL, '', 'N:N'),
(69, 21, 8, 'get_attachments', 2, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(70, 21, 9, 'get_history', 3, 'Activity History', 0, '', NULL, '', 'N:N'),
(71, 21, 0, 'get_postatushistory', 4, 'PurchaseOrder Status History', 0, '', NULL, '', 'N:N'),
(72, 22, 9, 'get_activities', 1, 'Activities', 0, 'add', NULL, '', 'N:N'),
(73, 22, 8, 'get_attachments', 2, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(74, 22, 23, 'get_invoices', 3, 'Invoice', 0, '', 437, '', '1:N'),
(75, 22, 9, 'get_history', 4, 'Activity History', 0, '', NULL, '', 'N:N'),
(76, 22, 0, 'get_sostatushistory', 5, 'SalesOrder Status History', 0, '', NULL, '', 'N:N'),
(77, 23, 9, 'get_activities', 1, 'Activities', 0, 'add', NULL, '', 'N:N'),
(78, 23, 8, 'get_attachments', 2, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(79, 23, 9, 'get_history', 3, 'Activity History', 0, '', NULL, '', 'N:N'),
(80, 23, 0, 'get_invoicestatushistory', 4, 'Invoice Status History', 0, '', NULL, '', 'N:N'),
(81, 9, 0, 'get_users', 1, 'Users', 0, '', NULL, '', 'N:N'),
(82, 9, 4, 'get_contacts', 2, 'Contacts', 0, '', NULL, '', 'N:N'),
(83, 26, 4, 'get_contacts', 1, 'Contacts', 0, 'add,select', NULL, '', 'N:N'),
(84, 26, 7, 'get_leads', 2, 'Leads', 0, 'add,select', NULL, '', 'N:N'),
(85, 26, 2, 'get_opportunities', 3, 'Potentials', 0, 'add', 121, '', '1:N'),
(86, 26, 9, 'get_activities', 4, 'Activities', 0, 'add', 238, '', '1:N'),
(87, 6, 26, 'get_campaigns', 14, 'Campaigns', 0, 'select', NULL, '', 'N:N'),
(88, 26, 6, 'get_accounts', 5, 'Accounts', 0, 'add,select', NULL, '', 'N:N'),
(89, 15, 8, 'get_attachments', 2, 'Documents', 0, 'add,select', NULL, '', 'N:N'),
(90, 31, 13, 'get_related_list', 1, 'HelpDesk', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(91, 31, 20, 'get_quotes', 2, 'Quotes', 0, 'ADD', 703, NULL, '1:N'),
(92, 31, 21, 'get_purchase_orders', 3, 'Purchase Order', 0, 'ADD', 694, NULL, '1:N'),
(93, 31, 22, 'get_salesorder', 4, 'Sales Order', 0, 'ADD', 685, NULL, '1:N'),
(94, 31, 23, 'get_invoices', 5, 'Invoice', 0, 'ADD', 676, NULL, '1:N'),
(95, 31, 19, 'get_service_pricebooks', 6, 'PriceBooks', 0, 'ADD', NULL, NULL, 'N:N'),
(96, 31, 7, 'get_related_list', 7, 'Leads', 0, 'SELECT', NULL, NULL, 'N:N'),
(97, 31, 6, 'get_related_list', 8, 'Accounts', 0, 'SELECT', NULL, NULL, 'N:N'),
(98, 31, 4, 'get_related_list', 9, 'Contacts', 0, 'SELECT', NULL, NULL, 'N:N'),
(99, 31, 2, 'get_related_list', 10, 'Potentials', 0, 'SELECT', NULL, NULL, 'N:N'),
(100, 31, 8, 'get_attachments', 11, 'Documents', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(101, 13, 31, 'get_related_list', 6, 'Services', 0, 'SELECT', NULL, NULL, 'N:N'),
(102, 7, 31, 'get_related_list', 8, 'Services', 0, 'SELECT', NULL, NULL, 'N:N'),
(103, 6, 31, 'get_related_list', 15, 'Services', 0, 'SELECT', NULL, NULL, 'N:N'),
(104, 4, 31, 'get_related_list', 14, 'Services', 0, 'SELECT', NULL, NULL, 'N:N'),
(105, 2, 31, 'get_related_list', 10, 'Services', 0, 'SELECT', NULL, NULL, 'N:N'),
(106, 19, 31, 'get_pricebook_services', 3, 'Services', 0, 'SELECT', NULL, NULL, 'N:N'),
(107, 4, 35, 'get_dependents_list', 15, 'PBXManager', 0, '', 557, NULL, '1:N'),
(108, 7, 35, 'get_dependents_list', 9, 'PBXManager', 0, '', 557, NULL, '1:N'),
(109, 6, 35, 'get_merged_list', 16, 'PBXManager', 0, '', 557, NULL, '1:N'),
(110, 37, 13, 'get_related_list', 1, 'Service Requests', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(111, 37, 8, 'get_attachments', 2, 'Documents', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(112, 6, 37, 'get_merged_list', 17, 'Service Contracts', 0, 'ADD', 571, NULL, '1:N'),
(113, 4, 37, 'get_dependents_list', 16, 'Service Contracts', 0, 'ADD', 571, NULL, '1:N'),
(114, 13, 37, 'get_related_list', 7, 'Service Contracts', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(115, 7, 38, 'get_comments', 10, 'ModComments', 0, '', 592, NULL, '1:N'),
(116, 4, 38, 'get_comments', 17, 'ModComments', 0, '', 592, NULL, '1:N'),
(117, 6, 38, 'get_comments', 18, 'ModComments', 0, '', 592, NULL, '1:N'),
(118, 2, 38, 'get_comments', 11, 'ModComments', 0, '', 592, NULL, '1:N'),
(119, 42, 6, 'get_related_list', 1, 'Accounts', 0, ' ', NULL, NULL, 'N:N'),
(120, 42, 4, 'get_related_list', 2, 'Contacts', 0, ' ', NULL, NULL, 'N:N'),
(121, 42, 7, 'get_related_list', 3, 'Leads', 0, ' ', NULL, NULL, 'N:N'),
(129, 6, 45, 'get_merged_list', 19, 'Projects', 0, 'add', 639, NULL, '1:N'),
(130, 4, 45, 'get_dependents_list', 18, 'Projects', 0, 'add', 639, NULL, '1:N'),
(131, 13, 45, 'get_related_list', 8, 'Projects', 0, 'SELECT', NULL, NULL, 'N:N'),
(133, 47, 13, 'get_related_list', 1, 'HelpDesk', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(134, 47, 8, 'get_attachments', 2, 'Documents', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(135, 6, 47, 'get_merged_list', 20, 'Assets', 0, 'ADD', 665, NULL, '1:N'),
(136, 14, 47, 'get_dependents_list', 15, 'Assets', 0, 'ADD', 654, NULL, '1:N'),
(137, 23, 47, 'get_dependents_list', 5, 'Assets', 0, 'ADD', 660, NULL, '1:N'),
(138, 44, 8, 'get_attachments', 2, 'Documents', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(139, 44, 38, 'get_comments', 3, 'ModComments', 0, '', 592, NULL, '1:N'),
(140, 45, 44, 'get_dependents_list', 2, 'Project Tasks', 0, 'ADD', 618, NULL, '1:N'),
(141, 45, 43, 'get_dependents_list', 3, 'Project Milestones', 0, 'ADD', 604, NULL, '1:N'),
(142, 45, 8, 'get_attachments', 4, 'Documents', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(143, 45, 13, 'get_related_list', 5, 'HelpDesk', 0, 'ADD,SELECT', NULL, NULL, 'N:N'),
(144, 45, 0, 'get_gantt_chart', 6, 'Charts', 0, '', NULL, NULL, 'N:N'),
(145, 45, 38, 'get_comments', 7, 'ModComments', 0, '', 592, NULL, '1:N'),
(146, 13, 38, 'get_comments', 9, 'ModComments', 0, '', 592, NULL, '1:N'),
(147, 15, 38, 'get_comments', 3, 'ModComments', 0, '', 592, NULL, '1:N'),
(148, 4, 47, 'get_dependents_list', 19, 'Assets', 0, 'ADD', 666, NULL, '1:N'),
(149, 4, 18, 'get_vendors', 20, 'Vendors', 0, 'SELECT', NULL, '', 'N:N'),
(150, 2, 23, 'get_dependents_list', 12, 'Invoice', 0, 'ADD', 774, NULL, '1:N'),
(151, 8, 4, 'get_related_list', 1, 'Contacts', 0, '1', NULL, NULL, 'N:N'),
(152, 8, 6, 'get_related_list', 2, 'Accounts', 0, '1', NULL, NULL, 'N:N'),
(153, 8, 2, 'get_related_list', 3, 'Potentials', 0, '1', NULL, NULL, 'N:N'),
(154, 8, 7, 'get_related_list', 4, 'Leads', 0, '1', NULL, NULL, 'N:N'),
(155, 8, 14, 'get_related_list', 5, 'Products', 0, '1', NULL, NULL, 'N:N'),
(156, 8, 31, 'get_related_list', 6, 'Services', 0, '1', NULL, NULL, 'N:N'),
(157, 8, 45, 'get_related_list', 7, 'Project', 0, '1', NULL, NULL, 'N:N'),
(158, 8, 47, 'get_related_list', 8, 'Assets', 0, '1', NULL, NULL, 'N:N'),
(159, 8, 37, 'get_related_list', 9, 'ServiceContracts', 0, '1', NULL, NULL, 'N:N'),
(160, 8, 20, 'get_related_list', 10, 'Quotes', 0, '1', NULL, NULL, 'N:N'),
(161, 8, 23, 'get_related_list', 11, 'Invoice', 0, '1', NULL, NULL, 'N:N'),
(162, 8, 22, 'get_related_list', 12, 'SalesOrder', 0, '1', NULL, NULL, 'N:N'),
(163, 8, 21, 'get_related_list', 13, 'PurchaseOrder', 0, '1', NULL, NULL, 'N:N'),
(164, 8, 13, 'get_related_list', 14, 'HelpDesk', 0, '1', NULL, NULL, 'N:N'),
(165, 8, 15, 'get_related_list', 15, 'Faq', 0, '1', NULL, NULL, 'N:N'),
(166, 45, 10, 'get_emails', 8, 'Emails', 0, 'ADD', NULL, NULL, 'N:N'),
(167, 44, 10, 'get_emails', 4, 'Emails', 0, 'ADD', NULL, NULL, 'N:N'),
(168, 45, 9, 'get_related_list', 9, 'Activities', 0, 'ADD', NULL, NULL, 'N:N'),
(169, 45, 20, 'get_related_list', 10, 'Quotes', 0, 'SELECT', NULL, NULL, 'N:N'),
(170, 14, 21, 'get_purchase_orders', 16, 'PurchaseOrder', 0, 'ADD', NULL, NULL, 'N:N'),
(171, 2, 10, 'get_emails', 13, 'Emails', 0, 'ADD', NULL, NULL, 'N:N'),
(172, 13, 10, 'get_emails', 10, 'Emails', 0, 'ADD', NULL, NULL, 'N:N');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relatedlists_rb`
--

CREATE TABLE `vtiger_relatedlists_rb` (
  `entityid` int(19) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `rel_table` varchar(200) DEFAULT NULL,
  `rel_column` varchar(200) DEFAULT NULL,
  `ref_column` varchar(200) DEFAULT NULL,
  `related_crm_ids` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_relatedlists_rb`
--

INSERT INTO `vtiger_relatedlists_rb` (`entityid`, `action`, `rel_table`, `rel_column`, `ref_column`, `related_crm_ids`) VALUES
(17, 'update', 'vtiger_crmentity', 'deleted', 'crmid', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relatedlists_seq`
--

CREATE TABLE `vtiger_relatedlists_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_relatedlists_seq`
--

INSERT INTO `vtiger_relatedlists_seq` (`id`) VALUES
(172);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relcriteria`
--

CREATE TABLE `vtiger_relcriteria` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `comparator` varchar(20) DEFAULT NULL,
  `value` varchar(512) DEFAULT NULL,
  `groupid` int(11) DEFAULT 1,
  `column_condition` varchar(256) DEFAULT 'and'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_relcriteria`
--

INSERT INTO `vtiger_relcriteria` (`queryid`, `columnindex`, `columnname`, `comparator`, `value`, `groupid`, `column_condition`) VALUES
(1, 0, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V', 'n', '', 1, 'and'),
(2, 0, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V', 'e', '', 1, 'and'),
(3, 0, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V', 'n', '', 1, 'and'),
(7, 0, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V', 'e', 'Closed Won', 1, 'and'),
(12, 0, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V', 'n', 'Closed', 1, 'and'),
(15, 0, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V', 'n', 'Accepted', 1, 'and'),
(15, 1, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V', 'n', 'Rejected', 1, 'and'),
(22, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I', 'ny', '', 1, 'and'),
(23, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I', 'ny', '', 1, 'and'),
(24, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I', 'ny', '', 1, 'and'),
(25, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I', 'ny', '', 1, 'and');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relcriteria_grouping`
--

CREATE TABLE `vtiger_relcriteria_grouping` (
  `groupid` int(11) NOT NULL,
  `queryid` int(19) NOT NULL,
  `group_condition` varchar(256) DEFAULT NULL,
  `condition_expression` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_relcriteria_grouping`
--

INSERT INTO `vtiger_relcriteria_grouping` (`groupid`, `queryid`, `group_condition`, `condition_expression`) VALUES
(1, 1, '', '0'),
(1, 2, '', '0'),
(1, 3, '', '0'),
(1, 7, '', '0'),
(1, 12, '', '0'),
(1, 15, '', '0 and 1'),
(1, 22, '', '0'),
(1, 23, '', '0'),
(1, 24, '', '0'),
(1, 25, '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reminder_interval`
--

CREATE TABLE `vtiger_reminder_interval` (
  `reminder_intervalid` int(19) NOT NULL,
  `reminder_interval` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL,
  `presence` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_reminder_interval`
--

INSERT INTO `vtiger_reminder_interval` (`reminder_intervalid`, `reminder_interval`, `sortorderid`, `presence`) VALUES
(2, '1 Minute', 1, 1),
(3, '5 Minutes', 2, 1),
(4, '15 Minutes', 3, 1),
(5, '30 Minutes', 4, 1),
(6, '45 Minutes', 5, 1),
(7, '1 Hour', 6, 1),
(8, '1 Day', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reminder_interval_seq`
--

CREATE TABLE `vtiger_reminder_interval_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_reminder_interval_seq`
--

INSERT INTO `vtiger_reminder_interval_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_report`
--

CREATE TABLE `vtiger_report` (
  `reportid` int(19) NOT NULL,
  `folderid` int(19) NOT NULL,
  `reportname` varchar(100) DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `reporttype` varchar(50) DEFAULT '',
  `queryid` int(19) NOT NULL DEFAULT 0,
  `state` varchar(50) DEFAULT 'SAVED',
  `customizable` int(1) DEFAULT 1,
  `category` int(11) DEFAULT 1,
  `owner` int(11) DEFAULT 1,
  `sharingtype` varchar(200) DEFAULT 'Private'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_report`
--

INSERT INTO `vtiger_report` (`reportid`, `folderid`, `reportname`, `description`, `reporttype`, `queryid`, `state`, `customizable`, `category`, `owner`, `sharingtype`) VALUES
(1, 1, 'Contacts by Accounts', 'Contacts related to Accounts', 'tabular', 1, 'CUSTOM', 1, 1, 1, 'Public'),
(2, 1, 'Contacts without Accounts', 'Contacts not related to Accounts', 'tabular', 2, 'CUSTOM', 1, 1, 1, 'Public'),
(3, 1, 'Contacts by Potentials', 'Contacts related to Potentials', 'tabular', 3, 'CUSTOM', 1, 1, 1, 'Public'),
(4, 2, 'Lead by Source', 'Lead by Source', 'summary', 4, 'CUSTOM', 1, 1, 1, 'Public'),
(5, 2, 'Lead Status Report', 'Lead Status Report', 'summary', 5, 'CUSTOM', 1, 1, 1, 'Public'),
(6, 3, 'Potential Pipeline', 'Potential Pipeline', 'summary', 6, 'CUSTOM', 1, 1, 1, 'Public'),
(7, 3, 'Closed Potentials', 'Potential that have Won', 'tabular', 7, 'CUSTOM', 1, 1, 1, 'Public'),
(8, 4, 'Last Month Activities', 'Last Month Activities', 'tabular', 8, 'CUSTOM', 1, 1, 1, 'Public'),
(9, 4, 'This Month Activities', 'This Month Activities', 'tabular', 9, 'CUSTOM', 1, 1, 1, 'Public'),
(10, 5, 'Tickets by Products', 'Tickets related to Products', 'tabular', 10, 'CUSTOM', 1, 1, 1, 'Public'),
(11, 5, 'Tickets by Priority', 'Tickets by Priority', 'summary', 11, 'CUSTOM', 1, 1, 1, 'Public'),
(12, 5, 'Open Tickets', 'Tickets that are Open', 'tabular', 12, 'CUSTOM', 1, 1, 1, 'Public'),
(13, 6, 'Product Details', 'Product Detailed Report', 'tabular', 13, 'CUSTOM', 1, 1, 1, 'Public'),
(14, 6, 'Products by Contacts', 'Products related to Contacts', 'tabular', 14, 'CUSTOM', 1, 1, 1, 'Public'),
(15, 7, 'Open Quotes', 'Quotes that are Open', 'tabular', 15, 'CUSTOM', 1, 1, 1, 'Public'),
(16, 7, 'Quotes Detailed Report', 'Quotes Detailed Report', 'tabular', 16, 'CUSTOM', 1, 1, 1, 'Public'),
(17, 8, 'PurchaseOrder by Contacts', 'PurchaseOrder related to Contacts', 'tabular', 17, 'CUSTOM', 1, 1, 1, 'Public'),
(18, 8, 'PurchaseOrder Detailed Report', 'PurchaseOrder Detailed Report', 'tabular', 18, 'CUSTOM', 1, 1, 1, 'Public'),
(19, 9, 'Invoice Detailed Report', 'Invoice Detailed Report', 'tabular', 19, 'CUSTOM', 1, 1, 1, 'Public'),
(20, 10, 'SalesOrder Detailed Report', 'SalesOrder Detailed Report', 'tabular', 20, 'CUSTOM', 1, 1, 1, 'Public'),
(21, 11, 'Campaign Expectations and Actuals', 'Campaign Expectations and Actuals', 'tabular', 21, 'CUSTOM', 1, 1, 1, 'Public'),
(22, 12, 'Contacts Email Report', 'Emails sent to Contacts', 'tabular', 22, 'CUSTOM', 1, 1, 1, 'Public'),
(23, 12, 'Accounts Email Report', 'Emails sent to Organizations', 'tabular', 23, 'CUSTOM', 1, 1, 1, 'Public'),
(24, 12, 'Leads Email Report', 'Emails sent to Leads', 'tabular', 24, 'CUSTOM', 1, 1, 1, 'Public'),
(25, 12, 'Vendors Email Report', 'Emails sent to Vendors', 'tabular', 25, 'CUSTOM', 1, 1, 1, 'Public');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportdatefilter`
--

CREATE TABLE `vtiger_reportdatefilter` (
  `datefilterid` int(19) NOT NULL,
  `datecolumnname` varchar(250) DEFAULT '',
  `datefilter` varchar(250) DEFAULT '',
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_reportdatefilter`
--

INSERT INTO `vtiger_reportdatefilter` (`datefilterid`, `datecolumnname`, `datefilter`, `startdate`, `enddate`) VALUES
(8, 'vtiger_crmentity:modifiedtime:modifiedtime:Calendar_Modified_Time', 'lastmonth', '2005-05-01', '2005-05-31'),
(9, 'vtiger_crmentity:modifiedtime:modifiedtime:Calendar_Modified_Time', 'thismonth', '2005-06-01', '2005-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportfilters`
--

CREATE TABLE `vtiger_reportfilters` (
  `filterid` int(19) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_reportfilters`
--

INSERT INTO `vtiger_reportfilters` (`filterid`, `name`) VALUES
(1, 'Private'),
(2, 'Public'),
(3, 'Shared');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportfolder`
--

CREATE TABLE `vtiger_reportfolder` (
  `folderid` int(19) NOT NULL,
  `foldername` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `state` varchar(50) DEFAULT 'SAVED'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_reportfolder`
--

INSERT INTO `vtiger_reportfolder` (`folderid`, `foldername`, `description`, `state`) VALUES
(1, 'Organization and Contact Reports', 'Account and Contact Reports', 'SAVED'),
(2, 'Lead Reports', 'Lead Reports', 'SAVED'),
(3, 'Opportunity Reports', 'Potential Reports', 'SAVED'),
(4, 'Activity Reports', 'Activity Reports', 'SAVED'),
(5, 'Tickets Reports', 'HelpDesk Reports', 'SAVED'),
(6, 'Product Reports', 'Product Reports', 'SAVED'),
(7, 'Quote Reports', 'Quote Reports', 'SAVED'),
(8, 'Purchase Order Reports', 'PurchaseOrder Reports', 'SAVED'),
(9, 'Invoice Reports', 'Invoice Reports', 'SAVED'),
(10, 'Sales Order Reports', 'SalesOrder Reports', 'SAVED'),
(11, 'Campaign Reports', 'Campaign Reports', 'SAVED'),
(12, 'Email Reports', 'Email Reports', 'SAVED');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportgroupbycolumn`
--

CREATE TABLE `vtiger_reportgroupbycolumn` (
  `reportid` int(19) DEFAULT NULL,
  `sortid` int(19) DEFAULT NULL,
  `sortcolname` varchar(250) DEFAULT NULL,
  `dategroupbycriteria` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportmodules`
--

CREATE TABLE `vtiger_reportmodules` (
  `reportmodulesid` int(19) NOT NULL,
  `primarymodule` varchar(100) DEFAULT NULL,
  `secondarymodules` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_reportmodules`
--

INSERT INTO `vtiger_reportmodules` (`reportmodulesid`, `primarymodule`, `secondarymodules`) VALUES
(1, 'Contacts', 'Accounts'),
(2, 'Contacts', 'Accounts'),
(3, 'Contacts', 'Potentials'),
(4, 'Leads', ''),
(5, 'Leads', ''),
(6, 'Potentials', ''),
(7, 'Potentials', ''),
(8, 'Calendar', ''),
(9, 'Calendar', ''),
(10, 'HelpDesk', 'Products'),
(11, 'HelpDesk', ''),
(12, 'HelpDesk', ''),
(13, 'Products', ''),
(14, 'Products', 'Contacts'),
(15, 'Quotes', ''),
(16, 'Quotes', ''),
(17, 'PurchaseOrder', 'Contacts'),
(18, 'PurchaseOrder', ''),
(19, 'Invoice', ''),
(20, 'SalesOrder', ''),
(21, 'Campaigns', ''),
(22, 'Contacts', 'Emails'),
(23, 'Accounts', 'Emails'),
(24, 'Leads', 'Emails'),
(25, 'Vendors', 'Emails');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportsharing`
--

CREATE TABLE `vtiger_reportsharing` (
  `reportid` int(19) NOT NULL,
  `shareid` int(19) NOT NULL,
  `setype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportsortcol`
--

CREATE TABLE `vtiger_reportsortcol` (
  `sortcolid` int(19) NOT NULL,
  `reportid` int(19) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `sortorder` varchar(250) DEFAULT 'Asc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_reportsortcol`
--

INSERT INTO `vtiger_reportsortcol` (`sortcolid`, `reportid`, `columnname`, `sortorder`) VALUES
(1, 4, 'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V', 'Ascending'),
(1, 5, 'vtiger_leaddetails:leadstatus:Leads_Lead_Status:leadstatus:V', 'Ascending'),
(1, 6, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V', 'Ascending'),
(1, 11, 'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V', 'Ascending');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportsummary`
--

CREATE TABLE `vtiger_reportsummary` (
  `reportsummaryid` int(19) NOT NULL,
  `summarytype` int(19) NOT NULL,
  `columnname` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reporttype`
--

CREATE TABLE `vtiger_reporttype` (
  `reportid` int(10) NOT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_report_sharegroups`
--

CREATE TABLE `vtiger_report_sharegroups` (
  `reportid` int(25) NOT NULL,
  `groupid` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_report_sharerole`
--

CREATE TABLE `vtiger_report_sharerole` (
  `reportid` int(25) NOT NULL,
  `roleid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_report_sharers`
--

CREATE TABLE `vtiger_report_sharers` (
  `reportid` int(25) NOT NULL,
  `rsid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_report_shareusers`
--

CREATE TABLE `vtiger_report_shareusers` (
  `reportid` int(25) NOT NULL,
  `userid` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role`
--

CREATE TABLE `vtiger_role` (
  `roleid` varchar(255) NOT NULL,
  `rolename` varchar(200) DEFAULT NULL,
  `parentrole` varchar(255) DEFAULT NULL,
  `depth` int(19) DEFAULT NULL,
  `allowassignedrecordsto` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_role`
--

INSERT INTO `vtiger_role` (`roleid`, `rolename`, `parentrole`, `depth`, `allowassignedrecordsto`) VALUES
('H1', 'Organization', 'H1', 0, 1),
('H2', 'Giám đốc điều hành', 'H1::H2', 1, 1),
('H3', 'Phó Giám đốc', 'H1::H2::H3', 2, 1),
('H4', 'Quản lý', 'H1::H2::H3::H4', 3, 1),
('H5', 'Nhân viên bán hàng', 'H1::H2::H3::H4::H5', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role2picklist`
--

CREATE TABLE `vtiger_role2picklist` (
  `roleid` varchar(255) NOT NULL,
  `picklistvalueid` int(11) NOT NULL,
  `picklistid` int(11) NOT NULL,
  `sortid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_role2picklist`
--

INSERT INTO `vtiger_role2picklist` (`roleid`, `picklistvalueid`, `picklistid`, `sortid`) VALUES
('H1', 1, 1, 0),
('H1', 2, 1, 1),
('H1', 3, 1, 2),
('H1', 4, 1, 3),
('H1', 5, 1, 4),
('H1', 6, 1, 5),
('H1', 7, 1, 6),
('H1', 8, 1, 7),
('H1', 9, 1, 8),
('H1', 10, 1, 9),
('H1', 11, 1, 10),
('H1', 12, 2, 0),
('H1', 13, 2, 1),
('H1', 14, 3, 0),
('H1', 15, 3, 1),
('H1', 16, 3, 2),
('H1', 17, 3, 3),
('H1', 18, 3, 4),
('H1', 19, 3, 5),
('H1', 20, 4, 0),
('H1', 21, 4, 1),
('H1', 22, 4, 2),
('H1', 23, 4, 3),
('H1', 24, 4, 4),
('H1', 25, 4, 5),
('H1', 26, 4, 6),
('H1', 27, 4, 7),
('H1', 28, 4, 8),
('H1', 29, 4, 9),
('H1', 30, 4, 10),
('H1', 31, 4, 11),
('H1', 32, 4, 12),
('H1', 33, 5, 0),
('H1', 34, 5, 1),
('H1', 35, 5, 2),
('H1', 36, 5, 3),
('H1', 37, 5, 4),
('H1', 38, 6, 0),
('H1', 39, 6, 1),
('H1', 40, 6, 2),
('H1', 41, 7, 0),
('H1', 42, 7, 1),
('H1', 43, 7, 2),
('H1', 44, 7, 3),
('H1', 45, 7, 4),
('H1', 46, 8, 0),
('H1', 47, 9, 0),
('H1', 48, 9, 1),
('H1', 49, 9, 2),
('H1', 50, 9, 3),
('H1', 51, 10, 0),
('H1', 52, 10, 1),
('H1', 53, 10, 2),
('H1', 54, 10, 3),
('H1', 55, 10, 4),
('H1', 56, 10, 5),
('H1', 57, 10, 6),
('H1', 58, 10, 7),
('H1', 59, 10, 8),
('H1', 60, 11, 0),
('H1', 61, 11, 1),
('H1', 62, 11, 2),
('H1', 63, 11, 3),
('H1', 64, 11, 4),
('H1', 65, 11, 5),
('H1', 66, 11, 6),
('H1', 67, 11, 7),
('H1', 68, 11, 8),
('H1', 69, 11, 9),
('H1', 70, 11, 10),
('H1', 71, 11, 11),
('H1', 72, 11, 12),
('H1', 73, 11, 13),
('H1', 74, 11, 14),
('H1', 75, 11, 15),
('H1', 76, 11, 16),
('H1', 77, 11, 17),
('H1', 78, 11, 18),
('H1', 79, 11, 19),
('H1', 80, 11, 20),
('H1', 81, 11, 21),
('H1', 82, 11, 22),
('H1', 83, 11, 23),
('H1', 84, 11, 24),
('H1', 85, 11, 25),
('H1', 86, 11, 26),
('H1', 87, 11, 27),
('H1', 88, 11, 28),
('H1', 89, 11, 29),
('H1', 90, 11, 30),
('H1', 91, 11, 31),
('H1', 92, 12, 0),
('H1', 93, 12, 1),
('H1', 94, 12, 2),
('H1', 95, 12, 3),
('H1', 96, 12, 4),
('H1', 97, 12, 5),
('H1', 98, 13, 0),
('H1', 99, 13, 1),
('H1', 100, 13, 2),
('H1', 101, 13, 3),
('H1', 102, 13, 4),
('H1', 103, 13, 5),
('H1', 104, 13, 6),
('H1', 105, 13, 7),
('H1', 106, 13, 8),
('H1', 107, 13, 9),
('H1', 108, 13, 10),
('H1', 109, 13, 11),
('H1', 110, 13, 12),
('H1', 111, 14, 0),
('H1', 112, 14, 1),
('H1', 113, 14, 2),
('H1', 114, 14, 3),
('H1', 115, 14, 4),
('H1', 116, 14, 5),
('H1', 117, 14, 6),
('H1', 118, 14, 7),
('H1', 119, 14, 8),
('H1', 120, 14, 9),
('H1', 121, 14, 10),
('H1', 122, 14, 11),
('H1', 123, 15, 0),
('H1', 124, 15, 1),
('H1', 125, 15, 2),
('H1', 126, 15, 3),
('H1', 127, 16, 0),
('H1', 128, 16, 1),
('H1', 129, 16, 2),
('H1', 130, 17, 0),
('H1', 131, 17, 1),
('H1', 132, 17, 2),
('H1', 133, 17, 3),
('H1', 134, 17, 4),
('H1', 135, 18, 0),
('H1', 136, 18, 1),
('H1', 137, 18, 2),
('H1', 138, 18, 3),
('H1', 139, 19, 0),
('H1', 140, 19, 1),
('H1', 141, 19, 2),
('H1', 142, 19, 3),
('H1', 143, 19, 4),
('H1', 144, 20, 0),
('H1', 145, 20, 1),
('H1', 146, 20, 2),
('H1', 147, 20, 3),
('H1', 148, 20, 4),
('H1', 149, 20, 5),
('H1', 150, 21, 0),
('H1', 151, 21, 1),
('H1', 152, 21, 2),
('H1', 153, 21, 3),
('H1', 154, 21, 4),
('H1', 155, 21, 5),
('H1', 156, 21, 6),
('H1', 157, 21, 7),
('H1', 158, 21, 8),
('H1', 159, 21, 9),
('H1', 160, 22, 0),
('H1', 161, 22, 1),
('H1', 162, 22, 2),
('H1', 163, 22, 3),
('H1', 164, 22, 4),
('H1', 165, 22, 5),
('H1', 166, 23, 0),
('H1', 167, 23, 1),
('H1', 168, 23, 2),
('H1', 169, 23, 3),
('H1', 170, 24, 0),
('H1', 171, 24, 1),
('H1', 172, 24, 2),
('H1', 173, 25, 0),
('H1', 174, 25, 1),
('H1', 175, 25, 2),
('H1', 176, 25, 3),
('H1', 177, 25, 4),
('H1', 178, 25, 5),
('H1', 179, 26, 0),
('H1', 180, 26, 1),
('H1', 181, 26, 2),
('H1', 182, 27, 0),
('H1', 183, 27, 1),
('H1', 184, 27, 2),
('H1', 185, 27, 3),
('H1', 186, 28, 0),
('H1', 187, 28, 1),
('H1', 188, 28, 2),
('H1', 189, 28, 3),
('H1', 190, 29, 0),
('H1', 191, 29, 1),
('H1', 192, 29, 2),
('H1', 193, 29, 3),
('H1', 194, 30, 0),
('H1', 195, 30, 1),
('H1', 196, 30, 2),
('H1', 197, 30, 3),
('H1', 198, 30, 4),
('H1', 199, 30, 5),
('H1', 200, 30, 6),
('H1', 201, 30, 7),
('H1', 202, 30, 8),
('H1', 203, 30, 9),
('H1', 204, 30, 10),
('H1', 205, 30, 11),
('H1', 206, 30, 12),
('H1', 207, 30, 13),
('H1', 208, 30, 14),
('H1', 209, 30, 15),
('H1', 210, 31, 1),
('H1', 211, 31, 2),
('H1', 212, 31, 3),
('H1', 213, 32, 1),
('H1', 214, 32, 2),
('H1', 215, 32, 3),
('H1', 216, 32, 4),
('H1', 217, 32, 5),
('H1', 218, 32, 6),
('H1', 219, 33, 1),
('H1', 220, 33, 2),
('H1', 221, 33, 3),
('H1', 222, 33, 4),
('H1', 223, 34, 1),
('H1', 224, 34, 2),
('H1', 225, 34, 3),
('H1', 226, 34, 4),
('H1', 227, 34, 5),
('H1', 228, 34, 6),
('H1', 229, 35, 1),
('H1', 230, 35, 2),
('H1', 231, 35, 3),
('H1', 232, 36, 1),
('H1', 233, 36, 2),
('H1', 234, 36, 3),
('H1', 235, 37, 1),
('H1', 236, 37, 2),
('H1', 237, 37, 3),
('H1', 238, 37, 4),
('H1', 239, 38, 1),
('H1', 240, 38, 2),
('H1', 241, 38, 3),
('H1', 242, 38, 4),
('H1', 243, 39, 1),
('H1', 244, 39, 2),
('H1', 245, 39, 3),
('H1', 246, 39, 4),
('H1', 247, 40, 1),
('H1', 248, 40, 2),
('H1', 249, 40, 3),
('H1', 250, 40, 4),
('H1', 251, 40, 5),
('H1', 252, 40, 6),
('H1', 253, 40, 7),
('H1', 254, 40, 8),
('H1', 255, 40, 9),
('H1', 256, 40, 10),
('H1', 257, 40, 11),
('H1', 258, 41, 1),
('H1', 259, 41, 2),
('H1', 260, 41, 3),
('H1', 261, 41, 4),
('H1', 262, 41, 5),
('H1', 263, 41, 6),
('H1', 264, 41, 7),
('H1', 265, 41, 8),
('H1', 266, 41, 9),
('H1', 267, 42, 1),
('H1', 268, 42, 2),
('H1', 269, 42, 3),
('H1', 270, 42, 4),
('H1', 271, 43, 1),
('H1', 272, 43, 2),
('H1', 273, 43, 3),
('H1', 274, 43, 4),
('H1', 275, 44, 1),
('H1', 276, 44, 2),
('H1', 277, 44, 3),
('H1', 278, 44, 4),
('H1', 279, 44, 5),
('H1', 280, 44, 6),
('H1', 281, 44, 7),
('H1', 282, 44, 8),
('H1', 283, 44, 9),
('H1', 284, 44, 10),
('H1', 285, 44, 11),
('H1', 286, 45, 1),
('H1', 287, 45, 2),
('H1', 288, 12, 1),
('H1', 289, 46, 1),
('H1', 290, 46, 2),
('H1', 291, 46, 3),
('H1', 292, 46, 4),
('H1', 293, 46, 5),
('H1', 294, 46, 6),
('H1', 295, 2, 1),
('H1', 296, 47, 1),
('H1', 297, 47, 2),
('H1', 298, 47, 3),
('H1', 299, 48, 1),
('H1', 300, 48, 2),
('H1', 303, 49, 1),
('H1', 304, 49, 2),
('H2', 1, 1, 0),
('H2', 2, 1, 1),
('H2', 3, 1, 2),
('H2', 4, 1, 3),
('H2', 5, 1, 4),
('H2', 6, 1, 5),
('H2', 7, 1, 6),
('H2', 8, 1, 7),
('H2', 9, 1, 8),
('H2', 10, 1, 9),
('H2', 11, 1, 10),
('H2', 12, 2, 0),
('H2', 13, 2, 1),
('H2', 14, 3, 0),
('H2', 15, 3, 1),
('H2', 16, 3, 2),
('H2', 17, 3, 3),
('H2', 18, 3, 4),
('H2', 19, 3, 5),
('H2', 20, 4, 0),
('H2', 21, 4, 1),
('H2', 22, 4, 2),
('H2', 23, 4, 3),
('H2', 24, 4, 4),
('H2', 25, 4, 5),
('H2', 26, 4, 6),
('H2', 27, 4, 7),
('H2', 28, 4, 8),
('H2', 29, 4, 9),
('H2', 30, 4, 10),
('H2', 31, 4, 11),
('H2', 32, 4, 12),
('H2', 33, 5, 0),
('H2', 34, 5, 1),
('H2', 35, 5, 2),
('H2', 36, 5, 3),
('H2', 37, 5, 4),
('H2', 38, 6, 0),
('H2', 39, 6, 1),
('H2', 40, 6, 2),
('H2', 41, 7, 0),
('H2', 42, 7, 1),
('H2', 43, 7, 2),
('H2', 44, 7, 3),
('H2', 45, 7, 4),
('H2', 46, 8, 0),
('H2', 47, 9, 0),
('H2', 48, 9, 1),
('H2', 49, 9, 2),
('H2', 50, 9, 3),
('H2', 51, 10, 0),
('H2', 52, 10, 1),
('H2', 53, 10, 2),
('H2', 54, 10, 3),
('H2', 55, 10, 4),
('H2', 56, 10, 5),
('H2', 57, 10, 6),
('H2', 58, 10, 7),
('H2', 59, 10, 8),
('H2', 60, 11, 0),
('H2', 61, 11, 1),
('H2', 62, 11, 2),
('H2', 63, 11, 3),
('H2', 64, 11, 4),
('H2', 65, 11, 5),
('H2', 66, 11, 6),
('H2', 67, 11, 7),
('H2', 68, 11, 8),
('H2', 69, 11, 9),
('H2', 70, 11, 10),
('H2', 71, 11, 11),
('H2', 72, 11, 12),
('H2', 73, 11, 13),
('H2', 74, 11, 14),
('H2', 75, 11, 15),
('H2', 76, 11, 16),
('H2', 77, 11, 17),
('H2', 78, 11, 18),
('H2', 79, 11, 19),
('H2', 80, 11, 20),
('H2', 81, 11, 21),
('H2', 82, 11, 22),
('H2', 83, 11, 23),
('H2', 84, 11, 24),
('H2', 85, 11, 25),
('H2', 86, 11, 26),
('H2', 87, 11, 27),
('H2', 88, 11, 28),
('H2', 89, 11, 29),
('H2', 90, 11, 30),
('H2', 91, 11, 31),
('H2', 92, 12, 0),
('H2', 93, 12, 1),
('H2', 94, 12, 2),
('H2', 95, 12, 3),
('H2', 96, 12, 4),
('H2', 97, 12, 5),
('H2', 98, 13, 0),
('H2', 99, 13, 1),
('H2', 100, 13, 2),
('H2', 101, 13, 3),
('H2', 102, 13, 4),
('H2', 103, 13, 5),
('H2', 104, 13, 6),
('H2', 105, 13, 7),
('H2', 106, 13, 8),
('H2', 107, 13, 9),
('H2', 108, 13, 10),
('H2', 109, 13, 11),
('H2', 110, 13, 12),
('H2', 111, 14, 0),
('H2', 112, 14, 1),
('H2', 113, 14, 2),
('H2', 114, 14, 3),
('H2', 115, 14, 4),
('H2', 116, 14, 5),
('H2', 117, 14, 6),
('H2', 118, 14, 7),
('H2', 119, 14, 8),
('H2', 120, 14, 9),
('H2', 121, 14, 10),
('H2', 122, 14, 11),
('H2', 123, 15, 0),
('H2', 124, 15, 1),
('H2', 125, 15, 2),
('H2', 126, 15, 3),
('H2', 127, 16, 0),
('H2', 128, 16, 1),
('H2', 129, 16, 2),
('H2', 130, 17, 0),
('H2', 131, 17, 1),
('H2', 132, 17, 2),
('H2', 133, 17, 3),
('H2', 134, 17, 4),
('H2', 135, 18, 0),
('H2', 136, 18, 1),
('H2', 137, 18, 2),
('H2', 138, 18, 3),
('H2', 139, 19, 0),
('H2', 140, 19, 1),
('H2', 141, 19, 2),
('H2', 142, 19, 3),
('H2', 143, 19, 4),
('H2', 144, 20, 0),
('H2', 145, 20, 1),
('H2', 146, 20, 2),
('H2', 147, 20, 3),
('H2', 148, 20, 4),
('H2', 149, 20, 5),
('H2', 150, 21, 0),
('H2', 151, 21, 1),
('H2', 152, 21, 2),
('H2', 153, 21, 3),
('H2', 154, 21, 4),
('H2', 155, 21, 5),
('H2', 156, 21, 6),
('H2', 157, 21, 7),
('H2', 158, 21, 8),
('H2', 159, 21, 9),
('H2', 160, 22, 0),
('H2', 161, 22, 1),
('H2', 162, 22, 2),
('H2', 163, 22, 3),
('H2', 164, 22, 4),
('H2', 165, 22, 5),
('H2', 166, 23, 0),
('H2', 167, 23, 1),
('H2', 168, 23, 2),
('H2', 169, 23, 3),
('H2', 170, 24, 0),
('H2', 171, 24, 1),
('H2', 172, 24, 2),
('H2', 173, 25, 0),
('H2', 174, 25, 1),
('H2', 175, 25, 2),
('H2', 176, 25, 3),
('H2', 177, 25, 4),
('H2', 178, 25, 5),
('H2', 179, 26, 0),
('H2', 180, 26, 1),
('H2', 181, 26, 2),
('H2', 182, 27, 0),
('H2', 183, 27, 1),
('H2', 184, 27, 2),
('H2', 185, 27, 3),
('H2', 186, 28, 0),
('H2', 187, 28, 1),
('H2', 188, 28, 2),
('H2', 189, 28, 3),
('H2', 190, 29, 0),
('H2', 191, 29, 1),
('H2', 192, 29, 2),
('H2', 193, 29, 3),
('H2', 194, 30, 0),
('H2', 195, 30, 1),
('H2', 196, 30, 2),
('H2', 197, 30, 3),
('H2', 198, 30, 4),
('H2', 199, 30, 5),
('H2', 200, 30, 6),
('H2', 201, 30, 7),
('H2', 202, 30, 8),
('H2', 203, 30, 9),
('H2', 204, 30, 10),
('H2', 205, 30, 11),
('H2', 206, 30, 12),
('H2', 207, 30, 13),
('H2', 208, 30, 14),
('H2', 209, 30, 15),
('H2', 210, 31, 1),
('H2', 211, 31, 2),
('H2', 212, 31, 3),
('H2', 213, 32, 1),
('H2', 214, 32, 2),
('H2', 215, 32, 3),
('H2', 216, 32, 4),
('H2', 217, 32, 5),
('H2', 218, 32, 6),
('H2', 219, 33, 1),
('H2', 220, 33, 2),
('H2', 221, 33, 3),
('H2', 222, 33, 4),
('H2', 223, 34, 1),
('H2', 224, 34, 2),
('H2', 225, 34, 3),
('H2', 226, 34, 4),
('H2', 227, 34, 5),
('H2', 228, 34, 6),
('H2', 229, 35, 1),
('H2', 230, 35, 2),
('H2', 231, 35, 3),
('H2', 232, 36, 1),
('H2', 233, 36, 2),
('H2', 234, 36, 3),
('H2', 235, 37, 1),
('H2', 236, 37, 2),
('H2', 237, 37, 3),
('H2', 238, 37, 4),
('H2', 239, 38, 1),
('H2', 240, 38, 2),
('H2', 241, 38, 3),
('H2', 242, 38, 4),
('H2', 243, 39, 1),
('H2', 244, 39, 2),
('H2', 245, 39, 3),
('H2', 246, 39, 4),
('H2', 247, 40, 1),
('H2', 248, 40, 2),
('H2', 249, 40, 3),
('H2', 250, 40, 4),
('H2', 251, 40, 5),
('H2', 252, 40, 6),
('H2', 253, 40, 7),
('H2', 254, 40, 8),
('H2', 255, 40, 9),
('H2', 256, 40, 10),
('H2', 257, 40, 11),
('H2', 258, 41, 1),
('H2', 259, 41, 2),
('H2', 260, 41, 3),
('H2', 261, 41, 4),
('H2', 262, 41, 5),
('H2', 263, 41, 6),
('H2', 264, 41, 7),
('H2', 265, 41, 8),
('H2', 266, 41, 9),
('H2', 267, 42, 1),
('H2', 268, 42, 2),
('H2', 269, 42, 3),
('H2', 270, 42, 4),
('H2', 271, 43, 1),
('H2', 272, 43, 2),
('H2', 273, 43, 3),
('H2', 274, 43, 4),
('H2', 275, 44, 1),
('H2', 276, 44, 2),
('H2', 277, 44, 3),
('H2', 278, 44, 4),
('H2', 279, 44, 5),
('H2', 280, 44, 6),
('H2', 281, 44, 7),
('H2', 282, 44, 8),
('H2', 283, 44, 9),
('H2', 284, 44, 10),
('H2', 285, 44, 11),
('H2', 286, 45, 1),
('H2', 287, 45, 2),
('H2', 288, 12, 1),
('H2', 289, 46, 1),
('H2', 290, 46, 2),
('H2', 291, 46, 3),
('H2', 292, 46, 4),
('H2', 293, 46, 5),
('H2', 294, 46, 6),
('H2', 295, 2, 1),
('H2', 296, 47, 1),
('H2', 297, 47, 2),
('H2', 298, 47, 3),
('H2', 299, 48, 1),
('H2', 300, 48, 2),
('H2', 303, 49, 1),
('H2', 304, 49, 2),
('H3', 1, 1, 0),
('H3', 2, 1, 1),
('H3', 3, 1, 2),
('H3', 4, 1, 3),
('H3', 5, 1, 4),
('H3', 6, 1, 5),
('H3', 7, 1, 6),
('H3', 8, 1, 7),
('H3', 9, 1, 8),
('H3', 10, 1, 9),
('H3', 11, 1, 10),
('H3', 12, 2, 0),
('H3', 13, 2, 1),
('H3', 14, 3, 0),
('H3', 15, 3, 1),
('H3', 16, 3, 2),
('H3', 17, 3, 3),
('H3', 18, 3, 4),
('H3', 19, 3, 5),
('H3', 20, 4, 0),
('H3', 21, 4, 1),
('H3', 22, 4, 2),
('H3', 23, 4, 3),
('H3', 24, 4, 4),
('H3', 25, 4, 5),
('H3', 26, 4, 6),
('H3', 27, 4, 7),
('H3', 28, 4, 8),
('H3', 29, 4, 9),
('H3', 30, 4, 10),
('H3', 31, 4, 11),
('H3', 32, 4, 12),
('H3', 33, 5, 0),
('H3', 34, 5, 1),
('H3', 35, 5, 2),
('H3', 36, 5, 3),
('H3', 37, 5, 4),
('H3', 38, 6, 0),
('H3', 39, 6, 1),
('H3', 40, 6, 2),
('H3', 41, 7, 0),
('H3', 42, 7, 1),
('H3', 43, 7, 2),
('H3', 44, 7, 3),
('H3', 45, 7, 4),
('H3', 46, 8, 0),
('H3', 47, 9, 0),
('H3', 48, 9, 1),
('H3', 49, 9, 2),
('H3', 50, 9, 3),
('H3', 51, 10, 0),
('H3', 52, 10, 1),
('H3', 53, 10, 2),
('H3', 54, 10, 3),
('H3', 55, 10, 4),
('H3', 56, 10, 5),
('H3', 57, 10, 6),
('H3', 58, 10, 7),
('H3', 59, 10, 8),
('H3', 60, 11, 0),
('H3', 61, 11, 1),
('H3', 62, 11, 2),
('H3', 63, 11, 3),
('H3', 64, 11, 4),
('H3', 65, 11, 5),
('H3', 66, 11, 6),
('H3', 67, 11, 7),
('H3', 68, 11, 8),
('H3', 69, 11, 9),
('H3', 70, 11, 10),
('H3', 71, 11, 11),
('H3', 72, 11, 12),
('H3', 73, 11, 13),
('H3', 74, 11, 14),
('H3', 75, 11, 15),
('H3', 76, 11, 16),
('H3', 77, 11, 17),
('H3', 78, 11, 18),
('H3', 79, 11, 19),
('H3', 80, 11, 20),
('H3', 81, 11, 21),
('H3', 82, 11, 22),
('H3', 83, 11, 23),
('H3', 84, 11, 24),
('H3', 85, 11, 25),
('H3', 86, 11, 26),
('H3', 87, 11, 27),
('H3', 88, 11, 28),
('H3', 89, 11, 29),
('H3', 90, 11, 30),
('H3', 91, 11, 31),
('H3', 92, 12, 0),
('H3', 93, 12, 1),
('H3', 94, 12, 2),
('H3', 95, 12, 3),
('H3', 96, 12, 4),
('H3', 97, 12, 5),
('H3', 98, 13, 0),
('H3', 99, 13, 1),
('H3', 100, 13, 2),
('H3', 101, 13, 3),
('H3', 102, 13, 4),
('H3', 103, 13, 5),
('H3', 104, 13, 6),
('H3', 105, 13, 7),
('H3', 106, 13, 8),
('H3', 107, 13, 9),
('H3', 108, 13, 10),
('H3', 109, 13, 11),
('H3', 110, 13, 12),
('H3', 111, 14, 0),
('H3', 112, 14, 1),
('H3', 113, 14, 2),
('H3', 114, 14, 3),
('H3', 115, 14, 4),
('H3', 116, 14, 5),
('H3', 117, 14, 6),
('H3', 118, 14, 7),
('H3', 119, 14, 8),
('H3', 120, 14, 9),
('H3', 121, 14, 10),
('H3', 122, 14, 11),
('H3', 123, 15, 0),
('H3', 124, 15, 1),
('H3', 125, 15, 2),
('H3', 126, 15, 3),
('H3', 127, 16, 0),
('H3', 128, 16, 1),
('H3', 129, 16, 2),
('H3', 130, 17, 0),
('H3', 131, 17, 1),
('H3', 132, 17, 2),
('H3', 133, 17, 3),
('H3', 134, 17, 4),
('H3', 135, 18, 0),
('H3', 136, 18, 1),
('H3', 137, 18, 2),
('H3', 138, 18, 3),
('H3', 139, 19, 0),
('H3', 140, 19, 1),
('H3', 141, 19, 2),
('H3', 142, 19, 3),
('H3', 143, 19, 4),
('H3', 144, 20, 0),
('H3', 145, 20, 1),
('H3', 146, 20, 2),
('H3', 147, 20, 3),
('H3', 148, 20, 4),
('H3', 149, 20, 5),
('H3', 150, 21, 0),
('H3', 151, 21, 1),
('H3', 152, 21, 2),
('H3', 153, 21, 3),
('H3', 154, 21, 4),
('H3', 155, 21, 5),
('H3', 156, 21, 6),
('H3', 157, 21, 7),
('H3', 158, 21, 8),
('H3', 159, 21, 9),
('H3', 160, 22, 0),
('H3', 161, 22, 1),
('H3', 162, 22, 2),
('H3', 163, 22, 3),
('H3', 164, 22, 4),
('H3', 165, 22, 5),
('H3', 166, 23, 0),
('H3', 167, 23, 1),
('H3', 168, 23, 2),
('H3', 169, 23, 3),
('H3', 170, 24, 0),
('H3', 171, 24, 1),
('H3', 172, 24, 2),
('H3', 173, 25, 0),
('H3', 174, 25, 1),
('H3', 175, 25, 2),
('H3', 176, 25, 3),
('H3', 177, 25, 4),
('H3', 178, 25, 5),
('H3', 179, 26, 0),
('H3', 180, 26, 1),
('H3', 181, 26, 2),
('H3', 182, 27, 0),
('H3', 183, 27, 1),
('H3', 184, 27, 2),
('H3', 185, 27, 3),
('H3', 186, 28, 0),
('H3', 187, 28, 1),
('H3', 188, 28, 2),
('H3', 189, 28, 3),
('H3', 190, 29, 0),
('H3', 191, 29, 1),
('H3', 192, 29, 2),
('H3', 193, 29, 3),
('H3', 194, 30, 0),
('H3', 195, 30, 1),
('H3', 196, 30, 2),
('H3', 197, 30, 3),
('H3', 198, 30, 4),
('H3', 199, 30, 5),
('H3', 200, 30, 6),
('H3', 201, 30, 7),
('H3', 202, 30, 8),
('H3', 203, 30, 9),
('H3', 204, 30, 10),
('H3', 205, 30, 11),
('H3', 206, 30, 12),
('H3', 207, 30, 13),
('H3', 208, 30, 14),
('H3', 209, 30, 15),
('H3', 210, 31, 1),
('H3', 211, 31, 2),
('H3', 212, 31, 3),
('H3', 213, 32, 1),
('H3', 214, 32, 2),
('H3', 215, 32, 3),
('H3', 216, 32, 4),
('H3', 217, 32, 5),
('H3', 218, 32, 6),
('H3', 219, 33, 1),
('H3', 220, 33, 2),
('H3', 221, 33, 3),
('H3', 222, 33, 4),
('H3', 223, 34, 1),
('H3', 224, 34, 2),
('H3', 225, 34, 3),
('H3', 226, 34, 4),
('H3', 227, 34, 5),
('H3', 228, 34, 6),
('H3', 229, 35, 1),
('H3', 230, 35, 2),
('H3', 231, 35, 3),
('H3', 232, 36, 1),
('H3', 233, 36, 2),
('H3', 234, 36, 3),
('H3', 235, 37, 1),
('H3', 236, 37, 2),
('H3', 237, 37, 3),
('H3', 238, 37, 4),
('H3', 239, 38, 1),
('H3', 240, 38, 2),
('H3', 241, 38, 3),
('H3', 242, 38, 4),
('H3', 243, 39, 1),
('H3', 244, 39, 2),
('H3', 245, 39, 3),
('H3', 246, 39, 4),
('H3', 247, 40, 1),
('H3', 248, 40, 2),
('H3', 249, 40, 3),
('H3', 250, 40, 4),
('H3', 251, 40, 5),
('H3', 252, 40, 6),
('H3', 253, 40, 7),
('H3', 254, 40, 8),
('H3', 255, 40, 9),
('H3', 256, 40, 10),
('H3', 257, 40, 11),
('H3', 258, 41, 1),
('H3', 259, 41, 2),
('H3', 260, 41, 3),
('H3', 261, 41, 4),
('H3', 262, 41, 5),
('H3', 263, 41, 6),
('H3', 264, 41, 7),
('H3', 265, 41, 8),
('H3', 266, 41, 9),
('H3', 267, 42, 1),
('H3', 268, 42, 2),
('H3', 269, 42, 3),
('H3', 270, 42, 4),
('H3', 271, 43, 1),
('H3', 272, 43, 2),
('H3', 273, 43, 3),
('H3', 274, 43, 4),
('H3', 275, 44, 1),
('H3', 276, 44, 2),
('H3', 277, 44, 3),
('H3', 278, 44, 4),
('H3', 279, 44, 5),
('H3', 280, 44, 6),
('H3', 281, 44, 7),
('H3', 282, 44, 8),
('H3', 283, 44, 9),
('H3', 284, 44, 10),
('H3', 285, 44, 11),
('H3', 286, 45, 1),
('H3', 287, 45, 2),
('H3', 288, 12, 1),
('H3', 289, 46, 1),
('H3', 290, 46, 2),
('H3', 291, 46, 3),
('H3', 292, 46, 4),
('H3', 293, 46, 5),
('H3', 294, 46, 6),
('H3', 295, 2, 1),
('H3', 296, 47, 1),
('H3', 297, 47, 2),
('H3', 298, 47, 3),
('H3', 299, 48, 1),
('H3', 300, 48, 2),
('H3', 303, 49, 1),
('H3', 304, 49, 2),
('H4', 1, 1, 0),
('H4', 2, 1, 1),
('H4', 3, 1, 2),
('H4', 4, 1, 3),
('H4', 5, 1, 4),
('H4', 6, 1, 5),
('H4', 7, 1, 6),
('H4', 8, 1, 7),
('H4', 9, 1, 8),
('H4', 10, 1, 9),
('H4', 11, 1, 10),
('H4', 12, 2, 0),
('H4', 13, 2, 1),
('H4', 14, 3, 0),
('H4', 15, 3, 1),
('H4', 16, 3, 2),
('H4', 17, 3, 3),
('H4', 18, 3, 4),
('H4', 19, 3, 5),
('H4', 20, 4, 0),
('H4', 21, 4, 1),
('H4', 22, 4, 2),
('H4', 23, 4, 3),
('H4', 24, 4, 4),
('H4', 25, 4, 5),
('H4', 26, 4, 6),
('H4', 27, 4, 7),
('H4', 28, 4, 8),
('H4', 29, 4, 9),
('H4', 30, 4, 10),
('H4', 31, 4, 11),
('H4', 32, 4, 12),
('H4', 33, 5, 0),
('H4', 34, 5, 1),
('H4', 35, 5, 2),
('H4', 36, 5, 3),
('H4', 37, 5, 4),
('H4', 38, 6, 0),
('H4', 39, 6, 1),
('H4', 40, 6, 2),
('H4', 41, 7, 0),
('H4', 42, 7, 1),
('H4', 43, 7, 2),
('H4', 44, 7, 3),
('H4', 45, 7, 4),
('H4', 46, 8, 0),
('H4', 47, 9, 0),
('H4', 48, 9, 1),
('H4', 49, 9, 2),
('H4', 50, 9, 3),
('H4', 51, 10, 0),
('H4', 52, 10, 1),
('H4', 53, 10, 2),
('H4', 54, 10, 3),
('H4', 55, 10, 4),
('H4', 56, 10, 5),
('H4', 57, 10, 6),
('H4', 58, 10, 7),
('H4', 59, 10, 8),
('H4', 60, 11, 0),
('H4', 61, 11, 1),
('H4', 62, 11, 2),
('H4', 63, 11, 3),
('H4', 64, 11, 4),
('H4', 65, 11, 5),
('H4', 66, 11, 6),
('H4', 67, 11, 7),
('H4', 68, 11, 8),
('H4', 69, 11, 9),
('H4', 70, 11, 10),
('H4', 71, 11, 11),
('H4', 72, 11, 12),
('H4', 73, 11, 13),
('H4', 74, 11, 14),
('H4', 75, 11, 15),
('H4', 76, 11, 16),
('H4', 77, 11, 17),
('H4', 78, 11, 18),
('H4', 79, 11, 19),
('H4', 80, 11, 20),
('H4', 81, 11, 21),
('H4', 82, 11, 22),
('H4', 83, 11, 23),
('H4', 84, 11, 24),
('H4', 85, 11, 25),
('H4', 86, 11, 26),
('H4', 87, 11, 27),
('H4', 88, 11, 28),
('H4', 89, 11, 29),
('H4', 90, 11, 30),
('H4', 91, 11, 31),
('H4', 92, 12, 0),
('H4', 93, 12, 1),
('H4', 94, 12, 2),
('H4', 95, 12, 3),
('H4', 96, 12, 4),
('H4', 97, 12, 5),
('H4', 98, 13, 0),
('H4', 99, 13, 1),
('H4', 100, 13, 2),
('H4', 101, 13, 3),
('H4', 102, 13, 4),
('H4', 103, 13, 5),
('H4', 104, 13, 6),
('H4', 105, 13, 7),
('H4', 106, 13, 8),
('H4', 107, 13, 9),
('H4', 108, 13, 10),
('H4', 109, 13, 11),
('H4', 110, 13, 12),
('H4', 111, 14, 0),
('H4', 112, 14, 1),
('H4', 113, 14, 2),
('H4', 114, 14, 3),
('H4', 115, 14, 4),
('H4', 116, 14, 5),
('H4', 117, 14, 6),
('H4', 118, 14, 7),
('H4', 119, 14, 8),
('H4', 120, 14, 9),
('H4', 121, 14, 10),
('H4', 122, 14, 11),
('H4', 123, 15, 0),
('H4', 124, 15, 1),
('H4', 125, 15, 2),
('H4', 126, 15, 3),
('H4', 127, 16, 0),
('H4', 128, 16, 1),
('H4', 129, 16, 2),
('H4', 130, 17, 0),
('H4', 131, 17, 1),
('H4', 132, 17, 2),
('H4', 133, 17, 3),
('H4', 134, 17, 4),
('H4', 135, 18, 0),
('H4', 136, 18, 1),
('H4', 137, 18, 2),
('H4', 138, 18, 3),
('H4', 139, 19, 0),
('H4', 140, 19, 1),
('H4', 141, 19, 2),
('H4', 142, 19, 3),
('H4', 143, 19, 4),
('H4', 144, 20, 0),
('H4', 145, 20, 1),
('H4', 146, 20, 2),
('H4', 147, 20, 3),
('H4', 148, 20, 4),
('H4', 149, 20, 5),
('H4', 150, 21, 0),
('H4', 151, 21, 1),
('H4', 152, 21, 2),
('H4', 153, 21, 3),
('H4', 154, 21, 4),
('H4', 155, 21, 5),
('H4', 156, 21, 6),
('H4', 157, 21, 7),
('H4', 158, 21, 8),
('H4', 159, 21, 9),
('H4', 160, 22, 0),
('H4', 161, 22, 1),
('H4', 162, 22, 2),
('H4', 163, 22, 3),
('H4', 164, 22, 4),
('H4', 165, 22, 5),
('H4', 166, 23, 0),
('H4', 167, 23, 1),
('H4', 168, 23, 2),
('H4', 169, 23, 3),
('H4', 170, 24, 0),
('H4', 171, 24, 1),
('H4', 172, 24, 2),
('H4', 173, 25, 0),
('H4', 174, 25, 1),
('H4', 175, 25, 2),
('H4', 176, 25, 3),
('H4', 177, 25, 4),
('H4', 178, 25, 5),
('H4', 179, 26, 0),
('H4', 180, 26, 1),
('H4', 181, 26, 2),
('H4', 182, 27, 0),
('H4', 183, 27, 1),
('H4', 184, 27, 2),
('H4', 185, 27, 3),
('H4', 186, 28, 0),
('H4', 187, 28, 1),
('H4', 188, 28, 2),
('H4', 189, 28, 3),
('H4', 190, 29, 0),
('H4', 191, 29, 1),
('H4', 192, 29, 2),
('H4', 193, 29, 3),
('H4', 194, 30, 0),
('H4', 195, 30, 1),
('H4', 196, 30, 2),
('H4', 197, 30, 3),
('H4', 198, 30, 4),
('H4', 199, 30, 5),
('H4', 200, 30, 6),
('H4', 201, 30, 7),
('H4', 202, 30, 8),
('H4', 203, 30, 9),
('H4', 204, 30, 10),
('H4', 205, 30, 11),
('H4', 206, 30, 12),
('H4', 207, 30, 13),
('H4', 208, 30, 14),
('H4', 209, 30, 15),
('H4', 210, 31, 1),
('H4', 211, 31, 2),
('H4', 212, 31, 3),
('H4', 213, 32, 1),
('H4', 214, 32, 2),
('H4', 215, 32, 3),
('H4', 216, 32, 4),
('H4', 217, 32, 5),
('H4', 218, 32, 6),
('H4', 219, 33, 1),
('H4', 220, 33, 2),
('H4', 221, 33, 3),
('H4', 222, 33, 4),
('H4', 223, 34, 1),
('H4', 224, 34, 2),
('H4', 225, 34, 3),
('H4', 226, 34, 4),
('H4', 227, 34, 5),
('H4', 228, 34, 6),
('H4', 229, 35, 1),
('H4', 230, 35, 2),
('H4', 231, 35, 3),
('H4', 232, 36, 1),
('H4', 233, 36, 2),
('H4', 234, 36, 3),
('H4', 235, 37, 1),
('H4', 236, 37, 2),
('H4', 237, 37, 3),
('H4', 238, 37, 4),
('H4', 239, 38, 1),
('H4', 240, 38, 2),
('H4', 241, 38, 3),
('H4', 242, 38, 4),
('H4', 243, 39, 1),
('H4', 244, 39, 2),
('H4', 245, 39, 3),
('H4', 246, 39, 4),
('H4', 247, 40, 1),
('H4', 248, 40, 2),
('H4', 249, 40, 3),
('H4', 250, 40, 4),
('H4', 251, 40, 5),
('H4', 252, 40, 6),
('H4', 253, 40, 7),
('H4', 254, 40, 8),
('H4', 255, 40, 9),
('H4', 256, 40, 10),
('H4', 257, 40, 11),
('H4', 258, 41, 1),
('H4', 259, 41, 2),
('H4', 260, 41, 3),
('H4', 261, 41, 4),
('H4', 262, 41, 5),
('H4', 263, 41, 6),
('H4', 264, 41, 7),
('H4', 265, 41, 8),
('H4', 266, 41, 9),
('H4', 267, 42, 1),
('H4', 268, 42, 2),
('H4', 269, 42, 3),
('H4', 270, 42, 4),
('H4', 271, 43, 1),
('H4', 272, 43, 2),
('H4', 273, 43, 3),
('H4', 274, 43, 4),
('H4', 275, 44, 1),
('H4', 276, 44, 2),
('H4', 277, 44, 3),
('H4', 278, 44, 4),
('H4', 279, 44, 5),
('H4', 280, 44, 6),
('H4', 281, 44, 7),
('H4', 282, 44, 8),
('H4', 283, 44, 9),
('H4', 284, 44, 10),
('H4', 285, 44, 11),
('H4', 286, 45, 1),
('H4', 287, 45, 2),
('H4', 288, 12, 1),
('H4', 289, 46, 1),
('H4', 290, 46, 2),
('H4', 291, 46, 3),
('H4', 292, 46, 4),
('H4', 293, 46, 5),
('H4', 294, 46, 6),
('H4', 295, 2, 1),
('H4', 296, 47, 1),
('H4', 297, 47, 2),
('H4', 298, 47, 3),
('H4', 299, 48, 1),
('H4', 300, 48, 2),
('H4', 303, 49, 1),
('H4', 304, 49, 2),
('H5', 1, 1, 0),
('H5', 2, 1, 1),
('H5', 3, 1, 2),
('H5', 4, 1, 3),
('H5', 5, 1, 4),
('H5', 6, 1, 5),
('H5', 7, 1, 6),
('H5', 8, 1, 7),
('H5', 9, 1, 8),
('H5', 10, 1, 9),
('H5', 11, 1, 10),
('H5', 12, 2, 0),
('H5', 13, 2, 1),
('H5', 14, 3, 0),
('H5', 15, 3, 1),
('H5', 16, 3, 2),
('H5', 17, 3, 3),
('H5', 18, 3, 4),
('H5', 19, 3, 5),
('H5', 20, 4, 0),
('H5', 21, 4, 1),
('H5', 22, 4, 2),
('H5', 23, 4, 3),
('H5', 24, 4, 4),
('H5', 25, 4, 5),
('H5', 26, 4, 6),
('H5', 27, 4, 7),
('H5', 28, 4, 8),
('H5', 29, 4, 9),
('H5', 30, 4, 10),
('H5', 31, 4, 11),
('H5', 32, 4, 12),
('H5', 33, 5, 0),
('H5', 34, 5, 1),
('H5', 35, 5, 2),
('H5', 36, 5, 3),
('H5', 37, 5, 4),
('H5', 38, 6, 0),
('H5', 39, 6, 1),
('H5', 40, 6, 2),
('H5', 41, 7, 0),
('H5', 42, 7, 1),
('H5', 43, 7, 2),
('H5', 44, 7, 3),
('H5', 45, 7, 4),
('H5', 46, 8, 0),
('H5', 47, 9, 0),
('H5', 48, 9, 1),
('H5', 49, 9, 2),
('H5', 50, 9, 3),
('H5', 51, 10, 0),
('H5', 52, 10, 1),
('H5', 53, 10, 2),
('H5', 54, 10, 3),
('H5', 55, 10, 4),
('H5', 56, 10, 5),
('H5', 57, 10, 6),
('H5', 58, 10, 7),
('H5', 59, 10, 8),
('H5', 60, 11, 0),
('H5', 61, 11, 1),
('H5', 62, 11, 2),
('H5', 63, 11, 3),
('H5', 64, 11, 4),
('H5', 65, 11, 5),
('H5', 66, 11, 6),
('H5', 67, 11, 7),
('H5', 68, 11, 8),
('H5', 69, 11, 9),
('H5', 70, 11, 10),
('H5', 71, 11, 11),
('H5', 72, 11, 12),
('H5', 73, 11, 13),
('H5', 74, 11, 14),
('H5', 75, 11, 15),
('H5', 76, 11, 16),
('H5', 77, 11, 17),
('H5', 78, 11, 18),
('H5', 79, 11, 19),
('H5', 80, 11, 20),
('H5', 81, 11, 21),
('H5', 82, 11, 22),
('H5', 83, 11, 23),
('H5', 84, 11, 24),
('H5', 85, 11, 25),
('H5', 86, 11, 26),
('H5', 87, 11, 27),
('H5', 88, 11, 28),
('H5', 89, 11, 29),
('H5', 90, 11, 30),
('H5', 91, 11, 31),
('H5', 92, 12, 0),
('H5', 93, 12, 1),
('H5', 94, 12, 2),
('H5', 95, 12, 3),
('H5', 96, 12, 4),
('H5', 97, 12, 5),
('H5', 98, 13, 0),
('H5', 99, 13, 1),
('H5', 100, 13, 2),
('H5', 101, 13, 3),
('H5', 102, 13, 4),
('H5', 103, 13, 5),
('H5', 104, 13, 6),
('H5', 105, 13, 7),
('H5', 106, 13, 8),
('H5', 107, 13, 9),
('H5', 108, 13, 10),
('H5', 109, 13, 11),
('H5', 110, 13, 12),
('H5', 111, 14, 0),
('H5', 112, 14, 1),
('H5', 113, 14, 2),
('H5', 114, 14, 3),
('H5', 115, 14, 4),
('H5', 116, 14, 5),
('H5', 117, 14, 6),
('H5', 118, 14, 7),
('H5', 119, 14, 8),
('H5', 120, 14, 9),
('H5', 121, 14, 10),
('H5', 122, 14, 11),
('H5', 123, 15, 0),
('H5', 124, 15, 1),
('H5', 125, 15, 2),
('H5', 126, 15, 3),
('H5', 127, 16, 0),
('H5', 128, 16, 1),
('H5', 129, 16, 2),
('H5', 130, 17, 0),
('H5', 131, 17, 1),
('H5', 132, 17, 2),
('H5', 133, 17, 3),
('H5', 134, 17, 4),
('H5', 135, 18, 0),
('H5', 136, 18, 1),
('H5', 137, 18, 2),
('H5', 138, 18, 3),
('H5', 139, 19, 0),
('H5', 140, 19, 1),
('H5', 141, 19, 2),
('H5', 142, 19, 3),
('H5', 143, 19, 4),
('H5', 144, 20, 0),
('H5', 145, 20, 1),
('H5', 146, 20, 2),
('H5', 147, 20, 3),
('H5', 148, 20, 4),
('H5', 149, 20, 5),
('H5', 150, 21, 0),
('H5', 151, 21, 1),
('H5', 152, 21, 2),
('H5', 153, 21, 3),
('H5', 154, 21, 4),
('H5', 155, 21, 5),
('H5', 156, 21, 6),
('H5', 157, 21, 7),
('H5', 158, 21, 8),
('H5', 159, 21, 9),
('H5', 160, 22, 0),
('H5', 161, 22, 1),
('H5', 162, 22, 2),
('H5', 163, 22, 3),
('H5', 164, 22, 4),
('H5', 165, 22, 5),
('H5', 166, 23, 0),
('H5', 167, 23, 1),
('H5', 168, 23, 2),
('H5', 169, 23, 3),
('H5', 170, 24, 0),
('H5', 171, 24, 1),
('H5', 172, 24, 2),
('H5', 173, 25, 0),
('H5', 174, 25, 1),
('H5', 175, 25, 2),
('H5', 176, 25, 3),
('H5', 177, 25, 4),
('H5', 178, 25, 5),
('H5', 179, 26, 0),
('H5', 180, 26, 1),
('H5', 181, 26, 2),
('H5', 182, 27, 0),
('H5', 183, 27, 1),
('H5', 184, 27, 2),
('H5', 185, 27, 3),
('H5', 186, 28, 0),
('H5', 187, 28, 1),
('H5', 188, 28, 2),
('H5', 189, 28, 3),
('H5', 190, 29, 0),
('H5', 191, 29, 1),
('H5', 192, 29, 2),
('H5', 193, 29, 3),
('H5', 194, 30, 0),
('H5', 195, 30, 1),
('H5', 196, 30, 2),
('H5', 197, 30, 3),
('H5', 198, 30, 4),
('H5', 199, 30, 5),
('H5', 200, 30, 6),
('H5', 201, 30, 7),
('H5', 202, 30, 8),
('H5', 203, 30, 9),
('H5', 204, 30, 10),
('H5', 205, 30, 11),
('H5', 206, 30, 12),
('H5', 207, 30, 13),
('H5', 208, 30, 14),
('H5', 209, 30, 15),
('H5', 210, 31, 1),
('H5', 211, 31, 2),
('H5', 212, 31, 3),
('H5', 213, 32, 1),
('H5', 214, 32, 2),
('H5', 215, 32, 3),
('H5', 216, 32, 4),
('H5', 217, 32, 5),
('H5', 218, 32, 6),
('H5', 219, 33, 1),
('H5', 220, 33, 2),
('H5', 221, 33, 3),
('H5', 222, 33, 4),
('H5', 223, 34, 1),
('H5', 224, 34, 2),
('H5', 225, 34, 3),
('H5', 226, 34, 4),
('H5', 227, 34, 5),
('H5', 228, 34, 6),
('H5', 229, 35, 1),
('H5', 230, 35, 2),
('H5', 231, 35, 3),
('H5', 232, 36, 1),
('H5', 233, 36, 2),
('H5', 234, 36, 3),
('H5', 235, 37, 1),
('H5', 236, 37, 2),
('H5', 237, 37, 3),
('H5', 238, 37, 4),
('H5', 239, 38, 1),
('H5', 240, 38, 2),
('H5', 241, 38, 3),
('H5', 242, 38, 4),
('H5', 243, 39, 1),
('H5', 244, 39, 2),
('H5', 245, 39, 3),
('H5', 246, 39, 4),
('H5', 247, 40, 1),
('H5', 248, 40, 2),
('H5', 249, 40, 3),
('H5', 250, 40, 4),
('H5', 251, 40, 5),
('H5', 252, 40, 6),
('H5', 253, 40, 7),
('H5', 254, 40, 8),
('H5', 255, 40, 9),
('H5', 256, 40, 10),
('H5', 257, 40, 11),
('H5', 258, 41, 1),
('H5', 259, 41, 2),
('H5', 260, 41, 3),
('H5', 261, 41, 4),
('H5', 262, 41, 5),
('H5', 263, 41, 6),
('H5', 264, 41, 7),
('H5', 265, 41, 8),
('H5', 266, 41, 9),
('H5', 267, 42, 1),
('H5', 268, 42, 2),
('H5', 269, 42, 3),
('H5', 270, 42, 4),
('H5', 271, 43, 1),
('H5', 272, 43, 2),
('H5', 273, 43, 3),
('H5', 274, 43, 4),
('H5', 275, 44, 1),
('H5', 276, 44, 2),
('H5', 277, 44, 3),
('H5', 278, 44, 4),
('H5', 279, 44, 5),
('H5', 280, 44, 6),
('H5', 281, 44, 7),
('H5', 282, 44, 8),
('H5', 283, 44, 9),
('H5', 284, 44, 10),
('H5', 285, 44, 11),
('H5', 286, 45, 1),
('H5', 287, 45, 2),
('H5', 288, 12, 1),
('H5', 289, 46, 1),
('H5', 290, 46, 2),
('H5', 291, 46, 3),
('H5', 292, 46, 4),
('H5', 293, 46, 5),
('H5', 294, 46, 6),
('H5', 295, 2, 1),
('H5', 296, 47, 1),
('H5', 297, 47, 2),
('H5', 298, 47, 3),
('H5', 299, 48, 1),
('H5', 300, 48, 2),
('H5', 303, 49, 1),
('H5', 304, 49, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role2profile`
--

CREATE TABLE `vtiger_role2profile` (
  `roleid` varchar(255) NOT NULL,
  `profileid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_role2profile`
--

INSERT INTO `vtiger_role2profile` (`roleid`, `profileid`) VALUES
('H2', 1),
('H3', 2),
('H4', 2),
('H5', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role_seq`
--

CREATE TABLE `vtiger_role_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_role_seq`
--

INSERT INTO `vtiger_role_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rollupcomments_settings`
--

CREATE TABLE `vtiger_rollupcomments_settings` (
  `rollupid` int(19) NOT NULL,
  `userid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `rollup_status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rowheight`
--

CREATE TABLE `vtiger_rowheight` (
  `rowheightid` int(11) NOT NULL,
  `rowheight` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_rowheight`
--

INSERT INTO `vtiger_rowheight` (`rowheightid`, `rowheight`, `sortorderid`, `presence`) VALUES
(1, 'wide', 0, 1),
(2, 'medium', 1, 1),
(3, 'narrow', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rowheight_seq`
--

CREATE TABLE `vtiger_rowheight_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_rowheight_seq`
--

INSERT INTO `vtiger_rowheight_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rss`
--

CREATE TABLE `vtiger_rss` (
  `rssid` int(19) NOT NULL,
  `rssurl` varchar(200) NOT NULL DEFAULT '',
  `rsstitle` varchar(200) DEFAULT NULL,
  `rsstype` int(10) DEFAULT 0,
  `starred` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesmanactivityrel`
--

CREATE TABLE `vtiger_salesmanactivityrel` (
  `smid` int(19) NOT NULL DEFAULT 0,
  `activityid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_salesmanactivityrel`
--

INSERT INTO `vtiger_salesmanactivityrel` (`smid`, `activityid`) VALUES
(1, 6),
(7, 14),
(8, 12),
(10, 34),
(10, 36);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesmanattachmentsrel`
--

CREATE TABLE `vtiger_salesmanattachmentsrel` (
  `smid` int(19) NOT NULL DEFAULT 0,
  `attachmentsid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_salesmanattachmentsrel`
--

INSERT INTO `vtiger_salesmanattachmentsrel` (`smid`, `attachmentsid`) VALUES
(9, 20),
(10, 21);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesmanticketrel`
--

CREATE TABLE `vtiger_salesmanticketrel` (
  `smid` int(19) NOT NULL DEFAULT 0,
  `id` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesorder`
--

CREATE TABLE `vtiger_salesorder` (
  `salesorderid` int(19) NOT NULL DEFAULT 0,
  `subject` varchar(100) DEFAULT NULL,
  `potentialid` int(19) DEFAULT NULL,
  `customerno` varchar(100) DEFAULT NULL,
  `salesorder_no` varchar(100) DEFAULT NULL,
  `quoteid` int(19) DEFAULT NULL,
  `vendorterms` varchar(100) DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `vendorid` int(19) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `pending` varchar(200) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `salescommission` decimal(25,3) DEFAULT NULL,
  `exciseduty` decimal(25,3) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `terms_conditions` text DEFAULT NULL,
  `purchaseorder` varchar(200) DEFAULT NULL,
  `sostatus` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT 1.000,
  `enable_recurring` int(11) DEFAULT 0,
  `compound_taxes_info` text DEFAULT NULL,
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `region_id` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesordercf`
--

CREATE TABLE `vtiger_salesordercf` (
  `salesorderid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sales_stage`
--

CREATE TABLE `vtiger_sales_stage` (
  `sales_stage_id` int(19) NOT NULL,
  `sales_stage` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_sales_stage`
--

INSERT INTO `vtiger_sales_stage` (`sales_stage_id`, `sales_stage`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Prospecting', 1, 150, 0, NULL),
(2, 'Qualification', 1, 151, 1, NULL),
(3, 'Needs Analysis', 1, 152, 2, NULL),
(4, 'Value Proposition', 1, 153, 3, NULL),
(5, 'Id. Decision Makers', 1, 154, 4, NULL),
(6, 'Perception Analysis', 1, 155, 5, NULL),
(7, 'Proposal or Price Quote', 1, 156, 6, NULL),
(8, 'Negotiation or Review', 1, 157, 7, NULL),
(9, 'Closed Won', 0, 158, 8, NULL),
(10, 'Closed Lost', 0, 159, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sales_stage_seq`
--

CREATE TABLE `vtiger_sales_stage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_sales_stage_seq`
--

INSERT INTO `vtiger_sales_stage_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salutationtype`
--

CREATE TABLE `vtiger_salutationtype` (
  `salutationid` int(19) NOT NULL,
  `salutationtype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_salutationtype`
--

INSERT INTO `vtiger_salutationtype` (`salutationid`, `salutationtype`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Mr.', 1, 161, 1, NULL),
(3, 'Ms.', 1, 162, 2, NULL),
(4, 'Mrs.', 1, 163, 3, NULL),
(5, 'Dr.', 1, 164, 4, NULL),
(6, 'Prof.', 1, 165, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salutationtype_seq`
--

CREATE TABLE `vtiger_salutationtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_salutationtype_seq`
--

INSERT INTO `vtiger_salutationtype_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_scheduled_reports`
--

CREATE TABLE `vtiger_scheduled_reports` (
  `reportid` int(11) NOT NULL,
  `recipients` text DEFAULT NULL,
  `schedule` text DEFAULT NULL,
  `format` varchar(10) DEFAULT NULL,
  `next_trigger_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_schedulereports`
--

CREATE TABLE `vtiger_schedulereports` (
  `reportid` int(10) DEFAULT NULL,
  `scheduleid` int(3) DEFAULT NULL,
  `recipients` text DEFAULT NULL,
  `schdate` varchar(20) DEFAULT NULL,
  `schtime` time DEFAULT NULL,
  `schdayoftheweek` varchar(100) DEFAULT NULL,
  `schdayofthemonth` varchar(100) DEFAULT NULL,
  `schannualdates` varchar(500) DEFAULT NULL,
  `specificemails` varchar(500) DEFAULT NULL,
  `next_trigger_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `fileformat` varchar(10) DEFAULT 'CSV'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seactivityrel`
--

CREATE TABLE `vtiger_seactivityrel` (
  `crmid` int(19) NOT NULL,
  `activityid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_seactivityrel`
--

INSERT INTO `vtiger_seactivityrel` (`crmid`, `activityid`) VALUES
(4, 6),
(11, 12),
(13, 14),
(13, 18),
(31, 34),
(31, 36);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seactivityrel_seq`
--

CREATE TABLE `vtiger_seactivityrel_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_seactivityrel_seq`
--

INSERT INTO `vtiger_seactivityrel_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seattachmentsrel`
--

CREATE TABLE `vtiger_seattachmentsrel` (
  `crmid` int(19) NOT NULL DEFAULT 0,
  `attachmentsid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_seattachmentsrel`
--

INSERT INTO `vtiger_seattachmentsrel` (`crmid`, `attachmentsid`) VALUES
(18, 19);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_selectcolumn`
--

CREATE TABLE `vtiger_selectcolumn` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL DEFAULT 0,
  `columnname` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_selectcolumn`
--

INSERT INTO `vtiger_selectcolumn` (`queryid`, `columnindex`, `columnname`) VALUES
(1, 0, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(1, 1, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(1, 2, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(1, 3, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),
(1, 4, 'vtiger_account:industry:Accounts_industry:industry:V'),
(1, 5, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(2, 0, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(2, 1, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(2, 2, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(2, 3, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),
(2, 4, 'vtiger_account:industry:Accounts_industry:industry:V'),
(2, 5, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(3, 0, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(3, 1, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(3, 2, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),
(3, 3, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(3, 4, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),
(3, 5, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),
(4, 0, 'vtiger_leaddetails:firstname:Leads_First_Name:firstname:V'),
(4, 1, 'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),
(4, 2, 'vtiger_leaddetails:company:Leads_Company:company:V'),
(4, 3, 'vtiger_leaddetails:email:Leads_Email:email:E'),
(4, 4, 'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V'),
(5, 0, 'vtiger_leaddetails:firstname:Leads_First_Name:firstname:V'),
(5, 1, 'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),
(5, 2, 'vtiger_leaddetails:company:Leads_Company:company:V'),
(5, 3, 'vtiger_leaddetails:email:Leads_Email:email:E'),
(5, 4, 'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V'),
(5, 5, 'vtiger_leaddetails:leadstatus:Leads_Lead_Status:leadstatus:V'),
(6, 0, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),
(6, 1, 'vtiger_potential:amount:Potentials_Amount:amount:N'),
(6, 2, 'vtiger_potential:potentialtype:Potentials_Type:opportunity_type:V'),
(6, 3, 'vtiger_potential:leadsource:Potentials_Lead_Source:leadsource:V'),
(6, 4, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),
(7, 0, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),
(7, 1, 'vtiger_potential:amount:Potentials_Amount:amount:N'),
(7, 2, 'vtiger_potential:potentialtype:Potentials_Type:opportunity_type:V'),
(7, 3, 'vtiger_potential:leadsource:Potentials_Lead_Source:leadsource:V'),
(7, 4, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),
(8, 0, 'vtiger_activity:subject:Calendar_Subject:subject:V'),
(8, 1, 'vtiger_contactdetailsCalendar:lastname:Calendar_Contact_Name:contact_id:I'),
(8, 2, 'vtiger_activity:status:Calendar_Status:taskstatus:V'),
(8, 3, 'vtiger_activity:priority:Calendar_Priority:taskpriority:V'),
(8, 4, 'vtiger_usersCalendar:user_name:Calendar_Assigned_To:assigned_user_id:V'),
(9, 0, 'vtiger_activity:subject:Calendar_Subject:subject:V'),
(9, 1, 'vtiger_contactdetailsCalendar:lastname:Calendar_Contact_Name:contact_id:I'),
(9, 2, 'vtiger_activity:status:Calendar_Status:taskstatus:V'),
(9, 3, 'vtiger_activity:priority:Calendar_Priority:taskpriority:V'),
(9, 4, 'vtiger_usersCalendar:user_name:Calendar_Assigned_To:assigned_user_id:V'),
(10, 0, 'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),
(10, 1, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),
(10, 2, 'vtiger_products:productname:Products_Product_Name:productname:V'),
(10, 3, 'vtiger_products:discontinued:Products_Product_Active:discontinued:V'),
(10, 4, 'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),
(10, 5, 'vtiger_products:manufacturer:Products_Manufacturer:manufacturer:V'),
(11, 0, 'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),
(11, 1, 'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V'),
(11, 2, 'vtiger_troubletickets:severity:HelpDesk_Severity:ticketseverities:V'),
(11, 3, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),
(11, 4, 'vtiger_troubletickets:category:HelpDesk_Category:ticketcategories:V'),
(11, 5, 'vtiger_usersHelpDesk:user_name:HelpDesk_Assigned_To:assigned_user_id:V'),
(12, 0, 'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),
(12, 1, 'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V'),
(12, 2, 'vtiger_troubletickets:severity:HelpDesk_Severity:ticketseverities:V'),
(12, 3, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),
(12, 4, 'vtiger_troubletickets:category:HelpDesk_Category:ticketcategories:V'),
(12, 5, 'vtiger_usersHelpDesk:user_name:HelpDesk_Assigned_To:assigned_user_id:V'),
(13, 0, 'vtiger_products:productname:Products_Product_Name:productname:V'),
(13, 1, 'vtiger_products:productcode:Products_Product_Code:productcode:V'),
(13, 2, 'vtiger_products:discontinued:Products_Product_Active:discontinued:V'),
(13, 3, 'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),
(13, 4, 'vtiger_products:website:Products_Website:website:V'),
(13, 5, 'vtiger_vendorRelProducts:vendorname:Products_Vendor_Name:vendor_id:I'),
(13, 6, 'vtiger_products:mfr_part_no:Products_Mfr_PartNo:mfr_part_no:V'),
(14, 0, 'vtiger_products:productname:Products_Product_Name:productname:V'),
(14, 1, 'vtiger_products:manufacturer:Products_Manufacturer:manufacturer:V'),
(14, 2, 'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),
(14, 3, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(14, 4, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(14, 5, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(15, 0, 'vtiger_quotes:subject:Quotes_Subject:subject:V'),
(15, 1, 'vtiger_potentialRelQuotes:potentialname:Quotes_Potential_Name:potential_id:I'),
(15, 2, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V'),
(15, 3, 'vtiger_quotes:contactid:Quotes_Contact_Name:contact_id:V'),
(15, 4, 'vtiger_usersRel1:user_name:Quotes_Inventory_Manager:assigned_user_id1:I'),
(15, 5, 'vtiger_accountQuotes:accountname:Quotes_Account_Name:account_id:I'),
(16, 0, 'vtiger_quotes:subject:Quotes_Subject:subject:V'),
(16, 1, 'vtiger_potentialRelQuotes:potentialname:Quotes_Potential_Name:potential_id:I'),
(16, 2, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V'),
(16, 3, 'vtiger_quotes:contactid:Quotes_Contact_Name:contact_id:V'),
(16, 4, 'vtiger_usersRel1:user_name:Quotes_Inventory_Manager:assigned_user_id1:I'),
(16, 5, 'vtiger_accountQuotes:accountname:Quotes_Account_Name:account_id:I'),
(16, 6, 'vtiger_quotes:carrier:Quotes_Carrier:carrier:V'),
(16, 7, 'vtiger_quotes:shipping:Quotes_Shipping:shipping:V'),
(17, 0, 'vtiger_purchaseorder:subject:PurchaseOrder_Subject:subject:V'),
(17, 1, 'vtiger_vendorRelPurchaseOrder:vendorname:PurchaseOrder_Vendor_Name:vendor_id:I'),
(17, 2, 'vtiger_purchaseorder:tracking_no:PurchaseOrder_Tracking_Number:tracking_no:V'),
(17, 3, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(17, 4, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(17, 5, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(17, 6, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(18, 0, 'vtiger_purchaseorder:subject:PurchaseOrder_Subject:subject:V'),
(18, 1, 'vtiger_vendorRelPurchaseOrder:vendorname:PurchaseOrder_Vendor_Name:vendor_id:I'),
(18, 2, 'vtiger_purchaseorder:requisition_no:PurchaseOrder_Requisition_No:requisition_no:V'),
(18, 3, 'vtiger_purchaseorder:tracking_no:PurchaseOrder_Tracking_Number:tracking_no:V'),
(18, 4, 'vtiger_contactdetailsPurchaseOrder:lastname:PurchaseOrder_Contact_Name:contact_id:I'),
(18, 5, 'vtiger_purchaseorder:carrier:PurchaseOrder_Carrier:carrier:V'),
(18, 6, 'vtiger_purchaseorder:salescommission:PurchaseOrder_Sales_Commission:salescommission:N'),
(18, 7, 'vtiger_purchaseorder:exciseduty:PurchaseOrder_Excise_Duty:exciseduty:N'),
(18, 8, 'vtiger_usersPurchaseOrder:user_name:PurchaseOrder_Assigned_To:assigned_user_id:V'),
(19, 0, 'vtiger_invoice:subject:Invoice_Subject:subject:V'),
(19, 1, 'vtiger_invoice:salesorderid:Invoice_Sales_Order:salesorder_id:I'),
(19, 2, 'vtiger_invoice:customerno:Invoice_Customer_No:customerno:V'),
(19, 3, 'vtiger_invoice:exciseduty:Invoice_Excise_Duty:exciseduty:N'),
(19, 4, 'vtiger_invoice:salescommission:Invoice_Sales_Commission:salescommission:N'),
(19, 5, 'vtiger_accountInvoice:accountname:Invoice_Account_Name:account_id:I'),
(20, 0, 'vtiger_salesorder:subject:SalesOrder_Subject:subject:V'),
(20, 1, 'vtiger_quotesSalesOrder:subject:SalesOrder_Quote_Name:quote_id:I'),
(20, 2, 'vtiger_contactdetailsSalesOrder:lastname:SalesOrder_Contact_Name:contact_id:I'),
(20, 3, 'vtiger_salesorder:duedate:SalesOrder_Due_Date:duedate:D'),
(20, 4, 'vtiger_salesorder:carrier:SalesOrder_Carrier:carrier:V'),
(20, 5, 'vtiger_salesorder:sostatus:SalesOrder_Status:sostatus:V'),
(20, 6, 'vtiger_accountSalesOrder:accountname:SalesOrder_Account_Name:account_id:I'),
(20, 7, 'vtiger_salesorder:salescommission:SalesOrder_Sales_Commission:salescommission:N'),
(20, 8, 'vtiger_salesorder:exciseduty:SalesOrder_Excise_Duty:exciseduty:N'),
(20, 9, 'vtiger_usersSalesOrder:user_name:SalesOrder_Assigned_To:assigned_user_id:V'),
(21, 0, 'vtiger_campaign:campaignname:Campaigns_Campaign_Name:campaignname:V'),
(21, 1, 'vtiger_campaign:campaigntype:Campaigns_Campaign_Type:campaigntype:V'),
(21, 2, 'vtiger_campaign:targetaudience:Campaigns_Target_Audience:targetaudience:V'),
(21, 3, 'vtiger_campaign:budgetcost:Campaigns_Budget_Cost:budgetcost:I'),
(21, 4, 'vtiger_campaign:actualcost:Campaigns_Actual_Cost:actualcost:I'),
(21, 5, 'vtiger_campaign:expectedrevenue:Campaigns_Expected_Revenue:expectedrevenue:I'),
(21, 6, 'vtiger_campaign:expectedsalescount:Campaigns_Expected_Sales_Count:expectedsalescount:N'),
(21, 7, 'vtiger_campaign:actualsalescount:Campaigns_Actual_Sales_Count:actualsalescount:N'),
(21, 8, 'vtiger_usersCampaigns:user_name:Campaigns_Assigned_To:assigned_user_id:V'),
(22, 0, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(22, 1, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(22, 2, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(22, 3, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I'),
(23, 0, 'vtiger_account:accountname:Accounts_Account_Name:accountname:V'),
(23, 1, 'vtiger_account:phone:Accounts_Phone:phone:V'),
(23, 2, 'vtiger_account:email1:Accounts_Email:email1:E'),
(23, 3, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(23, 4, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I'),
(24, 0, 'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),
(24, 1, 'vtiger_leaddetails:company:Leads_Company:company:V'),
(24, 2, 'vtiger_leaddetails:email:Leads_Email:email:E'),
(24, 3, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(24, 4, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I'),
(25, 0, 'vtiger_vendor:vendorname:Vendors_Vendor_Name:vendorname:V'),
(25, 1, 'vtiger_vendor:glacct:Vendors_GL_Account:glacct:V'),
(25, 2, 'vtiger_vendor:email:Vendors_Email:email:E'),
(25, 3, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(25, 4, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:I');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_selectquery`
--

CREATE TABLE `vtiger_selectquery` (
  `queryid` int(19) NOT NULL,
  `startindex` int(19) DEFAULT 0,
  `numofobjects` int(19) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_selectquery`
--

INSERT INTO `vtiger_selectquery` (`queryid`, `startindex`, `numofobjects`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 0, 0),
(23, 0, 0),
(24, 0, 0),
(25, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_selectquery_seq`
--

CREATE TABLE `vtiger_selectquery_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_selectquery_seq`
--

INSERT INTO `vtiger_selectquery_seq` (`id`) VALUES
(25);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_senotesrel`
--

CREATE TABLE `vtiger_senotesrel` (
  `crmid` int(19) NOT NULL DEFAULT 0,
  `notesid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seproductsrel`
--

CREATE TABLE `vtiger_seproductsrel` (
  `crmid` int(19) NOT NULL DEFAULT 0,
  `productid` int(19) NOT NULL DEFAULT 0,
  `setype` varchar(30) NOT NULL,
  `quantity` int(19) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_service`
--

CREATE TABLE `vtiger_service` (
  `serviceid` int(11) NOT NULL,
  `service_no` varchar(100) NOT NULL,
  `servicename` varchar(50) NOT NULL,
  `servicecategory` varchar(200) DEFAULT NULL,
  `qty_per_unit` decimal(11,2) DEFAULT 0.00,
  `unit_price` decimal(25,8) DEFAULT NULL,
  `sales_start_date` date DEFAULT NULL,
  `sales_end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `discontinued` int(1) NOT NULL DEFAULT 0,
  `service_usageunit` varchar(200) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `taxclass` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `commissionrate` decimal(7,3) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL,
  `purchase_cost` decimal(27,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecategory`
--

CREATE TABLE `vtiger_servicecategory` (
  `servicecategoryid` int(11) NOT NULL,
  `servicecategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_servicecategory`
--

INSERT INTO `vtiger_servicecategory` (`servicecategoryid`, `servicecategory`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Support', 1, 214, 2, NULL),
(3, 'Installation', 1, 215, 3, NULL),
(4, 'Migration', 1, 216, 4, NULL),
(5, 'Customization', 1, 217, 5, NULL),
(6, 'Training', 1, 218, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecategory_seq`
--

CREATE TABLE `vtiger_servicecategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_servicecategory_seq`
--

INSERT INTO `vtiger_servicecategory_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecf`
--

CREATE TABLE `vtiger_servicecf` (
  `serviceid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecontracts`
--

CREATE TABLE `vtiger_servicecontracts` (
  `servicecontractsid` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `sc_related_to` int(11) DEFAULT NULL,
  `tracking_unit` varchar(100) DEFAULT NULL,
  `total_units` decimal(5,2) DEFAULT NULL,
  `used_units` decimal(5,2) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `planned_duration` varchar(256) DEFAULT NULL,
  `actual_duration` varchar(256) DEFAULT NULL,
  `contract_status` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `contract_type` varchar(200) DEFAULT NULL,
  `progress` decimal(5,2) DEFAULT NULL,
  `contract_no` varchar(100) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecontractscf`
--

CREATE TABLE `vtiger_servicecontractscf` (
  `servicecontractsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_service_usageunit`
--

CREATE TABLE `vtiger_service_usageunit` (
  `service_usageunitid` int(11) NOT NULL,
  `service_usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_service_usageunit`
--

INSERT INTO `vtiger_service_usageunit` (`service_usageunitid`, `service_usageunit`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Hours', 1, 210, 1, NULL),
(2, 'Days', 1, 211, 2, NULL),
(3, 'Incidents', 1, 212, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_service_usageunit_seq`
--

CREATE TABLE `vtiger_service_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_service_usageunit_seq`
--

INSERT INTO `vtiger_service_usageunit_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seticketsrel`
--

CREATE TABLE `vtiger_seticketsrel` (
  `crmid` int(19) NOT NULL DEFAULT 0,
  `ticketid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_blocks`
--

CREATE TABLE `vtiger_settings_blocks` (
  `blockid` int(19) NOT NULL,
  `label` varchar(250) DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_settings_blocks`
--

INSERT INTO `vtiger_settings_blocks` (`blockid`, `label`, `sequence`) VALUES
(1, 'LBL_USER_MANAGEMENT', 1),
(4, 'LBL_OTHER_SETTINGS', 10),
(5, 'LBL_MODULE_MANAGER', 2),
(6, 'LBL_INTEGRATION', 8),
(7, 'LBL_AUTOMATION', 3),
(8, 'LBL_CONFIGURATION', 4),
(9, 'LBL_MARKETING_SALES', 5),
(10, 'LBL_INVENTORY', 6),
(11, 'LBL_MY_PREFERENCES', 7),
(12, 'LBL_EXTENSIONS', 9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_blocks_seq`
--

CREATE TABLE `vtiger_settings_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_settings_blocks_seq`
--

INSERT INTO `vtiger_settings_blocks_seq` (`id`) VALUES
(12);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_field`
--

CREATE TABLE `vtiger_settings_field` (
  `fieldid` int(19) NOT NULL,
  `blockid` int(19) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `iconpath` varchar(300) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `linkto` text DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL,
  `active` int(19) DEFAULT 0,
  `pinned` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_settings_field`
--

INSERT INTO `vtiger_settings_field` (`fieldid`, `blockid`, `name`, `iconpath`, `description`, `linkto`, `sequence`, `active`, `pinned`) VALUES
(1, 1, 'LBL_USERS', 'ico-users.gif', 'LBL_USER_DESCRIPTION', 'index.php?module=Users&parent=Settings&view=List', 1, 0, 1),
(2, 1, 'LBL_ROLES', 'ico-roles.gif', 'LBL_ROLE_DESCRIPTION', 'index.php?module=Roles&parent=Settings&view=Index', 2, 0, 0),
(3, 1, 'LBL_PROFILES', 'ico-profile.gif', 'LBL_PROFILE_DESCRIPTION', 'index.php?module=Profiles&parent=Settings&view=List', 3, 0, 0),
(4, 1, 'USERGROUPLIST', 'ico-groups.gif', 'LBL_GROUP_DESCRIPTION', 'index.php?module=Groups&parent=Settings&view=List', 5, 0, 0),
(5, 1, 'LBL_SHARING_ACCESS', 'shareaccess.gif', 'LBL_SHARING_ACCESS_DESCRIPTION', 'index.php?module=SharingAccess&parent=Settings&view=Index', 4, 0, 0),
(7, 1, 'LBL_LOGIN_HISTORY_DETAILS', 'set-IcoLoginHistory.gif', 'LBL_LOGIN_HISTORY_DESCRIPTION', 'index.php?module=LoginHistory&parent=Settings&view=List', 6, 0, 0),
(8, 5, 'VTLIB_LBL_MODULE_MANAGER', 'vtlib_modmng.gif', 'VTLIB_LBL_MODULE_MANAGER_DESCRIPTION', 'index.php?module=ModuleManager&parent=Settings&view=List', 1, 0, 1),
(9, 8, 'LBL_PICKLIST_EDITOR', 'picklist.gif', 'LBL_PICKLIST_DESCRIPTION', 'index.php?parent=Settings&module=Picklist&view=Index', 6, 0, 1),
(10, 8, 'LBL_PICKLIST_DEPENDENCY', 'picklistdependency.gif', 'LBL_PICKLIST_DEPENDENCY_DESCRIPTION', 'index.php?parent=Settings&module=PickListDependency&view=List', 7, 0, 0),
(11, 8, 'LBL_MENU_EDITOR', 'menueditor.png', 'LBL_MENU_DESC', 'index.php?module=MenuEditor&parent=Settings&view=Index', 8, 0, 0),
(14, 8, 'LBL_COMPANY_DETAILS', 'company.gif', 'LBL_COMPANY_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=CompanyDetails', 1, 0, 0),
(15, 8, 'LBL_MAIL_SERVER_SETTINGS', 'ogmailserver.gif', 'LBL_MAIL_SERVER_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=OutgoingServerDetail', 4, 0, 0),
(16, 8, 'LBL_CURRENCY_SETTINGS', 'currency.gif', 'LBL_CURRENCY_DESCRIPTION', 'index.php?parent=Settings&module=Currency&view=List', 3, 0, 0),
(17, 10, 'LBL_TAX_SETTINGS', 'taxConfiguration.gif', 'LBL_TAX_DESCRIPTION', 'index.php?module=Vtiger&parent=Settings&view=TaxIndex', 1, 0, 0),
(18, 4, 'LBL_SYSTEM_INFO', 'system.gif', 'LBL_SYSTEM_DESCRIPTION', 'index.php?module=Settings&submodule=Server&view=ProxyConfig', 6, 1, 0),
(20, 4, 'LBL_DEFAULT_MODULE_VIEW', 'set-IcoTwoTabConfig.gif', 'LBL_DEFAULT_MODULE_VIEW_DESC', 'index.php?module=Settings&action=DefModuleView&parenttab=Settings', 2, 0, 0),
(21, 10, 'INVENTORYTERMSANDCONDITIONS', 'terms.gif', 'LBL_INV_TANDC_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=TermsAndConditionsEdit', 2, 0, 0),
(22, 5, 'LBL_CUSTOMIZE_MODENT_NUMBER', 'settingsInvNumber.gif', 'LBL_CUSTOMIZE_MODENT_NUMBER_DESCRIPTION', 'index.php?module=Vtiger&parent=Settings&view=CustomRecordNumbering', 4, 0, 0),
(23, 4, 'LBL_MAIL_SCANNER', 'mailScanner.gif', 'LBL_MAIL_SCANNER_DESCRIPTION', 'index.php?parent=Settings&module=MailConverter&view=List', 5, 0, 1),
(24, 7, 'LBL_LIST_WORKFLOWS', 'settingsWorkflow.png', 'LBL_LIST_WORKFLOWS_DESCRIPTION', 'index.php?module=Workflows&parent=Settings&view=List', 3, 0, 1),
(25, 8, 'Configuration Editor', 'migrate.gif', 'LBL_CONFIG_EDITOR_DESCRIPTION', 'index.php?module=Vtiger&parent=Settings&view=ConfigEditorDetail', 5, 0, 0),
(26, 7, 'Scheduler', 'Cron.png', 'Allows you to Configure Cron Task', 'index.php?module=CronTasks&parent=Settings&view=List', 2, 0, 0),
(28, 4, 'ModTracker', 'set-IcoLoginHistory.gif', 'LBL_MODTRACKER_DESCRIPTION', 'index.php?module=ModTracker&action=BasicSettings&parenttab=Settings&formodule=ModTracker', 9, 0, 0),
(29, 6, 'LBL_PBXMANAGER', '', 'PBXManager module Configuration', 'index.php?module=PBXManager&parent=Settings&view=Index', 2, 0, 0),
(30, 7, 'Webforms', 'modules/Webforms/img/Webform.png', 'LBL_WEBFORMS_DESCRIPTION', 'index.php?module=Webforms&parent=Settings&view=List', 1, 0, 0),
(31, 8, 'LBL_CUSTOMER_PORTAL', 'portal_icon.png', 'PORTAL_EXTENSION_DESCRIPTION', 'index.php?module=CustomerPortal&parent=Settings&view=Index', 2, 0, 0),
(32, 5, 'LBL_EDIT_FIELDS', '', 'LBL_LAYOUT_EDITOR_DESCRIPTION', 'index.php?module=LayoutEditor&parent=Settings&view=Index', 2, 0, 0),
(33, 9, 'LBL_LEAD_MAPPING', 'NULL', 'NULL', 'index.php?parent=Settings&module=Leads&view=MappingDetail', 1, 0, 1),
(34, 9, 'LBL_OPPORTUNITY_MAPPING', 'NULL', 'NULL', 'index.php?parent=Settings&module=Potentials&view=MappingDetail', 2, 0, 1),
(35, 11, 'My Preferences', 'NULL', 'NULL', 'index.php?module=Users&view=PreferenceDetail&parent=Settings&record=1', 1, 0, 1),
(36, 11, 'Calendar Settings', 'NULL', 'NULL', 'index.php?module=Users&parent=Settings&view=Calendar&record=1', 2, 0, 1),
(37, 11, 'LBL_MY_TAGS', 'NULL', 'NULL', 'index.php?module=Tags&parent=Settings&view=List&record=1', 3, 0, 1),
(38, 12, 'LBL_EXTENSION_STORE', 'NULL', 'NULL', 'index.php?module=ExtensionStore&parent=Settings&view=ExtensionStore', 1, 0, 1),
(39, 12, 'LBL_GOOGLE', 'NULL', 'NULL', 'index.php?module=Contacts&parent=Settings&view=Extension&extensionModule=Google&extensionView=Index&mode=settings', 2, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_field_seq`
--

CREATE TABLE `vtiger_settings_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_settings_field_seq`
--

INSERT INTO `vtiger_settings_field_seq` (`id`) VALUES
(39);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sharedcalendar`
--

CREATE TABLE `vtiger_sharedcalendar` (
  `userid` int(19) NOT NULL,
  `sharedid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shareduserinfo`
--

CREATE TABLE `vtiger_shareduserinfo` (
  `userid` int(19) NOT NULL DEFAULT 0,
  `shareduserid` int(19) NOT NULL DEFAULT 0,
  `color` varchar(50) DEFAULT NULL,
  `visible` int(19) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shippingtaxinfo`
--

CREATE TABLE `vtiger_shippingtaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) DEFAULT NULL,
  `taxlabel` varchar(50) DEFAULT NULL,
  `percentage` decimal(7,3) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `compoundon` varchar(400) DEFAULT NULL,
  `regions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_shippingtaxinfo`
--

INSERT INTO `vtiger_shippingtaxinfo` (`taxid`, `taxname`, `taxlabel`, `percentage`, `deleted`, `method`, `type`, `compoundon`, `regions`) VALUES
(1, 'shtax1', 'VAT', '4.500', 0, 'Simple', 'Fixed', '[]', '[]'),
(2, 'shtax2', 'Sales', '10.000', 0, 'Simple', 'Fixed', '[]', '[]'),
(3, 'shtax3', 'Service', '12.500', 0, 'Simple', 'Fixed', '[]', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shippingtaxinfo_seq`
--

CREATE TABLE `vtiger_shippingtaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_shippingtaxinfo_seq`
--

INSERT INTO `vtiger_shippingtaxinfo_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shorturls`
--

CREATE TABLE `vtiger_shorturls` (
  `id` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `handler_path` varchar(400) DEFAULT NULL,
  `handler_class` varchar(100) DEFAULT NULL,
  `handler_function` varchar(100) DEFAULT NULL,
  `handler_data` varchar(255) DEFAULT NULL,
  `onetime` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_shorturls`
--

INSERT INTO `vtiger_shorturls` (`id`, `uid`, `handler_path`, `handler_class`, `handler_function`, `handler_data`, `onetime`) VALUES
(1, '6009a2ca9d10d9.18839099', 'modules/Emails/handlers/ViewInBrowser.php', 'Emails_ViewInBrowser_Handler', 'viewInBrowser', '{\"emailId\":18,\"parentModule\":\"Accounts\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifier`
--

CREATE TABLE `vtiger_smsnotifier` (
  `smsnotifierid` int(19) NOT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifiercf`
--

CREATE TABLE `vtiger_smsnotifiercf` (
  `smsnotifierid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifier_servers`
--

CREATE TABLE `vtiger_smsnotifier_servers` (
  `id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `isactive` int(1) DEFAULT NULL,
  `providertype` varchar(50) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifier_status`
--

CREATE TABLE `vtiger_smsnotifier_status` (
  `smsnotifierid` int(19) DEFAULT NULL,
  `tonumber` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `smsmessageid` varchar(50) DEFAULT NULL,
  `needlookup` int(1) DEFAULT 1,
  `statusid` int(11) NOT NULL,
  `statusmessage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_soapservice`
--

CREATE TABLE `vtiger_soapservice` (
  `id` int(19) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `sessionid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sobillads`
--

CREATE TABLE `vtiger_sobillads` (
  `sobilladdressid` int(19) NOT NULL DEFAULT 0,
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_soshipads`
--

CREATE TABLE `vtiger_soshipads` (
  `soshipaddressid` int(19) NOT NULL DEFAULT 0,
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sostatus`
--

CREATE TABLE `vtiger_sostatus` (
  `sostatusid` int(19) NOT NULL,
  `sostatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_sostatus`
--

INSERT INTO `vtiger_sostatus` (`sostatusid`, `sostatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Created', 0, 166, 0, NULL),
(2, 'Approved', 0, 167, 1, NULL),
(3, 'Delivered', 0, 168, 2, NULL),
(4, 'Cancelled', 0, 169, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sostatushistory`
--

CREATE TABLE `vtiger_sostatushistory` (
  `historyid` int(19) NOT NULL,
  `salesorderid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `sostatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sostatus_seq`
--

CREATE TABLE `vtiger_sostatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_sostatus_seq`
--

INSERT INTO `vtiger_sostatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sqltimelog`
--

CREATE TABLE `vtiger_sqltimelog` (
  `id` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `started` decimal(20,6) DEFAULT NULL,
  `ended` decimal(20,6) DEFAULT NULL,
  `loggedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_start_hour`
--

CREATE TABLE `vtiger_start_hour` (
  `start_hourid` int(11) NOT NULL,
  `start_hour` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_start_hour`
--

INSERT INTO `vtiger_start_hour` (`start_hourid`, `start_hour`, `sortorderid`, `presence`) VALUES
(1, '00:00', 0, 1),
(2, '01:00', 1, 1),
(3, '02:00', 2, 1),
(4, '03:00', 3, 1),
(5, '04:00', 4, 1),
(6, '05:00', 5, 1),
(7, '06:00', 6, 1),
(8, '07:00', 7, 1),
(9, '08:00', 8, 1),
(10, '09:00', 9, 1),
(11, '10:00', 10, 1),
(12, '11:00', 11, 1),
(13, '12:00', 12, 1),
(14, '13:00', 13, 1),
(15, '14:00', 14, 1),
(16, '15:00', 15, 1),
(17, '16:00', 16, 1),
(18, '17:00', 17, 1),
(19, '18:00', 18, 1),
(20, '19:00', 19, 1),
(21, '20:00', 20, 1),
(22, '21:00', 21, 1),
(23, '22:00', 22, 1),
(24, '23:00', 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_start_hour_seq`
--

CREATE TABLE `vtiger_start_hour_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_start_hour_seq`
--

INSERT INTO `vtiger_start_hour_seq` (`id`) VALUES
(24);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_status`
--

CREATE TABLE `vtiger_status` (
  `statusid` int(19) NOT NULL,
  `status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_status`
--

INSERT INTO `vtiger_status` (`statusid`, `status`, `presence`, `picklist_valueid`) VALUES
(1, 'Active', 0, 1),
(2, 'Inactive', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_status_seq`
--

CREATE TABLE `vtiger_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_status_seq`
--

INSERT INTO `vtiger_status_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_systems`
--

CREATE TABLE `vtiger_systems` (
  `id` int(19) NOT NULL,
  `server` varchar(100) DEFAULT NULL,
  `server_port` int(19) DEFAULT NULL,
  `server_username` varchar(100) DEFAULT NULL,
  `server_password` text DEFAULT NULL,
  `server_type` varchar(20) DEFAULT NULL,
  `smtp_auth` varchar(5) DEFAULT NULL,
  `server_path` varchar(256) DEFAULT NULL,
  `from_email_field` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tab`
--

CREATE TABLE `vtiger_tab` (
  `tabid` int(19) NOT NULL DEFAULT 0,
  `name` varchar(25) NOT NULL,
  `presence` int(19) NOT NULL DEFAULT 1,
  `tabsequence` int(10) DEFAULT NULL,
  `tablabel` varchar(100) DEFAULT NULL,
  `modifiedby` int(19) DEFAULT NULL,
  `modifiedtime` int(19) DEFAULT NULL,
  `customized` int(19) DEFAULT NULL,
  `ownedby` int(19) DEFAULT NULL,
  `isentitytype` int(11) NOT NULL DEFAULT 1,
  `trial` int(1) NOT NULL DEFAULT 0,
  `version` varchar(10) DEFAULT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `source` varchar(255) DEFAULT 'custom',
  `issyncable` tinyint(1) DEFAULT 0,
  `allowduplicates` tinyint(1) DEFAULT 1,
  `sync_action_for_duplicates` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_tab`
--

INSERT INTO `vtiger_tab` (`tabid`, `name`, `presence`, `tabsequence`, `tablabel`, `modifiedby`, `modifiedtime`, `customized`, `ownedby`, `isentitytype`, `trial`, `version`, `parent`, `source`, `issyncable`, `allowduplicates`, `sync_action_for_duplicates`) VALUES
(1, 'Dashboard', 0, 12, 'Dashboards', NULL, NULL, 0, 1, 0, 0, NULL, 'Analytics', NULL, 1, 1, 1),
(2, 'Potentials', 0, 7, 'Potentials', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 1, 1),
(3, 'Home', 0, 1, 'Home', NULL, NULL, 0, 1, 0, 0, NULL, NULL, NULL, 1, 1, 1),
(4, 'Contacts', 0, 6, 'Contacts', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 1, 1),
(6, 'Accounts', 0, 5, 'Accounts', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 0, 1),
(7, 'Leads', 0, 4, 'Leads', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 1, 1),
(8, 'Documents', 0, 9, 'Documents', NULL, NULL, 0, 0, 1, 0, NULL, 'Tools', NULL, 1, 1, 1),
(9, 'Calendar', 0, 3, 'Calendar', NULL, NULL, 0, 0, 1, 0, NULL, 'Tools', NULL, 1, 1, 1),
(10, 'Emails', 0, 10, 'Emails', NULL, NULL, 0, 0, 1, 0, NULL, 'Tools', NULL, 1, 1, 1),
(13, 'HelpDesk', 0, 11, 'HelpDesk', NULL, NULL, 0, 0, 1, 0, NULL, 'Support', NULL, 1, 1, 1),
(14, 'Products', 0, 8, 'Products', NULL, NULL, 0, 0, 1, 0, NULL, 'Inventory', NULL, 1, 1, 1),
(15, 'Faq', 0, -1, 'Faq', NULL, NULL, 0, 1, 1, 0, NULL, 'Support', NULL, 1, 1, 1),
(16, 'Events', 2, -1, 'Events', NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 1),
(18, 'Vendors', 0, -1, 'Vendors', NULL, NULL, 0, 0, 1, 0, NULL, 'Inventory', NULL, 1, 1, 1),
(19, 'PriceBooks', 0, -1, 'PriceBooks', NULL, NULL, 0, 1, 1, 0, NULL, 'Inventory', NULL, 1, 1, 1),
(20, 'Quotes', 0, -1, 'Quotes', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 1, 1),
(21, 'PurchaseOrder', 0, -1, 'PurchaseOrder', NULL, NULL, 0, 0, 1, 0, NULL, 'Inventory', NULL, 1, 1, 1),
(22, 'SalesOrder', 0, -1, 'SalesOrder', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 1, 1),
(23, 'Invoice', 0, -1, 'Invoice', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales', NULL, 1, 1, 1),
(24, 'Rss', 0, -1, 'Rss', NULL, NULL, 0, 1, 0, 0, NULL, 'Tools', NULL, 1, 1, 1),
(25, 'Reports', 0, -1, 'Reports', NULL, NULL, 0, 1, 0, 0, NULL, 'Analytics', NULL, 1, 1, 1),
(26, 'Campaigns', 0, -1, 'Campaigns', NULL, NULL, 0, 0, 1, 0, NULL, 'Marketing', NULL, 1, 1, 1),
(27, 'Portal', 0, -1, 'Portal', NULL, NULL, 0, 1, 0, 0, NULL, 'Tools', NULL, 1, 1, 1),
(28, 'Webmails', 0, -1, 'Webmails', NULL, NULL, 0, 1, 1, 0, NULL, NULL, NULL, 1, 1, 1),
(29, 'Users', 0, -1, 'Users', NULL, NULL, 0, 1, 0, 0, NULL, NULL, NULL, 1, 1, 1),
(30, 'MailManager', 0, -1, 'MailManager', NULL, NULL, 1, 0, 0, 0, '1.9', 'Tools', NULL, 1, 1, 1),
(31, 'Services', 0, -1, 'Services', NULL, NULL, 0, 0, 1, 0, '2.6', 'Inventory', NULL, 1, 1, 1),
(32, 'Import', 0, -1, 'Import', NULL, NULL, 1, 0, 0, 0, '1.7', '', NULL, 1, 1, 1),
(33, 'WSAPP', 0, -1, 'WSAPP', NULL, NULL, 1, 0, 0, 0, '3.4.4', '', NULL, 1, 1, 1),
(34, 'ModTracker', 0, -1, 'ModTracker', NULL, NULL, 0, 0, 0, 0, '1.2', '', NULL, 1, 1, 1),
(35, 'PBXManager', 0, -1, 'PBXManager', NULL, NULL, 1, 0, 1, 0, '2.2', 'Tools', NULL, 1, 1, 1),
(36, 'Mobile', 0, -1, 'Mobile', NULL, NULL, 1, 0, 0, 0, '2.0', '', NULL, 1, 1, 1),
(37, 'ServiceContracts', 0, -1, 'Service Contracts', NULL, NULL, 0, 0, 1, 0, '2.4', 'Support', NULL, 1, 1, 1),
(38, 'ModComments', 0, -1, 'Comments', NULL, NULL, 0, 0, 1, 0, '2.1', '', NULL, 1, 1, 1),
(39, 'RecycleBin', 0, -1, 'Recycle Bin', NULL, NULL, 0, 0, 0, 0, '1.5', 'Tools', NULL, 1, 1, 1),
(40, 'EmailTemplates', 0, -1, 'Email Templates', NULL, NULL, 1, 0, 0, 0, '1.0', 'Tools', NULL, 1, 1, 1),
(41, 'Webforms', 0, -1, 'Webforms', NULL, NULL, 0, 0, 0, 0, '1.6', '', NULL, 1, 1, 1),
(42, 'SMSNotifier', 0, -1, 'SMSNotifier', NULL, NULL, 0, 0, 1, 0, '2.1', 'Sales', NULL, 1, 1, 1),
(43, 'ProjectMilestone', 0, -1, 'ProjectMilestone', NULL, NULL, 0, 0, 1, 0, '3.0', 'Support', NULL, 1, 1, 1),
(44, 'ProjectTask', 0, -1, 'ProjectTask', NULL, NULL, 0, 0, 1, 0, '3.1', 'Support', NULL, 1, 1, 1),
(45, 'Project', 0, -1, 'Project', NULL, NULL, 0, 0, 1, 0, '3.3', 'Support', NULL, 1, 1, 1),
(46, 'CustomerPortal', 0, -1, 'CustomerPortal', NULL, NULL, 0, 0, 0, 0, '1.4', '', NULL, 1, 1, 1),
(47, 'Assets', 0, -1, 'Assets', NULL, NULL, 0, 0, 1, 0, '2.0', 'Inventory', NULL, 1, 1, 1),
(48, 'Google', 0, -1, 'Google', NULL, NULL, 0, 0, 0, 0, '1.5', '', NULL, 1, 1, 1),
(49, 'ExtensionStore', 0, -1, 'Extension Store', NULL, NULL, 1, 0, 0, 0, '1.2', NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tab_info`
--

CREATE TABLE `vtiger_tab_info` (
  `tabid` int(19) DEFAULT NULL,
  `prefname` varchar(256) DEFAULT NULL,
  `prefvalue` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_tab_info`
--

INSERT INTO `vtiger_tab_info` (`tabid`, `prefname`, `prefvalue`) VALUES
(30, 'vtiger_min_version', '6.0.0RC'),
(31, 'vtiger_min_version', '6.0.0rc'),
(31, 'vtiger_max_version', '7.*'),
(32, 'vtiger_min_version', '6.0.0rc'),
(32, 'vtiger_max_version', '7.*'),
(33, 'vtiger_min_version', '6.0.0rc'),
(34, 'vtiger_min_version', '6.0.0rc'),
(35, 'vtiger_min_version', '6.0.0'),
(35, 'vtiger_max_version', '7.*'),
(36, 'vtiger_min_version', '6.0.0rc'),
(37, 'vtiger_min_version', '6.0.0rc'),
(38, 'vtiger_min_version', '6.0.0rc'),
(38, 'vtiger_max_version', '7.*'),
(39, 'vtiger_min_version', '6.0.0rc'),
(39, 'vtiger_max_version', '7.*'),
(40, 'vtiger_min_version', '6.0.0rc'),
(40, 'vtiger_max_version', '7.*'),
(41, 'vtiger_min_version', '6.0.0rc'),
(41, 'vtiger_max_version', '7.*'),
(42, 'vtiger_min_version', '6.0.0'),
(42, 'vtiger_max_version', '7.*'),
(43, 'vtiger_min_version', '6.0.0rc'),
(43, 'vtiger_max_version', '7.*'),
(44, 'vtiger_min_version', '6.0.0rc'),
(45, 'vtiger_min_version', '6.0.0rc'),
(46, 'vtiger_min_version', '6.0.0rc'),
(46, 'vtiger_max_version', '7.*'),
(47, 'vtiger_min_version', '6.0.0rc'),
(47, 'vtiger_max_version', '7.*'),
(48, 'vtiger_min_version', '6.0.0rc'),
(48, 'vtiger_max_version', '7.*'),
(49, 'vtiger_min_version', '6.0.0'),
(49, 'vtiger_max_version', '6.*');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskpriority`
--

CREATE TABLE `vtiger_taskpriority` (
  `taskpriorityid` int(19) NOT NULL,
  `taskpriority` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_taskpriority`
--

INSERT INTO `vtiger_taskpriority` (`taskpriorityid`, `taskpriority`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'High', 1, 170, 0, NULL),
(2, 'Medium', 1, 171, 1, NULL),
(3, 'Low', 1, 172, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskpriority_seq`
--

CREATE TABLE `vtiger_taskpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_taskpriority_seq`
--

INSERT INTO `vtiger_taskpriority_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskstatus`
--

CREATE TABLE `vtiger_taskstatus` (
  `taskstatusid` int(19) NOT NULL,
  `taskstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_taskstatus`
--

INSERT INTO `vtiger_taskstatus` (`taskstatusid`, `taskstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Not Started', 0, 173, 0, NULL),
(2, 'In Progress', 0, 174, 1, NULL),
(3, 'Completed', 0, 175, 2, NULL),
(4, 'Pending Input', 0, 176, 3, NULL),
(5, 'Deferred', 0, 177, 4, NULL),
(6, 'Planned', 0, 178, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskstatus_seq`
--

CREATE TABLE `vtiger_taskstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_taskstatus_seq`
--

INSERT INTO `vtiger_taskstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taxclass`
--

CREATE TABLE `vtiger_taxclass` (
  `taxclassid` int(19) NOT NULL,
  `taxclass` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_taxclass`
--

INSERT INTO `vtiger_taxclass` (`taxclassid`, `taxclass`, `sortorderid`, `presence`) VALUES
(1, 'SalesTax', 0, 1),
(2, 'Vat', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taxclass_seq`
--

CREATE TABLE `vtiger_taxclass_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_taxclass_seq`
--

INSERT INTO `vtiger_taxclass_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taxregions`
--

CREATE TABLE `vtiger_taxregions` (
  `regionid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcategories`
--

CREATE TABLE `vtiger_ticketcategories` (
  `ticketcategories_id` int(19) NOT NULL,
  `ticketcategories` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 0,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ticketcategories`
--

INSERT INTO `vtiger_ticketcategories` (`ticketcategories_id`, `ticketcategories`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Big Problem', 1, 179, 0, NULL),
(2, 'Small Problem', 1, 180, 1, NULL),
(3, 'Other Problem', 1, 181, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcategories_seq`
--

CREATE TABLE `vtiger_ticketcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ticketcategories_seq`
--

INSERT INTO `vtiger_ticketcategories_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcf`
--

CREATE TABLE `vtiger_ticketcf` (
  `ticketid` int(19) NOT NULL DEFAULT 0,
  `from_portal` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ticketcf`
--

INSERT INTO `vtiger_ticketcf` (`ticketid`, `from_portal`) VALUES
(31, '0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcomments`
--

CREATE TABLE `vtiger_ticketcomments` (
  `commentid` int(19) NOT NULL,
  `ticketid` int(19) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `ownerid` int(19) NOT NULL DEFAULT 0,
  `ownertype` varchar(10) DEFAULT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketpriorities`
--

CREATE TABLE `vtiger_ticketpriorities` (
  `ticketpriorities_id` int(19) NOT NULL,
  `ticketpriorities` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 0,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ticketpriorities`
--

INSERT INTO `vtiger_ticketpriorities` (`ticketpriorities_id`, `ticketpriorities`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Low', 1, 182, 0, NULL),
(2, 'Normal', 1, 183, 1, NULL),
(3, 'High', 1, 184, 2, NULL),
(4, 'Urgent', 1, 185, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketpriorities_seq`
--

CREATE TABLE `vtiger_ticketpriorities_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ticketpriorities_seq`
--

INSERT INTO `vtiger_ticketpriorities_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketseverities`
--

CREATE TABLE `vtiger_ticketseverities` (
  `ticketseverities_id` int(19) NOT NULL,
  `ticketseverities` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 0,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ticketseverities`
--

INSERT INTO `vtiger_ticketseverities` (`ticketseverities_id`, `ticketseverities`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Minor', 1, 186, 0, NULL),
(2, 'Major', 1, 187, 1, NULL),
(3, 'Feature', 1, 188, 2, NULL),
(4, 'Critical', 1, 189, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketseverities_seq`
--

CREATE TABLE `vtiger_ticketseverities_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ticketseverities_seq`
--

INSERT INTO `vtiger_ticketseverities_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketstatus`
--

CREATE TABLE `vtiger_ticketstatus` (
  `ticketstatus_id` int(19) NOT NULL,
  `ticketstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT 0,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ticketstatus`
--

INSERT INTO `vtiger_ticketstatus` (`ticketstatus_id`, `ticketstatus`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Open', 0, 190, 0, NULL),
(2, 'In Progress', 0, 191, 1, NULL),
(3, 'Wait For Response', 0, 192, 2, NULL),
(4, 'Closed', 0, 193, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketstatus_seq`
--

CREATE TABLE `vtiger_ticketstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ticketstatus_seq`
--

INSERT INTO `vtiger_ticketstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_time_zone`
--

CREATE TABLE `vtiger_time_zone` (
  `time_zoneid` int(19) NOT NULL,
  `time_zone` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_time_zone`
--

INSERT INTO `vtiger_time_zone` (`time_zoneid`, `time_zone`, `sortorderid`, `presence`) VALUES
(1, 'Pacific/Midway', 1, 1),
(2, 'Pacific/Samoa', 0, 1),
(3, 'Pacific/Honolulu', 2, 1),
(4, 'America/Anchorage', 3, 1),
(5, 'America/Los_Angeles', 5, 1),
(6, 'America/Tijuana', 4, 1),
(7, 'America/Denver', 6, 1),
(8, 'America/Chihuahua', 8, 1),
(9, 'America/Mazatlan', 7, 1),
(10, 'America/Phoenix', 9, 1),
(11, 'America/Regina', 10, 1),
(12, 'America/Tegucigalpa', 14, 1),
(13, 'America/Chicago', 13, 1),
(14, 'America/Mexico_City', 12, 1),
(15, 'America/Monterrey', 11, 1),
(16, 'America/New_York', 18, 1),
(17, 'America/Bogota', 19, 1),
(18, 'America/Lima', 16, 1),
(19, 'America/Rio_Branco', 15, 1),
(20, 'America/Indiana/Indianapolis', 17, 1),
(21, 'America/Caracas', 20, 1),
(22, 'America/Halifax', 25, 1),
(23, 'America/Manaus', 22, 1),
(24, 'America/Santiago', 21, 1),
(25, 'America/La_Paz', 23, 1),
(26, 'America/Cuiaba', 24, 1),
(27, 'America/Asuncion', 26, 1),
(28, 'America/St_Johns', 27, 1),
(29, 'America/Argentina/Buenos_Aires', 30, 1),
(30, 'America/Sao_Paulo', 31, 1),
(31, 'America/Godthab', 29, 1),
(32, 'America/Montevideo', 28, 1),
(33, 'Atlantic/South_Georgia', 32, 1),
(34, 'Atlantic/Azores', 34, 1),
(35, 'Atlantic/Cape_Verde', 33, 1),
(36, 'Europe/London', 37, 1),
(37, 'UTC', 36, 1),
(38, 'Africa/Monrovia', 38, 1),
(39, 'Africa/Casablanca', 35, 1),
(40, 'Europe/Belgrade', 40, 1),
(41, 'Europe/Sarajevo', 42, 1),
(42, 'Europe/Brussels', 41, 1),
(43, 'Africa/Algiers', 43, 1),
(44, 'Europe/Amsterdam', 39, 1),
(45, 'Europe/Minsk', 52, 1),
(46, 'Africa/Cairo', 47, 1),
(47, 'Europe/Helsinki', 49, 1),
(48, 'Europe/Athens', 45, 1),
(49, 'Europe/Istanbul', 50, 1),
(50, 'Asia/Jerusalem', 51, 1),
(51, 'Asia/Amman', 44, 1),
(52, 'Asia/Beirut', 46, 1),
(53, 'Africa/Windhoek', 53, 1),
(54, 'Africa/Harare', 48, 1),
(55, 'Asia/Kuwait', 55, 1),
(56, 'Asia/Baghdad', 54, 1),
(57, 'Africa/Nairobi', 57, 1),
(58, 'Asia/Tehran', 58, 1),
(59, 'Asia/Tbilisi', 61, 1),
(60, 'Europe/Moscow', 56, 1),
(61, 'Asia/Muscat', 59, 1),
(62, 'Asia/Baku', 60, 1),
(63, 'Asia/Yerevan', 62, 1),
(64, 'Asia/Karachi', 63, 1),
(65, 'Asia/Tashkent', 64, 1),
(66, 'Asia/Kolkata', 65, 1),
(67, 'Asia/Colombo', 66, 1),
(68, 'Asia/Katmandu', 67, 1),
(69, 'Asia/Dhaka', 69, 1),
(70, 'Asia/Almaty', 68, 1),
(71, 'Asia/Yekaterinburg', 70, 1),
(72, 'Asia/Rangoon', 71, 1),
(73, 'Asia/Novosibirsk', 73, 1),
(74, 'Asia/Bangkok', 72, 1),
(75, 'Asia/Brunei', 74, 1),
(76, 'Asia/Krasnoyarsk', 75, 1),
(77, 'Asia/Ulaanbaatar', 79, 1),
(78, 'Asia/Kuala_Lumpur', 76, 1),
(79, 'Asia/Taipei', 78, 1),
(80, 'Australia/Perth', 77, 1),
(81, 'Asia/Irkutsk', 80, 1),
(82, 'Asia/Seoul', 81, 1),
(83, 'Asia/Tokyo', 82, 1),
(84, 'Australia/Darwin', 84, 1),
(85, 'Australia/Adelaide', 83, 1),
(86, 'Australia/Canberra', 86, 1),
(87, 'Australia/Brisbane', 85, 1),
(88, 'Australia/Hobart', 88, 1),
(89, 'Asia/Vladivostok', 89, 1),
(90, 'Pacific/Guam', 87, 1),
(91, 'Asia/Yakutsk', 90, 1),
(92, 'Pacific/Fiji', 93, 1),
(93, 'Asia/Kamchatka', 94, 1),
(94, 'Pacific/Auckland', 92, 1),
(95, 'Asia/Magadan', 95, 1),
(96, 'Pacific/Tongatapu', 96, 1),
(97, 'Etc/GMT-11', 91, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_time_zone_seq`
--

CREATE TABLE `vtiger_time_zone_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_time_zone_seq`
--

INSERT INTO `vtiger_time_zone_seq` (`id`) VALUES
(96);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_group_rel_sharing_per`
--

CREATE TABLE `vtiger_tmp_read_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_group_sharing_per`
--

CREATE TABLE `vtiger_tmp_read_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_user_rel_sharing_per`
--

CREATE TABLE `vtiger_tmp_read_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_user_sharing_per`
--

CREATE TABLE `vtiger_tmp_read_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_group_rel_sharing_per`
--

CREATE TABLE `vtiger_tmp_write_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_group_sharing_per`
--

CREATE TABLE `vtiger_tmp_write_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_user_rel_sharing_per`
--

CREATE TABLE `vtiger_tmp_write_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_user_sharing_per`
--

CREATE TABLE `vtiger_tmp_write_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tracker`
--

CREATE TABLE `vtiger_tracker` (
  `id` int(11) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(25) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tracking_unit`
--

CREATE TABLE `vtiger_tracking_unit` (
  `tracking_unitid` int(11) NOT NULL,
  `tracking_unit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(11) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT 0,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_tracking_unit`
--

INSERT INTO `vtiger_tracking_unit` (`tracking_unitid`, `tracking_unit`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(2, 'Hours', 1, 220, 2, NULL),
(3, 'Days', 1, 221, 3, NULL),
(4, 'Incidents', 1, 222, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tracking_unit_seq`
--

CREATE TABLE `vtiger_tracking_unit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_tracking_unit_seq`
--

INSERT INTO `vtiger_tracking_unit_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_troubletickets`
--

CREATE TABLE `vtiger_troubletickets` (
  `ticketid` int(19) NOT NULL,
  `ticket_no` varchar(100) NOT NULL,
  `groupname` varchar(100) DEFAULT NULL,
  `parent_id` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `severity` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `solution` text DEFAULT NULL,
  `update_log` text DEFAULT NULL,
  `version_id` int(11) DEFAULT NULL,
  `hours` decimal(25,8) DEFAULT NULL,
  `days` decimal(25,8) DEFAULT NULL,
  `contact_id` int(19) DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_troubletickets`
--

INSERT INTO `vtiger_troubletickets` (`ticketid`, `ticket_no`, `groupname`, `parent_id`, `product_id`, `priority`, `severity`, `status`, `category`, `title`, `solution`, `update_log`, `version_id`, `hours`, `days`, `contact_id`, `tags`) VALUES
(31, 'TT1', NULL, '0', '0', 'High', '', 'Open', '', 'Chính sách ưu đãi', '', NULL, NULL, '0.00000000', '0.00000000', 30, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_usageunit`
--

CREATE TABLE `vtiger_usageunit` (
  `usageunitid` int(19) NOT NULL,
  `usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT 1,
  `picklist_valueid` int(19) NOT NULL DEFAULT 0,
  `sortorderid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_usageunit`
--

INSERT INTO `vtiger_usageunit` (`usageunitid`, `usageunit`, `presence`, `picklist_valueid`, `sortorderid`, `color`) VALUES
(1, 'Box', 1, 194, 0, NULL),
(2, 'Carton', 1, 195, 1, NULL),
(3, 'Dozen', 1, 196, 2, NULL),
(4, 'Each', 1, 197, 3, NULL),
(5, 'Hours', 1, 198, 4, NULL),
(6, 'Impressions', 1, 199, 5, NULL),
(7, 'Lb', 1, 200, 6, NULL),
(8, 'M', 1, 201, 7, NULL),
(9, 'Pack', 1, 202, 8, NULL),
(10, 'Pages', 1, 203, 9, NULL),
(11, 'Pieces', 1, 204, 10, NULL),
(12, 'Quantity', 1, 205, 11, NULL),
(13, 'Reams', 1, 206, 12, NULL),
(14, 'Sheet', 1, 207, 13, NULL),
(15, 'Spiral Binder', 1, 208, 14, NULL),
(16, 'Sq Ft', 1, 209, 15, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_usageunit_seq`
--

CREATE TABLE `vtiger_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_usageunit_seq`
--

INSERT INTO `vtiger_usageunit_seq` (`id`) VALUES
(16);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_user2mergefields`
--

CREATE TABLE `vtiger_user2mergefields` (
  `userid` int(11) DEFAULT NULL,
  `tabid` int(19) DEFAULT NULL,
  `fieldid` int(19) DEFAULT NULL,
  `visible` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_user2role`
--

CREATE TABLE `vtiger_user2role` (
  `userid` int(11) NOT NULL,
  `roleid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_user2role`
--

INSERT INTO `vtiger_user2role` (`userid`, `roleid`) VALUES
(1, 'H2'),
(6, 'H3'),
(9, 'H4'),
(7, 'H5'),
(8, 'H5'),
(10, 'H5'),
(11, 'H5');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users`
--

CREATE TABLE `vtiger_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `cal_color` varchar(25) DEFAULT '#E6FAD8',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `reports_to_id` varchar(36) DEFAULT NULL,
  `is_admin` varchar(3) DEFAULT '0',
  `currency_id` int(19) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `date_entered` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` varchar(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(25) DEFAULT NULL,
  `address_postalcode` varchar(9) DEFAULT NULL,
  `user_preferences` text DEFAULT NULL,
  `tz` varchar(30) DEFAULT NULL,
  `holidays` varchar(60) DEFAULT NULL,
  `namedays` varchar(60) DEFAULT NULL,
  `workdays` varchar(30) DEFAULT NULL,
  `weekstart` int(11) DEFAULT NULL,
  `date_format` varchar(200) DEFAULT NULL,
  `hour_format` varchar(30) DEFAULT 'am/pm',
  `start_hour` varchar(30) DEFAULT '10:00',
  `end_hour` varchar(30) DEFAULT '23:00',
  `is_owner` varchar(100) DEFAULT '0',
  `activity_view` varchar(200) DEFAULT 'Today',
  `lead_view` varchar(200) DEFAULT 'Today',
  `imagename` varchar(250) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `confirm_password` varchar(300) DEFAULT NULL,
  `internal_mailer` varchar(3) NOT NULL DEFAULT '1',
  `reminder_interval` varchar(100) DEFAULT NULL,
  `reminder_next_time` varchar(100) DEFAULT NULL,
  `crypt_type` varchar(20) NOT NULL DEFAULT 'MD5',
  `accesskey` varchar(36) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL,
  `language` varchar(36) DEFAULT NULL,
  `time_zone` varchar(200) DEFAULT NULL,
  `currency_grouping_pattern` varchar(100) DEFAULT NULL,
  `currency_decimal_separator` varchar(2) DEFAULT NULL,
  `currency_grouping_separator` varchar(2) DEFAULT NULL,
  `currency_symbol_placement` varchar(20) DEFAULT NULL,
  `phone_crm_extension` varchar(100) DEFAULT NULL,
  `no_of_currency_decimals` varchar(2) DEFAULT NULL,
  `truncate_trailing_zeros` varchar(3) DEFAULT NULL,
  `dayoftheweek` varchar(100) DEFAULT NULL,
  `callduration` varchar(100) DEFAULT NULL,
  `othereventduration` varchar(100) DEFAULT NULL,
  `calendarsharedtype` varchar(100) DEFAULT NULL,
  `default_record_view` varchar(10) DEFAULT NULL,
  `leftpanelhide` varchar(3) DEFAULT NULL,
  `rowheight` varchar(10) DEFAULT NULL,
  `defaulteventstatus` varchar(50) DEFAULT NULL,
  `defaultactivitytype` varchar(50) DEFAULT NULL,
  `hidecompletedevents` int(11) DEFAULT NULL,
  `defaultcalendarview` varchar(100) DEFAULT NULL,
  `defaultlandingpage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_users`
--

INSERT INTO `vtiger_users` (`id`, `user_name`, `user_password`, `cal_color`, `first_name`, `last_name`, `reports_to_id`, `is_admin`, `currency_id`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `title`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `secondaryemail`, `status`, `signature`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `user_preferences`, `tz`, `holidays`, `namedays`, `workdays`, `weekstart`, `date_format`, `hour_format`, `start_hour`, `end_hour`, `is_owner`, `activity_view`, `lead_view`, `imagename`, `deleted`, `confirm_password`, `internal_mailer`, `reminder_interval`, `reminder_next_time`, `crypt_type`, `accesskey`, `theme`, `language`, `time_zone`, `currency_grouping_pattern`, `currency_decimal_separator`, `currency_grouping_separator`, `currency_symbol_placement`, `phone_crm_extension`, `no_of_currency_decimals`, `truncate_trailing_zeros`, `dayoftheweek`, `callduration`, `othereventduration`, `calendarsharedtype`, `default_record_view`, `leftpanelhide`, `rowheight`, `defaulteventstatus`, `defaultactivitytype`, `hidecompletedevents`, `defaultcalendarview`, `defaultlandingpage`) VALUES
(1, 'admin', '$2y$10$GxGn4sXMNgQ6nuGL1schzeoiN40RuXRT0.HrGl7VYioIQH.BKffUq', '#E6FAD8', 'Van', 'Tran Ly', '', 'on', 1, '', '2020-12-12 08:34:08', NULL, NULL, '', '', '', '', '', '', '', 'vanM2519034@gstudent.ctu.edu.vn', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '00:00', '23:00', '1', 'This Week', 'Today', '', 0, '$2y$10$e6dr8dJHRFAwmSiFdDbKgu6vEAVSqqj60IFbF2lzd3BAz3O.4cJaC', '1', '1 Minute', NULL, 'PHASH', 'Lb7GmW50hL8ejSUd', 'alphagrey', 'vn_vn', 'Asia/Bangkok', '123,456,789', '.', ',', '$1.0', '', '2', '1', 'Sunday', '5', '5', 'public', 'Summary', '0', '', 'Planned', 'Call', 0, 'MyCalendar', 'Home'),
(6, 'thanh', '$2y$10$VWNyMxH4NaFEVNaooEWOPOL70pIZjXKMD7xwVnJ7WDEgWNXA8GBem', '#E6FAD8', 'Thành', 'Dương', '', 'off', 1, '', '2020-12-13 02:37:00', NULL, NULL, '', '', '', '', '', '', '', 'thanhm2519028@gstudent.ctu.edu.vn', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'yyyy-mm-dd', '12', '09:00', '', '', 'Today', 'Today', '', 0, '$2y$10$WtxTAFGR/WXE01spTv7Fqe.am4ZTApwfuwDUB87FSy1lFrE5njq/u', '0', '', NULL, 'PHASH', 't3soGB10lwahzQ0r', 'softed', 'vn_vn', 'UTC', '123,456,789', '.', ',', '$1.0', '', '2', '0', 'Sunday', '5', '5', 'public', 'Summary', '0', 'medium', NULL, NULL, 0, '', 'Home'),
(7, 'nhu', '$2y$10$hzXDQM/UXvsV1WltzkfcKeFejMr.L3F38Gl26kfeJdk7dXyWNL6cK', '#E6FAD8', 'Như', 'Dương', '', 'off', 1, '', '2020-12-13 03:22:13', NULL, NULL, '', '', '', '', '', '', '', 'nhum2519020@gstudent.ctu.edu.vn', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '09:00', '', '', 'Today', 'Today', '', 0, '$2y$10$9hxPFQL.X7xeHKKF/pThGOE20/tMXrF6OVo/AkUtBHWyy8RAMIYDu', '0', '', NULL, 'PHASH', 'b9IX74k3jeE24OA', 'softed', 'en_gb', 'Asia/Bangkok', '123,456,789', '.', ',', '$1.0', '', '2', '0', 'Sunday', '5', '5', 'public', 'Summary', '0', 'medium', NULL, NULL, 0, '', 'Home'),
(8, 'van', '$2y$10$UV8t10qMrsextid3bbh0yOYbdxSXRZm10vw3CUE/rjatfMuThGIza', '#E6FAD8', 'Văn', 'Lý', '', 'off', 1, '', '2020-12-13 02:25:58', NULL, NULL, '', '', '', '', '', '', '', 'vanm2519034@gstudent.ctu.edu.vn', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '09:00', '', '', 'Today', 'Today', '', 0, '$2y$10$ZV.WDsjP0ITKnqnJeImMr.Gwud/5oW7gXlhe.QAr/8tSInE1ePqgi', '0', '', NULL, 'PHASH', 'WAnSGjjTgscp4jtd', 'softed', 'vn_vn', 'Asia/Bangkok', '123,456,789', '.', ',', '$1.0', '', '2', '0', 'Sunday', '5', '5', 'public', 'Summary', '0', 'medium', NULL, NULL, 0, '', 'Home'),
(9, 'ngoctran', '$2y$10$MDGuvQfukuQwNS.AlmL5meslnELylUkoPRvgEGrdxv9lxAWZI.iqq', '#E6FAD8', 'Ngọc Trân', 'Nguyễn', '', 'off', 1, '', '2021-01-21 16:31:43', NULL, NULL, '', '', '', '', '', '', '', 'tranm2519032@gstudent.ctu.edu.vn', '', '', 'Active', 'Nguyễn Thái Thị Ngọc Trân<br />\nHệ thống thông tin - K26<br />\nĐại học Cần Thơ<br />\n ', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '09:00', '', '', 'Today', 'Today', '52._Nguyen_Thai_Thi_Ngoc_Tran.jpg', 0, '$2y$10$b1kUBU1nfmiICKSaCF/zUO6cqRysTFGL4.5IYoR/oOBINNvWED1PC', '0', '', NULL, 'PHASH', '1KCCW3DHvf7YHl9O', 'softed', 'vn_vn', 'Asia/Bangkok', '123,456,789', '.', ',', '$1.0', '', '2', '0', 'Sunday', '5', '5', 'public', 'Summary', '0', 'medium', NULL, NULL, 0, '', 'Home'),
(10, 'quynhnhu', '$2y$10$9fz1q7aAnDSLrDqTiSLE7.Ckxzgyfl381lLTjgmX.E0e92MEQ286i', '#E6FAD8', 'Quỳnh Như', 'Dương', '', 'off', 1, '', '2021-01-21 17:30:41', NULL, NULL, '', '', '', '', '', '', '', 'nhum2519020@gstudent.ctu.edu.vn', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '09:00', '', '', 'Today', 'Today', 'nhu.png', 0, '$2y$10$9Vig64mbCKYhlUOdoXgWD.HgffXP2Lo76K2bxv3/aJXbCC9pPWK9W', '0', '', NULL, 'PHASH', '0yE0w4jcs0b3v1kX', 'softed', 'vn_vn', 'Asia/Bangkok', '123,456,789', '.', ',', '$1.0', '', '2', '0', 'Sunday', '5', '5', 'public', 'Summary', '0', 'medium', NULL, NULL, 0, '', 'Home'),
(11, 'ngocthanh', '$2y$10$GJJDjSNQ6hHaT4Vs56Rk0e2vIrUaunGeBNm4Tm6EkvOVPjlXRiSwS', '#E6FAD8', '', 'Dương Ngọc Thành', '', 'off', 1, '', '2021-01-21 17:28:42', NULL, NULL, '', '', '', '', '', '', '', 'thanhm2519028@gstudent.ctu.edu.vn', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '09:00', '', '', 'Today', 'Today', '', 0, '$2y$10$17jC1e.2v.8kZk8nOA5wEOGJrcPJ0/RaMOkzSV2j2.xu/NQvkzBWy', '0', '', NULL, 'PHASH', 'gazIOrz2bALt5CPQ', 'softed', 'vn_vn', 'Asia/Bangkok', '123,456,789', '.', ',', '$1.0', '', '2', '0', 'Sunday', '5', '5', 'public', 'Summary', '0', 'medium', NULL, NULL, 0, '', 'Home');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users2group`
--

CREATE TABLE `vtiger_users2group` (
  `groupid` int(19) NOT NULL,
  `userid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_users2group`
--

INSERT INTO `vtiger_users2group` (`groupid`, `userid`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users_last_import`
--

CREATE TABLE `vtiger_users_last_import` (
  `id` int(36) NOT NULL,
  `assigned_user_id` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users_seq`
--

CREATE TABLE `vtiger_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_users_seq`
--

INSERT INTO `vtiger_users_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_user_module_preferences`
--

CREATE TABLE `vtiger_user_module_preferences` (
  `userid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `default_cvid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_user_module_preferences`
--

INSERT INTO `vtiger_user_module_preferences` (`userid`, `tabid`, `default_cvid`) VALUES
(1, 6, 50);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_vendor`
--

CREATE TABLE `vtiger_vendor` (
  `vendorid` int(19) NOT NULL DEFAULT 0,
  `vendor_no` varchar(100) NOT NULL,
  `vendorname` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `glacct` varchar(200) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `street` text DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pobox` varchar(30) DEFAULT NULL,
  `postalcode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tags` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_vendorcf`
--

CREATE TABLE `vtiger_vendorcf` (
  `vendorid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_vendorcontactrel`
--

CREATE TABLE `vtiger_vendorcontactrel` (
  `vendorid` int(19) NOT NULL DEFAULT 0,
  `contactid` int(19) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_version`
--

CREATE TABLE `vtiger_version` (
  `id` int(11) NOT NULL,
  `old_version` varchar(30) DEFAULT NULL,
  `current_version` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_version`
--

INSERT INTO `vtiger_version` (`id`, `old_version`, `current_version`) VALUES
(1, '7.3.0', '7.3.0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_version_seq`
--

CREATE TABLE `vtiger_version_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_version_seq`
--

INSERT INTO `vtiger_version_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_visibility`
--

CREATE TABLE `vtiger_visibility` (
  `visibilityid` int(19) NOT NULL,
  `visibility` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT 0,
  `presence` int(1) NOT NULL DEFAULT 1,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_visibility`
--

INSERT INTO `vtiger_visibility` (`visibilityid`, `visibility`, `sortorderid`, `presence`, `color`) VALUES
(1, 'Private', 0, 1, NULL),
(2, 'Public', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_visibility_seq`
--

CREATE TABLE `vtiger_visibility_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_visibility_seq`
--

INSERT INTO `vtiger_visibility_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_webforms`
--

CREATE TABLE `vtiger_webforms` (
  `id` int(19) NOT NULL,
  `name` varchar(100) NOT NULL,
  `publicid` varchar(100) NOT NULL,
  `enabled` int(1) NOT NULL DEFAULT 1,
  `targetmodule` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `ownerid` int(19) NOT NULL,
  `returnurl` varchar(250) DEFAULT NULL,
  `captcha` int(1) NOT NULL DEFAULT 0,
  `roundrobin` int(1) NOT NULL DEFAULT 0,
  `roundrobin_userid` varchar(256) DEFAULT NULL,
  `roundrobin_logic` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_webforms`
--

INSERT INTO `vtiger_webforms` (`id`, `name`, `publicid`, `enabled`, `targetmodule`, `description`, `ownerid`, `returnurl`, `captcha`, `roundrobin`, `roundrobin_userid`, `roundrobin_logic`) VALUES
(1, 'Chăm sóc khách hàng', '11c428536b7acc455ab33f1a4e13b637', 1, 'Accounts', '', 1, '', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_webforms_field`
--

CREATE TABLE `vtiger_webforms_field` (
  `id` int(19) NOT NULL,
  `webformid` int(19) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `neutralizedfield` varchar(50) NOT NULL,
  `defaultvalue` text DEFAULT NULL,
  `required` int(10) NOT NULL DEFAULT 0,
  `sequence` int(10) DEFAULT NULL,
  `hidden` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_webforms_field`
--

INSERT INTO `vtiger_webforms_field` (`id`, `webformid`, `fieldname`, `neutralizedfield`, `defaultvalue`, `required`, `sequence`, `hidden`) VALUES
(1, 1, 'accountname', 'accountname', '', 1, 1, 0),
(2, 1, 'phone', 'phone', '', 0, 2, 0),
(3, 1, 'email1', 'email1', '', 0, 3, 0),
(4, 1, 'industry', 'industry', '', 0, 4, 0),
(5, 1, 'employees', 'employees', '', 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_webform_file_fields`
--

CREATE TABLE `vtiger_webform_file_fields` (
  `id` int(19) NOT NULL,
  `webformid` int(19) NOT NULL,
  `fieldname` varchar(100) NOT NULL,
  `fieldlabel` varchar(100) NOT NULL,
  `required` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wordtemplates`
--

CREATE TABLE `vtiger_wordtemplates` (
  `templateid` int(19) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `module` varchar(30) NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `parent_type` varchar(50) NOT NULL,
  `data` longblob DEFAULT NULL,
  `description` text DEFAULT NULL,
  `filesize` varchar(50) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp`
--

CREATE TABLE `vtiger_wsapp` (
  `appid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `appkey` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_wsapp`
--

INSERT INTO `vtiger_wsapp` (`appid`, `name`, `appkey`, `type`) VALUES
(1, 'vtigerCRM', '5fba49636d2a5', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_handlerdetails`
--

CREATE TABLE `vtiger_wsapp_handlerdetails` (
  `type` varchar(200) NOT NULL,
  `handlerclass` varchar(100) DEFAULT NULL,
  `handlerpath` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_wsapp_handlerdetails`
--

INSERT INTO `vtiger_wsapp_handlerdetails` (`type`, `handlerclass`, `handlerpath`) VALUES
('Outlook', 'OutlookHandler', 'modules/WSAPP/Handlers/OutlookHandler.php'),
('vtigerCRM', 'vtigerCRMHandler', 'modules/WSAPP/Handlers/vtigerCRMHandler.php'),
('vtigerSyncLib', 'WSAPP_VtigerSyncEventHandler', 'modules/WSAPP/synclib/handlers/VtigerSyncEventHandler.php'),
('Google_vtigerHandler', 'Google_Vtiger_Handler', 'modules/Google/handlers/Vtiger.php'),
('Google_vtigerSyncHandler', 'Google_VtigerSync_Handler', 'modules/Google/handlers/VtigerSync.php');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_logs_basic`
--

CREATE TABLE `vtiger_wsapp_logs_basic` (
  `id` int(25) NOT NULL,
  `extensiontabid` int(19) DEFAULT NULL,
  `module` varchar(50) NOT NULL,
  `sync_datetime` datetime NOT NULL,
  `app_create_count` int(11) DEFAULT NULL,
  `app_update_count` int(11) DEFAULT NULL,
  `app_delete_count` int(11) DEFAULT NULL,
  `app_skip_count` int(11) DEFAULT NULL,
  `vt_create_count` int(11) DEFAULT NULL,
  `vt_update_count` int(11) DEFAULT NULL,
  `vt_delete_count` int(11) DEFAULT NULL,
  `vt_skip_count` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_logs_details`
--

CREATE TABLE `vtiger_wsapp_logs_details` (
  `id` int(25) NOT NULL,
  `app_create_ids` mediumtext DEFAULT NULL,
  `app_update_ids` mediumtext DEFAULT NULL,
  `app_delete_ids` mediumtext DEFAULT NULL,
  `app_skip_info` mediumtext DEFAULT NULL,
  `vt_create_ids` mediumtext DEFAULT NULL,
  `vt_update_ids` mediumtext DEFAULT NULL,
  `vt_delete_ids` mediumtext DEFAULT NULL,
  `vt_skip_info` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_queuerecords`
--

CREATE TABLE `vtiger_wsapp_queuerecords` (
  `syncserverid` int(19) DEFAULT NULL,
  `details` varchar(300) DEFAULT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `appid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_recordmapping`
--

CREATE TABLE `vtiger_wsapp_recordmapping` (
  `id` int(19) NOT NULL,
  `serverid` varchar(10) DEFAULT NULL,
  `clientid` varchar(255) DEFAULT NULL,
  `clientmodifiedtime` datetime DEFAULT NULL,
  `appid` int(11) DEFAULT NULL,
  `servermodifiedtime` datetime DEFAULT NULL,
  `serverappid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_sync_state`
--

CREATE TABLE `vtiger_wsapp_sync_state` (
  `id` int(19) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `stateencodedvalues` varchar(300) NOT NULL,
  `userid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity`
--

CREATE TABLE `vtiger_ws_entity` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_class` varchar(64) NOT NULL,
  `ismodule` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ws_entity`
--

INSERT INTO `vtiger_ws_entity` (`id`, `name`, `handler_path`, `handler_class`, `ismodule`) VALUES
(1, 'Campaigns', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(2, 'Vendors', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(3, 'Faq', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(4, 'Quotes', 'include/Webservices/LineItem/VtigerInventoryOperation.php', 'VtigerInventoryOperation', 1),
(5, 'PurchaseOrder', 'include/Webservices/LineItem/VtigerInventoryOperation.php', 'VtigerInventoryOperation', 1),
(6, 'SalesOrder', 'include/Webservices/LineItem/VtigerInventoryOperation.php', 'VtigerInventoryOperation', 1),
(7, 'Invoice', 'include/Webservices/LineItem/VtigerInventoryOperation.php', 'VtigerInventoryOperation', 1),
(8, 'PriceBooks', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(9, 'Calendar', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(10, 'Leads', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(11, 'Accounts', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(12, 'Contacts', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(13, 'Potentials', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(14, 'Products', 'include/Webservices/VtigerProductOperation.php', 'VtigerProductOperation', 1),
(15, 'Documents', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(16, 'Emails', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(17, 'HelpDesk', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(18, 'Events', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(19, 'Users', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(20, 'Groups', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(21, 'Currency', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(22, 'DocumentFolders', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(23, 'CompanyDetails', 'include/Webservices/VtigerCompanyDetails.php', 'VtigerCompanyDetails', 0),
(24, 'Services', 'include/Webservices/VtigerProductOperation.php', 'VtigerProductOperation', 1),
(25, 'PBXManager', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(26, 'ServiceContracts', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(27, 'ModComments', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(28, 'SMSNotifier', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(29, 'ProjectMilestone', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(30, 'ProjectTask', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(31, 'Project', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(32, 'Assets', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(33, 'LineItem', 'include/Webservices/LineItem/VtigerLineItemOperation.php', 'VtigerLineItemOperation', 0),
(34, 'Tax', 'include/Webservices/LineItem/VtigerTaxOperation.php', 'VtigerTaxOperation', 0),
(35, 'ProductTaxes', 'include/Webservices/LineItem/VtigerProductTaxesOperation.php', 'VtigerProductTaxesOperation', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_fieldtype`
--

CREATE TABLE `vtiger_ws_entity_fieldtype` (
  `fieldtypeid` int(19) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `fieldtype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ws_entity_fieldtype`
--

INSERT INTO `vtiger_ws_entity_fieldtype` (`fieldtypeid`, `table_name`, `field_name`, `fieldtype`) VALUES
(1, 'vtiger_attachmentsfolder', 'createdby', 'reference'),
(2, 'vtiger_organizationdetails', 'logoname', 'file'),
(3, 'vtiger_organizationdetails', 'phone', 'phone'),
(4, 'vtiger_organizationdetails', 'fax', 'phone'),
(5, 'vtiger_organizationdetails', 'website', 'url'),
(6, 'vtiger_inventoryproductrel', 'productid', 'reference'),
(7, 'vtiger_inventoryproductrel', 'id', 'reference'),
(8, 'vtiger_inventoryproductrel', 'incrementondel', 'autogenerated'),
(9, 'vtiger_producttaxrel', 'productid', 'reference'),
(10, 'vtiger_producttaxrel', 'taxid', 'reference');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_fieldtype_seq`
--

CREATE TABLE `vtiger_ws_entity_fieldtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ws_entity_fieldtype_seq`
--

INSERT INTO `vtiger_ws_entity_fieldtype_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_name`
--

CREATE TABLE `vtiger_ws_entity_name` (
  `entity_id` int(11) NOT NULL,
  `name_fields` varchar(50) NOT NULL,
  `index_field` varchar(50) NOT NULL,
  `table_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ws_entity_name`
--

INSERT INTO `vtiger_ws_entity_name` (`entity_id`, `name_fields`, `index_field`, `table_name`) VALUES
(20, 'groupname', 'groupid', 'vtiger_groups'),
(21, 'currency_name', 'id', 'vtiger_currency_info'),
(22, 'foldername', 'folderid', 'vtiger_attachmentsfolder'),
(23, 'organizationname', 'groupid', 'vtiger_organizationdetails'),
(34, 'taxlabel', 'taxid', 'vtiger_inventorytaxinfo');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_referencetype`
--

CREATE TABLE `vtiger_ws_entity_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ws_entity_referencetype`
--

INSERT INTO `vtiger_ws_entity_referencetype` (`fieldtypeid`, `type`) VALUES
(5, 'Users'),
(6, 'Products'),
(7, 'Invoice'),
(7, 'PurchaseOrder'),
(7, 'Quotes'),
(7, 'SalesOrder'),
(9, 'Products'),
(10, 'Tax');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_seq`
--

CREATE TABLE `vtiger_ws_entity_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ws_entity_seq`
--

INSERT INTO `vtiger_ws_entity_seq` (`id`) VALUES
(35);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_tables`
--

CREATE TABLE `vtiger_ws_entity_tables` (
  `webservice_entity_id` int(11) NOT NULL,
  `table_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ws_entity_tables`
--

INSERT INTO `vtiger_ws_entity_tables` (`webservice_entity_id`, `table_name`) VALUES
(20, 'vtiger_groups'),
(21, 'vtiger_currency_info'),
(22, 'vtiger_attachmentsfolder'),
(23, 'vtiger_organizationdetails'),
(33, 'vtiger_inventoryproductrel'),
(34, 'vtiger_inventorytaxinfo'),
(35, 'vtiger_producttaxrel');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_fieldinfo`
--

CREATE TABLE `vtiger_ws_fieldinfo` (
  `id` varchar(64) NOT NULL,
  `property_name` varchar(32) DEFAULT NULL,
  `property_value` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ws_fieldinfo`
--

INSERT INTO `vtiger_ws_fieldinfo` (`id`, `property_name`, `property_value`) VALUES
('vtiger_organizationdetails.organization_id', 'upload.path', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_fieldtype`
--

CREATE TABLE `vtiger_ws_fieldtype` (
  `fieldtypeid` int(19) NOT NULL,
  `uitype` varchar(30) NOT NULL,
  `fieldtype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ws_fieldtype`
--

INSERT INTO `vtiger_ws_fieldtype` (`fieldtypeid`, `uitype`, `fieldtype`) VALUES
(1, '15', 'picklist'),
(2, '16', 'picklist'),
(3, '19', 'text'),
(4, '20', 'text'),
(5, '21', 'text'),
(6, '24', 'text'),
(7, '3', 'autogenerated'),
(8, '11', 'phone'),
(9, '33', 'multipicklist'),
(10, '17', 'url'),
(11, '85', 'skype'),
(12, '56', 'boolean'),
(13, '156', 'boolean'),
(14, '53', 'owner'),
(15, '61', 'file'),
(16, '28', 'file'),
(17, '13', 'email'),
(18, '71', 'currency'),
(19, '72', 'currency'),
(20, '50', 'reference'),
(21, '51', 'reference'),
(22, '57', 'reference'),
(23, '58', 'reference'),
(24, '73', 'reference'),
(25, '75', 'reference'),
(26, '76', 'reference'),
(27, '78', 'reference'),
(28, '80', 'reference'),
(29, '81', 'reference'),
(30, '101', 'reference'),
(31, '52', 'reference'),
(32, '357', 'reference'),
(33, '59', 'reference'),
(34, '66', 'reference'),
(35, '77', 'reference'),
(36, '68', 'reference'),
(37, '117', 'reference'),
(38, '26', 'reference'),
(39, '10', 'reference'),
(40, '98', 'reference'),
(41, '69', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_operation`
--

CREATE TABLE `vtiger_ws_operation` (
  `operationid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_method` varchar(64) NOT NULL,
  `type` varchar(8) NOT NULL,
  `prelogin` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ws_operation`
--

INSERT INTO `vtiger_ws_operation` (`operationid`, `name`, `handler_path`, `handler_method`, `type`, `prelogin`) VALUES
(1, 'login', 'include/Webservices/Login.php', 'vtws_login', 'POST', 1),
(2, 'retrieve', 'include/Webservices/Retrieve.php', 'vtws_retrieve', 'GET', 0),
(3, 'create', 'include/Webservices/Create.php', 'vtws_create', 'POST', 0),
(4, 'update', 'include/Webservices/Update.php', 'vtws_update', 'POST', 0),
(5, 'delete', 'include/Webservices/Delete.php', 'vtws_delete', 'POST', 0),
(6, 'sync', 'include/Webservices/GetUpdates.php', 'vtws_sync', 'GET', 0),
(7, 'query', 'include/Webservices/Query.php', 'vtws_query', 'GET', 0),
(8, 'logout', 'include/Webservices/Logout.php', 'vtws_logout', 'POST', 0),
(9, 'listtypes', 'include/Webservices/ModuleTypes.php', 'vtws_listtypes', 'GET', 0),
(10, 'getchallenge', 'include/Webservices/AuthToken.php', 'vtws_getchallenge', 'GET', 1),
(11, 'describe', 'include/Webservices/DescribeObject.php', 'vtws_describe', 'GET', 0),
(12, 'extendsession', 'include/Webservices/ExtendSession.php', 'vtws_extendSession', 'POST', 1),
(13, 'convertlead', 'include/Webservices/ConvertLead.php', 'vtws_convertlead', 'POST', 0),
(14, 'revise', 'include/Webservices/Revise.php', 'vtws_revise', 'POST', 0),
(15, 'changePassword', 'include/Webservices/ChangePassword.php', 'vtws_changePassword', 'POST', 0),
(16, 'deleteUser', 'include/Webservices/DeleteUser.php', 'vtws_deleteUser', 'POST', 0),
(17, 'wsapp_register', 'modules/WSAPP/api/ws/Register.php', 'wsapp_register', 'POST', 0),
(18, 'wsapp_deregister', 'modules/WSAPP/api/ws/DeRegister.php', 'wsapp_deregister', 'POST', 0),
(19, 'wsapp_get', 'modules/WSAPP/api/ws/Get.php', 'wsapp_get', 'POST', 0),
(20, 'wsapp_put', 'modules/WSAPP/api/ws/Put.php', 'wsapp_put', 'POST', 0),
(21, 'wsapp_map', 'modules/WSAPP/api/ws/Map.php', 'wsapp_map', 'POST', 0),
(22, 'mobile.fetchallalerts', 'modules/Mobile/api/wsapi.php', 'mobile_ws_fetchAllAlerts', 'POST', 0),
(23, 'mobile.alertdetailswithmessage', 'modules/Mobile/api/wsapi.php', 'mobile_ws_alertDetailsWithMessage', 'POST', 0),
(24, 'mobile.fetchmodulefilters', 'modules/Mobile/api/wsapi.php', 'mobile_ws_fetchModuleFilters', 'POST', 0),
(25, 'mobile.fetchrecord', 'modules/Mobile/api/wsapi.php', 'mobile_ws_fetchRecord', 'POST', 0),
(26, 'mobile.fetchrecordwithgrouping', 'modules/Mobile/api/wsapi.php', 'mobile_ws_fetchRecordWithGrouping', 'POST', 0),
(27, 'mobile.filterdetailswithcount', 'modules/Mobile/api/wsapi.php', 'mobile_ws_filterDetailsWithCount', 'POST', 0),
(28, 'mobile.listmodulerecords', 'modules/Mobile/api/wsapi.php', 'mobile_ws_listModuleRecords', 'POST', 0),
(29, 'mobile.saverecord', 'modules/Mobile/api/wsapi.php', 'mobile_ws_saveRecord', 'POST', 0),
(30, 'mobile.syncModuleRecords', 'modules/Mobile/api/wsapi.php', 'mobile_ws_syncModuleRecords', 'POST', 0),
(31, 'mobile.query', 'modules/Mobile/api/wsapi.php', 'mobile_ws_query', 'POST', 0),
(32, 'mobile.querywithgrouping', 'modules/Mobile/api/wsapi.php', 'mobile_ws_queryWithGrouping', 'POST', 0),
(33, 'retrieve_inventory', 'include/Webservices/LineItem/RetrieveInventory.php', 'vtws_retrieve_inventory', 'GET', 0),
(34, 'relatedtypes', 'include/Webservices/RelatedTypes.php', 'vtws_relatedtypes', 'GET', 0),
(35, 'retrieve_related', 'include/Webservices/RetrieveRelated.php', 'vtws_retrieve_related', 'GET', 0),
(36, 'query_related', 'include/Webservices/QueryRelated.php', 'vtws_query_related', 'GET', 0),
(37, 'add_related', 'include/Webservices/AddRelated.php', 'vtws_add_related', 'POST', 0),
(38, 'files_retrieve', 'include/Webservices/FileRetrieve.php', 'vtws_file_retrieve', 'GET', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_operation_parameters`
--

CREATE TABLE `vtiger_ws_operation_parameters` (
  `operationid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `type` varchar(64) NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ws_operation_parameters`
--

INSERT INTO `vtiger_ws_operation_parameters` (`operationid`, `name`, `type`, `sequence`) VALUES
(1, 'accessKey', 'String', 2),
(1, 'username', 'String', 1),
(2, 'id', 'String', 1),
(3, 'element', 'encoded', 2),
(3, 'elementType', 'String', 1),
(4, 'element', 'encoded', 1),
(5, 'id', 'String', 1),
(6, 'elementType', 'String', 2),
(6, 'modifiedTime', 'DateTime', 1),
(7, 'query', 'String', 1),
(8, 'sessionName', 'String', 1),
(9, 'fieldTypeList', 'encoded', 1),
(10, 'username', 'String', 1),
(11, 'elementType', 'String', 1),
(13, 'accountName', 'String', 3),
(13, 'assignedTo', 'String', 2),
(13, 'avoidPotential', 'Boolean', 4),
(13, 'leadId', 'String', 1),
(13, 'potential', 'Encoded', 5),
(14, 'element', 'Encoded', 1),
(15, 'confirmPassword', 'String', 4),
(15, 'id', 'String', 1),
(15, 'newPassword', 'String', 3),
(15, 'oldPassword', 'String', 2),
(16, 'id', 'String', 1),
(16, 'newOwnerId', 'String', 2),
(17, 'synctype', 'string', 2),
(17, 'type', 'string', 1),
(18, 'key', 'string', 2),
(18, 'type', 'string', 1),
(19, 'key', 'string', 1),
(19, 'module', 'string', 2),
(19, 'token', 'string', 3),
(20, 'element', 'encoded', 2),
(20, 'key', 'string', 1),
(21, 'element', 'encoded', 2),
(21, 'key', 'string', 1),
(23, 'alertid', 'string', 1),
(24, 'module', 'string', 1),
(25, 'record', 'string', 1),
(26, 'record', 'string', 1),
(27, 'filterid', 'string', 1),
(28, 'elements', 'encoded', 1),
(29, 'module', 'string', 1),
(29, 'record', 'string', 2),
(29, 'values', 'encoded', 3),
(30, 'module', 'string', 1),
(30, 'page', 'string', 3),
(30, 'syncToken', 'string', 2),
(31, 'module', 'string', 1),
(31, 'page', 'string', 3),
(31, 'query', 'string', 2),
(32, 'module', 'string', 1),
(32, 'page', 'string', 3),
(32, 'query', 'string', 2),
(33, 'id', 'String', 1),
(34, 'elementType', 'string', 1),
(35, 'id', 'string', 1),
(35, 'relatedLabel', 'string', 3),
(35, 'relatedType', 'string', 2),
(36, 'id', 'string', 2),
(36, 'query', 'string', 1),
(36, 'relatedLabel', 'string', 3),
(37, 'relatedRecordId', 'string', 2),
(37, 'relationIdLabel', 'string', 3),
(37, 'sourceRecordId', 'string', 1),
(38, 'id', 'string', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_operation_seq`
--

CREATE TABLE `vtiger_ws_operation_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ws_operation_seq`
--

INSERT INTO `vtiger_ws_operation_seq` (`id`) VALUES
(38);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_referencetype`
--

CREATE TABLE `vtiger_ws_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_ws_referencetype`
--

INSERT INTO `vtiger_ws_referencetype` (`fieldtypeid`, `type`) VALUES
(20, 'Accounts'),
(21, 'Accounts'),
(22, 'Contacts'),
(23, 'Campaigns'),
(24, 'Accounts'),
(25, 'Vendors'),
(26, 'Potentials'),
(27, 'Quotes'),
(28, 'SalesOrder'),
(29, 'Vendors'),
(30, 'Users'),
(31, 'Users'),
(32, 'Accounts'),
(32, 'Contacts'),
(32, 'Leads'),
(32, 'Users'),
(32, 'Vendors'),
(33, 'Products'),
(34, 'Accounts'),
(34, 'Campaigns'),
(34, 'HelpDesk'),
(34, 'Invoice'),
(34, 'Leads'),
(34, 'Potentials'),
(34, 'PurchaseOrder'),
(34, 'Quotes'),
(34, 'SalesOrder'),
(35, 'Users'),
(36, 'Accounts'),
(36, 'Contacts'),
(37, 'Currency'),
(38, 'DocumentFolders');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_userauthtoken`
--

CREATE TABLE `vtiger_ws_userauthtoken` (
  `userid` int(19) NOT NULL,
  `token` varchar(36) NOT NULL,
  `expiretime` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `com_vtiger_workflows`
--
ALTER TABLE `com_vtiger_workflows`
  ADD PRIMARY KEY (`workflow_id`),
  ADD UNIQUE KEY `com_vtiger_workflows_idx` (`workflow_id`);

--
-- Indexes for table `com_vtiger_workflowtasks`
--
ALTER TABLE `com_vtiger_workflowtasks`
  ADD PRIMARY KEY (`task_id`),
  ADD UNIQUE KEY `com_vtiger_workflowtasks_idx` (`task_id`);

--
-- Indexes for table `com_vtiger_workflowtasks_entitymethod`
--
ALTER TABLE `com_vtiger_workflowtasks_entitymethod`
  ADD PRIMARY KEY (`workflowtasks_entitymethod_id`),
  ADD UNIQUE KEY `com_vtiger_workflowtasks_entitymethod_idx` (`workflowtasks_entitymethod_id`);

--
-- Indexes for table `com_vtiger_workflowtemplates`
--
ALTER TABLE `com_vtiger_workflowtemplates`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `com_vtiger_workflow_activatedonce`
--
ALTER TABLE `com_vtiger_workflow_activatedonce`
  ADD PRIMARY KEY (`workflow_id`,`entity_id`);

--
-- Indexes for table `vtiger_account`
--
ALTER TABLE `vtiger_account`
  ADD PRIMARY KEY (`accountid`),
  ADD KEY `account_account_type_idx` (`account_type`),
  ADD KEY `email_idx` (`email1`,`email2`);

--
-- Indexes for table `vtiger_accountbillads`
--
ALTER TABLE `vtiger_accountbillads`
  ADD PRIMARY KEY (`accountaddressid`);

--
-- Indexes for table `vtiger_accountrating`
--
ALTER TABLE `vtiger_accountrating`
  ADD PRIMARY KEY (`accountratingid`),
  ADD UNIQUE KEY `accountrating_rating_idx` (`rating`);

--
-- Indexes for table `vtiger_accountscf`
--
ALTER TABLE `vtiger_accountscf`
  ADD PRIMARY KEY (`accountid`);

--
-- Indexes for table `vtiger_accountshipads`
--
ALTER TABLE `vtiger_accountshipads`
  ADD PRIMARY KEY (`accountaddressid`);

--
-- Indexes for table `vtiger_accounttype`
--
ALTER TABLE `vtiger_accounttype`
  ADD PRIMARY KEY (`accounttypeid`),
  ADD UNIQUE KEY `accounttype_accounttype_idx` (`accounttype`);

--
-- Indexes for table `vtiger_actionmapping`
--
ALTER TABLE `vtiger_actionmapping`
  ADD PRIMARY KEY (`actionid`,`actionname`);

--
-- Indexes for table `vtiger_activity`
--
ALTER TABLE `vtiger_activity`
  ADD PRIMARY KEY (`activityid`),
  ADD KEY `activity_activityid_subject_idx` (`activityid`,`subject`),
  ADD KEY `activity_activitytype_date_start_idx` (`activitytype`,`date_start`),
  ADD KEY `activity_date_start_due_date_idx` (`date_start`,`due_date`),
  ADD KEY `activity_date_start_time_start_idx` (`date_start`,`time_start`),
  ADD KEY `activity_eventstatus_idx` (`eventstatus`),
  ADD KEY `activity_status_idx` (`status`);

--
-- Indexes for table `vtiger_activitycf`
--
ALTER TABLE `vtiger_activitycf`
  ADD PRIMARY KEY (`activityid`);

--
-- Indexes for table `vtiger_activityproductrel`
--
ALTER TABLE `vtiger_activityproductrel`
  ADD PRIMARY KEY (`activityid`,`productid`),
  ADD KEY `activityproductrel_activityid_idx` (`activityid`),
  ADD KEY `activityproductrel_productid_idx` (`productid`);

--
-- Indexes for table `vtiger_activitytype`
--
ALTER TABLE `vtiger_activitytype`
  ADD PRIMARY KEY (`activitytypeid`),
  ADD UNIQUE KEY `activitytype_activitytype_idx` (`activitytype`);

--
-- Indexes for table `vtiger_activity_reminder`
--
ALTER TABLE `vtiger_activity_reminder`
  ADD PRIMARY KEY (`activity_id`,`recurringid`);

--
-- Indexes for table `vtiger_activity_reminder_popup`
--
ALTER TABLE `vtiger_activity_reminder_popup`
  ADD PRIMARY KEY (`reminderid`);

--
-- Indexes for table `vtiger_activity_view`
--
ALTER TABLE `vtiger_activity_view`
  ADD PRIMARY KEY (`activity_viewid`);

--
-- Indexes for table `vtiger_announcement`
--
ALTER TABLE `vtiger_announcement`
  ADD PRIMARY KEY (`creatorid`),
  ADD KEY `announcement_creatorid_idx` (`creatorid`);

--
-- Indexes for table `vtiger_app2tab`
--
ALTER TABLE `vtiger_app2tab`
  ADD KEY `vtiger_app2tab_fk_tab` (`tabid`);

--
-- Indexes for table `vtiger_assets`
--
ALTER TABLE `vtiger_assets`
  ADD PRIMARY KEY (`assetsid`);

--
-- Indexes for table `vtiger_assetscf`
--
ALTER TABLE `vtiger_assetscf`
  ADD PRIMARY KEY (`assetsid`);

--
-- Indexes for table `vtiger_assetstatus`
--
ALTER TABLE `vtiger_assetstatus`
  ADD PRIMARY KEY (`assetstatusid`);

--
-- Indexes for table `vtiger_asteriskincomingevents`
--
ALTER TABLE `vtiger_asteriskincomingevents`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `vtiger_attachments`
--
ALTER TABLE `vtiger_attachments`
  ADD PRIMARY KEY (`attachmentsid`),
  ADD KEY `attachments_attachmentsid_idx` (`attachmentsid`);

--
-- Indexes for table `vtiger_attachmentsfolder`
--
ALTER TABLE `vtiger_attachmentsfolder`
  ADD PRIMARY KEY (`folderid`);

--
-- Indexes for table `vtiger_audit_trial`
--
ALTER TABLE `vtiger_audit_trial`
  ADD PRIMARY KEY (`auditid`);

--
-- Indexes for table `vtiger_blocks`
--
ALTER TABLE `vtiger_blocks`
  ADD PRIMARY KEY (`blockid`),
  ADD KEY `block_tabid_idx` (`tabid`);

--
-- Indexes for table `vtiger_calendarsharedtype`
--
ALTER TABLE `vtiger_calendarsharedtype`
  ADD PRIMARY KEY (`calendarsharedtypeid`);

--
-- Indexes for table `vtiger_calendar_default_activitytypes`
--
ALTER TABLE `vtiger_calendar_default_activitytypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_calendar_user_activitytypes`
--
ALTER TABLE `vtiger_calendar_user_activitytypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_callduration`
--
ALTER TABLE `vtiger_callduration`
  ADD PRIMARY KEY (`calldurationid`);

--
-- Indexes for table `vtiger_campaign`
--
ALTER TABLE `vtiger_campaign`
  ADD PRIMARY KEY (`campaignid`),
  ADD KEY `campaign_campaignstatus_idx` (`campaignstatus`),
  ADD KEY `campaign_campaignname_idx` (`campaignname`),
  ADD KEY `campaign_campaignid_idx` (`campaignid`);

--
-- Indexes for table `vtiger_campaigncontrel`
--
ALTER TABLE `vtiger_campaigncontrel`
  ADD PRIMARY KEY (`campaignid`,`contactid`,`campaignrelstatusid`),
  ADD KEY `campaigncontrel_contractid_idx` (`contactid`);

--
-- Indexes for table `vtiger_campaignleadrel`
--
ALTER TABLE `vtiger_campaignleadrel`
  ADD PRIMARY KEY (`campaignid`,`leadid`,`campaignrelstatusid`),
  ADD KEY `campaignleadrel_leadid_campaignid_idx` (`leadid`,`campaignid`);

--
-- Indexes for table `vtiger_campaignscf`
--
ALTER TABLE `vtiger_campaignscf`
  ADD PRIMARY KEY (`campaignid`);

--
-- Indexes for table `vtiger_campaignstatus`
--
ALTER TABLE `vtiger_campaignstatus`
  ADD PRIMARY KEY (`campaignstatusid`),
  ADD KEY `campaignstatus_campaignstatus_idx` (`campaignstatus`);

--
-- Indexes for table `vtiger_campaigntype`
--
ALTER TABLE `vtiger_campaigntype`
  ADD PRIMARY KEY (`campaigntypeid`),
  ADD UNIQUE KEY `campaigntype_campaigntype_idx` (`campaigntype`);

--
-- Indexes for table `vtiger_carrier`
--
ALTER TABLE `vtiger_carrier`
  ADD PRIMARY KEY (`carrierid`),
  ADD UNIQUE KEY `carrier_carrier_idx` (`carrier`);

--
-- Indexes for table `vtiger_cntactivityrel`
--
ALTER TABLE `vtiger_cntactivityrel`
  ADD PRIMARY KEY (`contactid`,`activityid`),
  ADD KEY `cntactivityrel_contactid_idx` (`contactid`),
  ADD KEY `cntactivityrel_activityid_idx` (`activityid`);

--
-- Indexes for table `vtiger_contactaddress`
--
ALTER TABLE `vtiger_contactaddress`
  ADD PRIMARY KEY (`contactaddressid`);

--
-- Indexes for table `vtiger_contactdetails`
--
ALTER TABLE `vtiger_contactdetails`
  ADD PRIMARY KEY (`contactid`),
  ADD KEY `contactdetails_accountid_idx` (`accountid`),
  ADD KEY `email_idx` (`email`);

--
-- Indexes for table `vtiger_contactscf`
--
ALTER TABLE `vtiger_contactscf`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `vtiger_contactsubdetails`
--
ALTER TABLE `vtiger_contactsubdetails`
  ADD PRIMARY KEY (`contactsubscriptionid`);

--
-- Indexes for table `vtiger_contpotentialrel`
--
ALTER TABLE `vtiger_contpotentialrel`
  ADD PRIMARY KEY (`contactid`,`potentialid`),
  ADD KEY `contpotentialrel_potentialid_idx` (`potentialid`),
  ADD KEY `contpotentialrel_contactid_idx` (`contactid`);

--
-- Indexes for table `vtiger_contract_priority`
--
ALTER TABLE `vtiger_contract_priority`
  ADD PRIMARY KEY (`contract_priorityid`);

--
-- Indexes for table `vtiger_contract_status`
--
ALTER TABLE `vtiger_contract_status`
  ADD PRIMARY KEY (`contract_statusid`);

--
-- Indexes for table `vtiger_contract_type`
--
ALTER TABLE `vtiger_contract_type`
  ADD PRIMARY KEY (`contract_typeid`);

--
-- Indexes for table `vtiger_convertleadmapping`
--
ALTER TABLE `vtiger_convertleadmapping`
  ADD PRIMARY KEY (`cfmid`);

--
-- Indexes for table `vtiger_convertpotentialmapping`
--
ALTER TABLE `vtiger_convertpotentialmapping`
  ADD PRIMARY KEY (`cfmid`);

--
-- Indexes for table `vtiger_crmentity`
--
ALTER TABLE `vtiger_crmentity`
  ADD PRIMARY KEY (`crmid`),
  ADD KEY `crmentity_smcreatorid_idx` (`smcreatorid`),
  ADD KEY `crmentity_modifiedby_idx` (`modifiedby`),
  ADD KEY `crmentity_deleted_idx` (`deleted`),
  ADD KEY `crm_ownerid_del_setype_idx` (`smownerid`,`deleted`,`setype`),
  ADD KEY `vtiger_crmentity_labelidx` (`label`);

--
-- Indexes for table `vtiger_crmentityrel`
--
ALTER TABLE `vtiger_crmentityrel`
  ADD KEY `crmid_idx` (`crmid`),
  ADD KEY `relcrmid_idx` (`relcrmid`);

--
-- Indexes for table `vtiger_crmentity_user_field`
--
ALTER TABLE `vtiger_crmentity_user_field`
  ADD KEY `record_user_idx` (`recordid`,`userid`);

--
-- Indexes for table `vtiger_cron_task`
--
ALTER TABLE `vtiger_cron_task`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `handler_file` (`handler_file`);

--
-- Indexes for table `vtiger_currencies`
--
ALTER TABLE `vtiger_currencies`
  ADD PRIMARY KEY (`currencyid`);

--
-- Indexes for table `vtiger_currency`
--
ALTER TABLE `vtiger_currency`
  ADD PRIMARY KEY (`currencyid`),
  ADD UNIQUE KEY `currency_currency_idx` (`currency`);

--
-- Indexes for table `vtiger_currency_decimal_separator`
--
ALTER TABLE `vtiger_currency_decimal_separator`
  ADD PRIMARY KEY (`currency_decimal_separatorid`);

--
-- Indexes for table `vtiger_currency_grouping_pattern`
--
ALTER TABLE `vtiger_currency_grouping_pattern`
  ADD PRIMARY KEY (`currency_grouping_patternid`);

--
-- Indexes for table `vtiger_currency_grouping_separator`
--
ALTER TABLE `vtiger_currency_grouping_separator`
  ADD PRIMARY KEY (`currency_grouping_separatorid`);

--
-- Indexes for table `vtiger_currency_info`
--
ALTER TABLE `vtiger_currency_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_currency_symbol_placement`
--
ALTER TABLE `vtiger_currency_symbol_placement`
  ADD PRIMARY KEY (`currency_symbol_placementid`);

--
-- Indexes for table `vtiger_customaction`
--
ALTER TABLE `vtiger_customaction`
  ADD KEY `customaction_cvid_idx` (`cvid`);

--
-- Indexes for table `vtiger_customerdetails`
--
ALTER TABLE `vtiger_customerdetails`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `vtiger_customerportal_fields`
--
ALTER TABLE `vtiger_customerportal_fields`
  ADD PRIMARY KEY (`tabid`);

--
-- Indexes for table `vtiger_customerportal_prefs`
--
ALTER TABLE `vtiger_customerportal_prefs`
  ADD PRIMARY KEY (`tabid`,`prefkey`);

--
-- Indexes for table `vtiger_customerportal_relatedmoduleinfo`
--
ALTER TABLE `vtiger_customerportal_relatedmoduleinfo`
  ADD PRIMARY KEY (`tabid`);

--
-- Indexes for table `vtiger_customerportal_tabs`
--
ALTER TABLE `vtiger_customerportal_tabs`
  ADD PRIMARY KEY (`tabid`);

--
-- Indexes for table `vtiger_customview`
--
ALTER TABLE `vtiger_customview`
  ADD PRIMARY KEY (`cvid`),
  ADD KEY `customview_entitytype_idx` (`entitytype`);

--
-- Indexes for table `vtiger_cv2group`
--
ALTER TABLE `vtiger_cv2group`
  ADD KEY `vtiger_cv2group_ibfk_1` (`cvid`),
  ADD KEY `vtiger_groups_ibfk_1` (`groupid`);

--
-- Indexes for table `vtiger_cv2role`
--
ALTER TABLE `vtiger_cv2role`
  ADD KEY `vtiger_cv2role_ibfk_1` (`cvid`),
  ADD KEY `vtiger_role_ibfk_1` (`roleid`);

--
-- Indexes for table `vtiger_cv2rs`
--
ALTER TABLE `vtiger_cv2rs`
  ADD KEY `vtiger_cv2role_ibfk_1` (`cvid`),
  ADD KEY `vtiger_rolesd_ibfk_1` (`rsid`);

--
-- Indexes for table `vtiger_cv2users`
--
ALTER TABLE `vtiger_cv2users`
  ADD KEY `vtiger_cv2users_ibfk_1` (`cvid`),
  ADD KEY `vtiger_users_ibfk_1` (`userid`);

--
-- Indexes for table `vtiger_cvadvfilter`
--
ALTER TABLE `vtiger_cvadvfilter`
  ADD PRIMARY KEY (`cvid`,`columnindex`),
  ADD KEY `cvadvfilter_cvid_idx` (`cvid`);

--
-- Indexes for table `vtiger_cvadvfilter_grouping`
--
ALTER TABLE `vtiger_cvadvfilter_grouping`
  ADD PRIMARY KEY (`groupid`,`cvid`);

--
-- Indexes for table `vtiger_cvcolumnlist`
--
ALTER TABLE `vtiger_cvcolumnlist`
  ADD PRIMARY KEY (`cvid`,`columnindex`),
  ADD KEY `cvcolumnlist_columnindex_idx` (`columnindex`),
  ADD KEY `cvcolumnlist_cvid_idx` (`cvid`);

--
-- Indexes for table `vtiger_cvstdfilter`
--
ALTER TABLE `vtiger_cvstdfilter`
  ADD KEY `cvstdfilter_cvid_idx` (`cvid`);

--
-- Indexes for table `vtiger_dashboard_tabs`
--
ALTER TABLE `vtiger_dashboard_tabs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tabname` (`tabname`,`userid`),
  ADD KEY `vtiger_dashboard_tabs_ibfk_1` (`userid`);

--
-- Indexes for table `vtiger_datashare_grp2grp`
--
ALTER TABLE `vtiger_datashare_grp2grp`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_grp2grp_share_groupid_idx` (`share_groupid`),
  ADD KEY `datashare_grp2grp_to_groupid_idx` (`to_groupid`);

--
-- Indexes for table `vtiger_datashare_grp2role`
--
ALTER TABLE `vtiger_datashare_grp2role`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `idx_datashare_grp2role_share_groupid` (`share_groupid`),
  ADD KEY `idx_datashare_grp2role_to_roleid` (`to_roleid`);

--
-- Indexes for table `vtiger_datashare_grp2rs`
--
ALTER TABLE `vtiger_datashare_grp2rs`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_grp2rs_share_groupid_idx` (`share_groupid`),
  ADD KEY `datashare_grp2rs_to_roleandsubid_idx` (`to_roleandsubid`);

--
-- Indexes for table `vtiger_datashare_module_rel`
--
ALTER TABLE `vtiger_datashare_module_rel`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `idx_datashare_module_rel_tabid` (`tabid`);

--
-- Indexes for table `vtiger_datashare_relatedmodules`
--
ALTER TABLE `vtiger_datashare_relatedmodules`
  ADD PRIMARY KEY (`datashare_relatedmodule_id`),
  ADD KEY `datashare_relatedmodules_tabid_idx` (`tabid`),
  ADD KEY `datashare_relatedmodules_relatedto_tabid_idx` (`relatedto_tabid`);

--
-- Indexes for table `vtiger_datashare_relatedmodule_permission`
--
ALTER TABLE `vtiger_datashare_relatedmodule_permission`
  ADD PRIMARY KEY (`shareid`,`datashare_relatedmodule_id`),
  ADD KEY `datashare_relatedmodule_permission_shareid_permissions_idx` (`shareid`,`permission`);

--
-- Indexes for table `vtiger_datashare_role2group`
--
ALTER TABLE `vtiger_datashare_role2group`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `idx_datashare_role2group_share_roleid` (`share_roleid`),
  ADD KEY `idx_datashare_role2group_to_groupid` (`to_groupid`);

--
-- Indexes for table `vtiger_datashare_role2role`
--
ALTER TABLE `vtiger_datashare_role2role`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_role2role_share_roleid_idx` (`share_roleid`),
  ADD KEY `datashare_role2role_to_roleid_idx` (`to_roleid`);

--
-- Indexes for table `vtiger_datashare_role2rs`
--
ALTER TABLE `vtiger_datashare_role2rs`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_role2s_share_roleid_idx` (`share_roleid`),
  ADD KEY `datashare_role2s_to_roleandsubid_idx` (`to_roleandsubid`);

--
-- Indexes for table `vtiger_datashare_rs2grp`
--
ALTER TABLE `vtiger_datashare_rs2grp`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_rs2grp_share_roleandsubid_idx` (`share_roleandsubid`),
  ADD KEY `datashare_rs2grp_to_groupid_idx` (`to_groupid`);

--
-- Indexes for table `vtiger_datashare_rs2role`
--
ALTER TABLE `vtiger_datashare_rs2role`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_rs2role_share_roleandsubid_idx` (`share_roleandsubid`),
  ADD KEY `datashare_rs2role_to_roleid_idx` (`to_roleid`);

--
-- Indexes for table `vtiger_datashare_rs2rs`
--
ALTER TABLE `vtiger_datashare_rs2rs`
  ADD PRIMARY KEY (`shareid`),
  ADD KEY `datashare_rs2rs_share_roleandsubid_idx` (`share_roleandsubid`),
  ADD KEY `idx_datashare_rs2rs_to_roleandsubid_idx` (`to_roleandsubid`);

--
-- Indexes for table `vtiger_date_format`
--
ALTER TABLE `vtiger_date_format`
  ADD PRIMARY KEY (`date_formatid`);

--
-- Indexes for table `vtiger_dayoftheweek`
--
ALTER TABLE `vtiger_dayoftheweek`
  ADD PRIMARY KEY (`dayoftheweekid`);

--
-- Indexes for table `vtiger_defaultactivitytype`
--
ALTER TABLE `vtiger_defaultactivitytype`
  ADD PRIMARY KEY (`defaultactivitytypeid`);

--
-- Indexes for table `vtiger_defaultcalendarview`
--
ALTER TABLE `vtiger_defaultcalendarview`
  ADD PRIMARY KEY (`defaultcalendarviewid`);

--
-- Indexes for table `vtiger_defaultcv`
--
ALTER TABLE `vtiger_defaultcv`
  ADD PRIMARY KEY (`tabid`);

--
-- Indexes for table `vtiger_defaulteventstatus`
--
ALTER TABLE `vtiger_defaulteventstatus`
  ADD PRIMARY KEY (`defaulteventstatusid`);

--
-- Indexes for table `vtiger_defaultlandingpage`
--
ALTER TABLE `vtiger_defaultlandingpage`
  ADD PRIMARY KEY (`defaultlandingpageid`);

--
-- Indexes for table `vtiger_default_record_view`
--
ALTER TABLE `vtiger_default_record_view`
  ADD PRIMARY KEY (`default_record_viewid`);

--
-- Indexes for table `vtiger_def_org_field`
--
ALTER TABLE `vtiger_def_org_field`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `def_org_field_tabid_fieldid_idx` (`tabid`,`fieldid`),
  ADD KEY `def_org_field_tabid_idx` (`tabid`),
  ADD KEY `def_org_field_visible_fieldid_idx` (`visible`,`fieldid`);

--
-- Indexes for table `vtiger_def_org_share`
--
ALTER TABLE `vtiger_def_org_share`
  ADD PRIMARY KEY (`ruleid`),
  ADD KEY `fk_1_vtiger_def_org_share` (`permission`);

--
-- Indexes for table `vtiger_durationhrs`
--
ALTER TABLE `vtiger_durationhrs`
  ADD PRIMARY KEY (`hrsid`);

--
-- Indexes for table `vtiger_durationmins`
--
ALTER TABLE `vtiger_durationmins`
  ADD PRIMARY KEY (`minsid`);

--
-- Indexes for table `vtiger_duration_minutes`
--
ALTER TABLE `vtiger_duration_minutes`
  ADD PRIMARY KEY (`minutesid`);

--
-- Indexes for table `vtiger_emaildetails`
--
ALTER TABLE `vtiger_emaildetails`
  ADD PRIMARY KEY (`emailid`);

--
-- Indexes for table `vtiger_emailslookup`
--
ALTER TABLE `vtiger_emailslookup`
  ADD UNIQUE KEY `emailslookup_crmid_setype_fieldname_uk` (`crmid`,`setype`,`fieldid`),
  ADD KEY `emailslookup_fieldid_setype_idx` (`fieldid`,`setype`);

--
-- Indexes for table `vtiger_emails_recipientprefs`
--
ALTER TABLE `vtiger_emails_recipientprefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_emailtemplates`
--
ALTER TABLE `vtiger_emailtemplates`
  ADD PRIMARY KEY (`templateid`),
  ADD KEY `emailtemplates_foldernamd_templatename_subject_idx` (`foldername`,`templatename`,`subject`);

--
-- Indexes for table `vtiger_email_track`
--
ALTER TABLE `vtiger_email_track`
  ADD UNIQUE KEY `link_tabidtype_idx` (`crmid`,`mailid`);

--
-- Indexes for table `vtiger_entityname`
--
ALTER TABLE `vtiger_entityname`
  ADD PRIMARY KEY (`tabid`),
  ADD KEY `entityname_tabid_idx` (`tabid`);

--
-- Indexes for table `vtiger_eventhandlers`
--
ALTER TABLE `vtiger_eventhandlers`
  ADD PRIMARY KEY (`eventhandler_id`,`event_name`,`handler_class`),
  ADD UNIQUE KEY `eventhandler_idx` (`eventhandler_id`);

--
-- Indexes for table `vtiger_eventhandler_module`
--
ALTER TABLE `vtiger_eventhandler_module`
  ADD PRIMARY KEY (`eventhandler_module_id`);

--
-- Indexes for table `vtiger_eventstatus`
--
ALTER TABLE `vtiger_eventstatus`
  ADD PRIMARY KEY (`eventstatusid`);

--
-- Indexes for table `vtiger_expectedresponse`
--
ALTER TABLE `vtiger_expectedresponse`
  ADD PRIMARY KEY (`expectedresponseid`),
  ADD UNIQUE KEY `CampaignExpRes_UK01` (`expectedresponse`);

--
-- Indexes for table `vtiger_extnstore_users`
--
ALTER TABLE `vtiger_extnstore_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_faq`
--
ALTER TABLE `vtiger_faq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faq_id_idx` (`id`);

--
-- Indexes for table `vtiger_faqcategories`
--
ALTER TABLE `vtiger_faqcategories`
  ADD PRIMARY KEY (`faqcategories_id`);

--
-- Indexes for table `vtiger_faqcf`
--
ALTER TABLE `vtiger_faqcf`
  ADD PRIMARY KEY (`faqid`);

--
-- Indexes for table `vtiger_faqcomments`
--
ALTER TABLE `vtiger_faqcomments`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `faqcomments_faqid_idx` (`faqid`);

--
-- Indexes for table `vtiger_faqstatus`
--
ALTER TABLE `vtiger_faqstatus`
  ADD PRIMARY KEY (`faqstatus_id`);

--
-- Indexes for table `vtiger_field`
--
ALTER TABLE `vtiger_field`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `field_tabid_idx` (`tabid`),
  ADD KEY `field_fieldname_idx` (`fieldname`),
  ADD KEY `field_block_idx` (`block`),
  ADD KEY `field_displaytype_idx` (`displaytype`);

--
-- Indexes for table `vtiger_freetagged_objects`
--
ALTER TABLE `vtiger_freetagged_objects`
  ADD PRIMARY KEY (`tag_id`,`tagger_id`,`object_id`),
  ADD KEY `freetagged_objects_tag_id_tagger_id_object_id_idx` (`tag_id`,`tagger_id`,`object_id`);

--
-- Indexes for table `vtiger_freetags`
--
ALTER TABLE `vtiger_freetags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_glacct`
--
ALTER TABLE `vtiger_glacct`
  ADD PRIMARY KEY (`glacctid`),
  ADD UNIQUE KEY `glacct_glacct_idx` (`glacct`);

--
-- Indexes for table `vtiger_group2grouprel`
--
ALTER TABLE `vtiger_group2grouprel`
  ADD PRIMARY KEY (`groupid`,`containsgroupid`);

--
-- Indexes for table `vtiger_group2role`
--
ALTER TABLE `vtiger_group2role`
  ADD PRIMARY KEY (`groupid`,`roleid`),
  ADD KEY `fk_2_vtiger_group2role` (`roleid`);

--
-- Indexes for table `vtiger_group2rs`
--
ALTER TABLE `vtiger_group2rs`
  ADD PRIMARY KEY (`groupid`,`roleandsubid`),
  ADD KEY `fk_2_vtiger_group2rs` (`roleandsubid`);

--
-- Indexes for table `vtiger_groups`
--
ALTER TABLE `vtiger_groups`
  ADD PRIMARY KEY (`groupid`),
  ADD UNIQUE KEY `groups_groupname_idx` (`groupname`);

--
-- Indexes for table `vtiger_homedashbd`
--
ALTER TABLE `vtiger_homedashbd`
  ADD PRIMARY KEY (`stuffid`),
  ADD KEY `stuff_stuffid_idx` (`stuffid`);

--
-- Indexes for table `vtiger_homedefault`
--
ALTER TABLE `vtiger_homedefault`
  ADD PRIMARY KEY (`stuffid`),
  ADD KEY `stuff_stuffid_idx` (`stuffid`);

--
-- Indexes for table `vtiger_homemodule`
--
ALTER TABLE `vtiger_homemodule`
  ADD PRIMARY KEY (`stuffid`),
  ADD KEY `stuff_stuffid_idx` (`stuffid`);

--
-- Indexes for table `vtiger_homemoduleflds`
--
ALTER TABLE `vtiger_homemoduleflds`
  ADD KEY `stuff_stuffid_idx` (`stuffid`);

--
-- Indexes for table `vtiger_homereportchart`
--
ALTER TABLE `vtiger_homereportchart`
  ADD PRIMARY KEY (`stuffid`);

--
-- Indexes for table `vtiger_homerss`
--
ALTER TABLE `vtiger_homerss`
  ADD PRIMARY KEY (`stuffid`),
  ADD KEY `stuff_stuffid_idx` (`stuffid`);

--
-- Indexes for table `vtiger_homestuff`
--
ALTER TABLE `vtiger_homestuff`
  ADD PRIMARY KEY (`stuffid`),
  ADD KEY `stuff_stuffid_idx` (`stuffid`),
  ADD KEY `fk_1_vtiger_homestuff` (`userid`);

--
-- Indexes for table `vtiger_home_layout`
--
ALTER TABLE `vtiger_home_layout`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `vtiger_hour_format`
--
ALTER TABLE `vtiger_hour_format`
  ADD PRIMARY KEY (`hour_formatid`);

--
-- Indexes for table `vtiger_import_locks`
--
ALTER TABLE `vtiger_import_locks`
  ADD PRIMARY KEY (`vtiger_import_lock_id`);

--
-- Indexes for table `vtiger_import_maps`
--
ALTER TABLE `vtiger_import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_maps_assigned_user_id_module_name_deleted_idx` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `vtiger_import_queue`
--
ALTER TABLE `vtiger_import_queue`
  ADD PRIMARY KEY (`importid`);

--
-- Indexes for table `vtiger_industry`
--
ALTER TABLE `vtiger_industry`
  ADD PRIMARY KEY (`industryid`),
  ADD UNIQUE KEY `industry_industry_idx` (`industry`);

--
-- Indexes for table `vtiger_inventorycharges`
--
ALTER TABLE `vtiger_inventorycharges`
  ADD PRIMARY KEY (`chargeid`);

--
-- Indexes for table `vtiger_inventorynotification`
--
ALTER TABLE `vtiger_inventorynotification`
  ADD PRIMARY KEY (`notificationid`);

--
-- Indexes for table `vtiger_inventoryproductrel`
--
ALTER TABLE `vtiger_inventoryproductrel`
  ADD PRIMARY KEY (`lineitem_id`),
  ADD KEY `inventoryproductrel_id_idx` (`id`),
  ADD KEY `inventoryproductrel_productid_idx` (`productid`);

--
-- Indexes for table `vtiger_inventoryshippingrel`
--
ALTER TABLE `vtiger_inventoryshippingrel`
  ADD KEY `inventoryishippingrel_id_idx` (`id`);

--
-- Indexes for table `vtiger_inventorytaxinfo`
--
ALTER TABLE `vtiger_inventorytaxinfo`
  ADD PRIMARY KEY (`taxid`),
  ADD KEY `inventorytaxinfo_taxname_idx` (`taxname`);

--
-- Indexes for table `vtiger_inventory_tandc`
--
ALTER TABLE `vtiger_inventory_tandc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_invitees`
--
ALTER TABLE `vtiger_invitees`
  ADD PRIMARY KEY (`activityid`,`inviteeid`);

--
-- Indexes for table `vtiger_invoice`
--
ALTER TABLE `vtiger_invoice`
  ADD PRIMARY KEY (`invoiceid`),
  ADD KEY `invoice_purchaseorderid_idx` (`invoiceid`),
  ADD KEY `fk_2_vtiger_invoice` (`salesorderid`);

--
-- Indexes for table `vtiger_invoicebillads`
--
ALTER TABLE `vtiger_invoicebillads`
  ADD PRIMARY KEY (`invoicebilladdressid`);

--
-- Indexes for table `vtiger_invoicecf`
--
ALTER TABLE `vtiger_invoicecf`
  ADD PRIMARY KEY (`invoiceid`);

--
-- Indexes for table `vtiger_invoiceshipads`
--
ALTER TABLE `vtiger_invoiceshipads`
  ADD PRIMARY KEY (`invoiceshipaddressid`);

--
-- Indexes for table `vtiger_invoicestatus`
--
ALTER TABLE `vtiger_invoicestatus`
  ADD PRIMARY KEY (`invoicestatusid`),
  ADD UNIQUE KEY `invoicestatus_invoiestatus_idx` (`invoicestatus`);

--
-- Indexes for table `vtiger_invoicestatushistory`
--
ALTER TABLE `vtiger_invoicestatushistory`
  ADD PRIMARY KEY (`historyid`),
  ADD KEY `invoicestatushistory_invoiceid_idx` (`invoiceid`);

--
-- Indexes for table `vtiger_invoice_recurring_info`
--
ALTER TABLE `vtiger_invoice_recurring_info`
  ADD PRIMARY KEY (`salesorderid`);

--
-- Indexes for table `vtiger_language`
--
ALTER TABLE `vtiger_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_leadaddress`
--
ALTER TABLE `vtiger_leadaddress`
  ADD PRIMARY KEY (`leadaddressid`);

--
-- Indexes for table `vtiger_leaddetails`
--
ALTER TABLE `vtiger_leaddetails`
  ADD PRIMARY KEY (`leadid`),
  ADD KEY `leaddetails_converted_leadstatus_idx` (`converted`,`leadstatus`),
  ADD KEY `email_idx` (`email`);

--
-- Indexes for table `vtiger_leadscf`
--
ALTER TABLE `vtiger_leadscf`
  ADD PRIMARY KEY (`leadid`);

--
-- Indexes for table `vtiger_leadsource`
--
ALTER TABLE `vtiger_leadsource`
  ADD PRIMARY KEY (`leadsourceid`);

--
-- Indexes for table `vtiger_leadstage`
--
ALTER TABLE `vtiger_leadstage`
  ADD PRIMARY KEY (`leadstageid`),
  ADD UNIQUE KEY `leadstage_stage_idx` (`stage`);

--
-- Indexes for table `vtiger_leadstatus`
--
ALTER TABLE `vtiger_leadstatus`
  ADD PRIMARY KEY (`leadstatusid`);

--
-- Indexes for table `vtiger_leadsubdetails`
--
ALTER TABLE `vtiger_leadsubdetails`
  ADD PRIMARY KEY (`leadsubscriptionid`);

--
-- Indexes for table `vtiger_lead_view`
--
ALTER TABLE `vtiger_lead_view`
  ADD PRIMARY KEY (`lead_viewid`);

--
-- Indexes for table `vtiger_links`
--
ALTER TABLE `vtiger_links`
  ADD PRIMARY KEY (`linkid`),
  ADD KEY `link_tabidtype_idx` (`tabid`,`linktype`);

--
-- Indexes for table `vtiger_loginhistory`
--
ALTER TABLE `vtiger_loginhistory`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `vtiger_mailer_queue`
--
ALTER TABLE `vtiger_mailer_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_mailmanager_mailattachments`
--
ALTER TABLE `vtiger_mailmanager_mailattachments`
  ADD KEY `userid_muid_idx` (`userid`,`muid`);

--
-- Indexes for table `vtiger_mailmanager_mailrecord`
--
ALTER TABLE `vtiger_mailmanager_mailrecord`
  ADD KEY `userid_lastsavedtime_idx` (`userid`,`lastsavedtime`),
  ADD KEY `userid_muid_idx` (`userid`,`muid`);

--
-- Indexes for table `vtiger_mailscanner`
--
ALTER TABLE `vtiger_mailscanner`
  ADD PRIMARY KEY (`scannerid`);

--
-- Indexes for table `vtiger_mailscanner_actions`
--
ALTER TABLE `vtiger_mailscanner_actions`
  ADD PRIMARY KEY (`actionid`);

--
-- Indexes for table `vtiger_mailscanner_folders`
--
ALTER TABLE `vtiger_mailscanner_folders`
  ADD PRIMARY KEY (`folderid`),
  ADD KEY `folderid_idx` (`folderid`);

--
-- Indexes for table `vtiger_mailscanner_ids`
--
ALTER TABLE `vtiger_mailscanner_ids`
  ADD KEY `scanner_message_ids_idx` (`scannerid`,`messageid`),
  ADD KEY `messageids_crmid_idx` (`crmid`);

--
-- Indexes for table `vtiger_mailscanner_rules`
--
ALTER TABLE `vtiger_mailscanner_rules`
  ADD PRIMARY KEY (`ruleid`);

--
-- Indexes for table `vtiger_mail_accounts`
--
ALTER TABLE `vtiger_mail_accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `vtiger_manufacturer`
--
ALTER TABLE `vtiger_manufacturer`
  ADD PRIMARY KEY (`manufacturerid`),
  ADD UNIQUE KEY `manufacturer_manufacturer_idx` (`manufacturer`);

--
-- Indexes for table `vtiger_mobile_alerts`
--
ALTER TABLE `vtiger_mobile_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_modcomments`
--
ALTER TABLE `vtiger_modcomments`
  ADD KEY `relatedto_idx` (`related_to`),
  ADD KEY `fk_crmid_vtiger_modcomments` (`modcommentsid`);

--
-- Indexes for table `vtiger_modcommentscf`
--
ALTER TABLE `vtiger_modcommentscf`
  ADD PRIMARY KEY (`modcommentsid`);

--
-- Indexes for table `vtiger_modentity_num`
--
ALTER TABLE `vtiger_modentity_num`
  ADD PRIMARY KEY (`num_id`),
  ADD UNIQUE KEY `num_idx` (`num_id`),
  ADD KEY `semodule_active_idx` (`semodule`,`active`);

--
-- Indexes for table `vtiger_modtracker_basic`
--
ALTER TABLE `vtiger_modtracker_basic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crmidx` (`crmid`),
  ADD KEY `idx` (`id`);

--
-- Indexes for table `vtiger_modtracker_detail`
--
ALTER TABLE `vtiger_modtracker_detail`
  ADD KEY `idx` (`id`);

--
-- Indexes for table `vtiger_modtracker_relations`
--
ALTER TABLE `vtiger_modtracker_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_modtracker_tabs`
--
ALTER TABLE `vtiger_modtracker_tabs`
  ADD PRIMARY KEY (`tabid`);

--
-- Indexes for table `vtiger_module_dashboard_widgets`
--
ALTER TABLE `vtiger_module_dashboard_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboardtabid` (`dashboardtabid`);

--
-- Indexes for table `vtiger_notes`
--
ALTER TABLE `vtiger_notes`
  ADD PRIMARY KEY (`notesid`),
  ADD KEY `notes_title_idx` (`title`),
  ADD KEY `notes_notesid_idx` (`notesid`);

--
-- Indexes for table `vtiger_notescf`
--
ALTER TABLE `vtiger_notescf`
  ADD PRIMARY KEY (`notesid`);

--
-- Indexes for table `vtiger_notificationscheduler`
--
ALTER TABLE `vtiger_notificationscheduler`
  ADD PRIMARY KEY (`schedulednotificationid`),
  ADD UNIQUE KEY `notificationscheduler_schedulednotificationname_idx` (`schedulednotificationname`);

--
-- Indexes for table `vtiger_no_of_currency_decimals`
--
ALTER TABLE `vtiger_no_of_currency_decimals`
  ADD PRIMARY KEY (`no_of_currency_decimalsid`);

--
-- Indexes for table `vtiger_opportunitystage`
--
ALTER TABLE `vtiger_opportunitystage`
  ADD PRIMARY KEY (`potstageid`),
  ADD UNIQUE KEY `opportunitystage_stage_idx` (`stage`);

--
-- Indexes for table `vtiger_opportunity_type`
--
ALTER TABLE `vtiger_opportunity_type`
  ADD PRIMARY KEY (`opptypeid`),
  ADD UNIQUE KEY `opportunity_type_opportunity_type_idx` (`opportunity_type`);

--
-- Indexes for table `vtiger_organizationdetails`
--
ALTER TABLE `vtiger_organizationdetails`
  ADD PRIMARY KEY (`organization_id`);

--
-- Indexes for table `vtiger_org_share_action2tab`
--
ALTER TABLE `vtiger_org_share_action2tab`
  ADD PRIMARY KEY (`share_action_id`,`tabid`),
  ADD KEY `fk_2_vtiger_org_share_action2tab` (`tabid`);

--
-- Indexes for table `vtiger_org_share_action_mapping`
--
ALTER TABLE `vtiger_org_share_action_mapping`
  ADD PRIMARY KEY (`share_action_id`);

--
-- Indexes for table `vtiger_othereventduration`
--
ALTER TABLE `vtiger_othereventduration`
  ADD PRIMARY KEY (`othereventdurationid`);

--
-- Indexes for table `vtiger_parenttab`
--
ALTER TABLE `vtiger_parenttab`
  ADD PRIMARY KEY (`parenttabid`),
  ADD KEY `parenttab_parenttabid_parenttabl_label_visible_idx` (`parenttabid`,`parenttab_label`,`visible`);

--
-- Indexes for table `vtiger_parenttabrel`
--
ALTER TABLE `vtiger_parenttabrel`
  ADD KEY `parenttabrel_tabid_parenttabid_idx` (`tabid`,`parenttabid`),
  ADD KEY `fk_2_vtiger_parenttabrel` (`parenttabid`);

--
-- Indexes for table `vtiger_pbxmanager`
--
ALTER TABLE `vtiger_pbxmanager`
  ADD PRIMARY KEY (`pbxmanagerid`),
  ADD KEY `index_sourceuuid` (`sourceuuid`),
  ADD KEY `index_pbxmanager_id` (`pbxmanagerid`);

--
-- Indexes for table `vtiger_pbxmanagercf`
--
ALTER TABLE `vtiger_pbxmanagercf`
  ADD PRIMARY KEY (`pbxmanagerid`);

--
-- Indexes for table `vtiger_pbxmanager_gateway`
--
ALTER TABLE `vtiger_pbxmanager_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_pbxmanager_phonelookup`
--
ALTER TABLE `vtiger_pbxmanager_phonelookup`
  ADD UNIQUE KEY `unique_key` (`crmid`,`setype`,`fieldname`),
  ADD KEY `index_phone_number` (`fnumber`,`rnumber`);

--
-- Indexes for table `vtiger_picklist`
--
ALTER TABLE `vtiger_picklist`
  ADD PRIMARY KEY (`picklistid`),
  ADD UNIQUE KEY `picklist_name_idx` (`name`);

--
-- Indexes for table `vtiger_picklist_dependency`
--
ALTER TABLE `vtiger_picklist_dependency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_picklist_transitions`
--
ALTER TABLE `vtiger_picklist_transitions`
  ADD PRIMARY KEY (`fieldname`);

--
-- Indexes for table `vtiger_pobillads`
--
ALTER TABLE `vtiger_pobillads`
  ADD PRIMARY KEY (`pobilladdressid`);

--
-- Indexes for table `vtiger_portal`
--
ALTER TABLE `vtiger_portal`
  ADD PRIMARY KEY (`portalid`),
  ADD KEY `portal_portalname_idx` (`portalname`);

--
-- Indexes for table `vtiger_portalinfo`
--
ALTER TABLE `vtiger_portalinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_poshipads`
--
ALTER TABLE `vtiger_poshipads`
  ADD PRIMARY KEY (`poshipaddressid`);

--
-- Indexes for table `vtiger_postatus`
--
ALTER TABLE `vtiger_postatus`
  ADD PRIMARY KEY (`postatusid`),
  ADD UNIQUE KEY `postatus_postatus_idx` (`postatus`);

--
-- Indexes for table `vtiger_postatushistory`
--
ALTER TABLE `vtiger_postatushistory`
  ADD PRIMARY KEY (`historyid`),
  ADD KEY `postatushistory_purchaseorderid_idx` (`purchaseorderid`);

--
-- Indexes for table `vtiger_potential`
--
ALTER TABLE `vtiger_potential`
  ADD PRIMARY KEY (`potentialid`),
  ADD KEY `potential_relatedto_idx` (`related_to`),
  ADD KEY `potentail_sales_stage_idx` (`sales_stage`),
  ADD KEY `potentail_sales_stage_amount_idx` (`amount`,`sales_stage`);

--
-- Indexes for table `vtiger_potentialscf`
--
ALTER TABLE `vtiger_potentialscf`
  ADD PRIMARY KEY (`potentialid`);

--
-- Indexes for table `vtiger_potstagehistory`
--
ALTER TABLE `vtiger_potstagehistory`
  ADD PRIMARY KEY (`historyid`),
  ADD KEY `potstagehistory_potentialid_idx` (`potentialid`);

--
-- Indexes for table `vtiger_pricebook`
--
ALTER TABLE `vtiger_pricebook`
  ADD PRIMARY KEY (`pricebookid`);

--
-- Indexes for table `vtiger_pricebookcf`
--
ALTER TABLE `vtiger_pricebookcf`
  ADD PRIMARY KEY (`pricebookid`);

--
-- Indexes for table `vtiger_pricebookproductrel`
--
ALTER TABLE `vtiger_pricebookproductrel`
  ADD PRIMARY KEY (`pricebookid`,`productid`),
  ADD KEY `pricebookproductrel_pricebookid_idx` (`pricebookid`),
  ADD KEY `pricebookproductrel_productid_idx` (`productid`);

--
-- Indexes for table `vtiger_priority`
--
ALTER TABLE `vtiger_priority`
  ADD PRIMARY KEY (`priorityid`),
  ADD UNIQUE KEY `priority_priority_idx` (`priority`);

--
-- Indexes for table `vtiger_productcategory`
--
ALTER TABLE `vtiger_productcategory`
  ADD PRIMARY KEY (`productcategoryid`),
  ADD UNIQUE KEY `productcategory_productcategory_idx` (`productcategory`);

--
-- Indexes for table `vtiger_productcf`
--
ALTER TABLE `vtiger_productcf`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `vtiger_products`
--
ALTER TABLE `vtiger_products`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `vtiger_producttaxrel`
--
ALTER TABLE `vtiger_producttaxrel`
  ADD KEY `producttaxrel_productid_idx` (`productid`),
  ADD KEY `producttaxrel_taxid_idx` (`taxid`);

--
-- Indexes for table `vtiger_profile`
--
ALTER TABLE `vtiger_profile`
  ADD PRIMARY KEY (`profileid`);

--
-- Indexes for table `vtiger_profile2field`
--
ALTER TABLE `vtiger_profile2field`
  ADD PRIMARY KEY (`profileid`,`fieldid`),
  ADD KEY `profile2field_profileid_tabid_fieldname_idx` (`profileid`,`tabid`),
  ADD KEY `profile2field_tabid_profileid_idx` (`tabid`,`profileid`),
  ADD KEY `profile2field_visible_profileid_idx` (`visible`,`profileid`);

--
-- Indexes for table `vtiger_profile2globalpermissions`
--
ALTER TABLE `vtiger_profile2globalpermissions`
  ADD PRIMARY KEY (`profileid`,`globalactionid`),
  ADD KEY `idx_profile2globalpermissions` (`profileid`,`globalactionid`);

--
-- Indexes for table `vtiger_profile2standardpermissions`
--
ALTER TABLE `vtiger_profile2standardpermissions`
  ADD PRIMARY KEY (`profileid`,`tabid`,`operation`),
  ADD KEY `profile2standardpermissions_profileid_tabid_operation_idx` (`profileid`,`tabid`,`operation`);

--
-- Indexes for table `vtiger_profile2tab`
--
ALTER TABLE `vtiger_profile2tab`
  ADD KEY `profile2tab_profileid_tabid_idx` (`profileid`,`tabid`);

--
-- Indexes for table `vtiger_profile2utility`
--
ALTER TABLE `vtiger_profile2utility`
  ADD PRIMARY KEY (`profileid`,`tabid`,`activityid`),
  ADD KEY `profile2utility_profileid_tabid_activityid_idx` (`profileid`,`tabid`,`activityid`);

--
-- Indexes for table `vtiger_progress`
--
ALTER TABLE `vtiger_progress`
  ADD PRIMARY KEY (`progressid`);

--
-- Indexes for table `vtiger_project`
--
ALTER TABLE `vtiger_project`
  ADD PRIMARY KEY (`projectid`);

--
-- Indexes for table `vtiger_projectcf`
--
ALTER TABLE `vtiger_projectcf`
  ADD PRIMARY KEY (`projectid`);

--
-- Indexes for table `vtiger_projectmilestone`
--
ALTER TABLE `vtiger_projectmilestone`
  ADD PRIMARY KEY (`projectmilestoneid`);

--
-- Indexes for table `vtiger_projectmilestonecf`
--
ALTER TABLE `vtiger_projectmilestonecf`
  ADD PRIMARY KEY (`projectmilestoneid`);

--
-- Indexes for table `vtiger_projectmilestonetype`
--
ALTER TABLE `vtiger_projectmilestonetype`
  ADD PRIMARY KEY (`projectmilestonetypeid`);

--
-- Indexes for table `vtiger_projectpriority`
--
ALTER TABLE `vtiger_projectpriority`
  ADD PRIMARY KEY (`projectpriorityid`);

--
-- Indexes for table `vtiger_projectstatus`
--
ALTER TABLE `vtiger_projectstatus`
  ADD PRIMARY KEY (`projectstatusid`);

--
-- Indexes for table `vtiger_projecttask`
--
ALTER TABLE `vtiger_projecttask`
  ADD PRIMARY KEY (`projecttaskid`);

--
-- Indexes for table `vtiger_projecttaskcf`
--
ALTER TABLE `vtiger_projecttaskcf`
  ADD PRIMARY KEY (`projecttaskid`);

--
-- Indexes for table `vtiger_projecttaskpriority`
--
ALTER TABLE `vtiger_projecttaskpriority`
  ADD PRIMARY KEY (`projecttaskpriorityid`);

--
-- Indexes for table `vtiger_projecttaskprogress`
--
ALTER TABLE `vtiger_projecttaskprogress`
  ADD PRIMARY KEY (`projecttaskprogressid`);

--
-- Indexes for table `vtiger_projecttaskstatus`
--
ALTER TABLE `vtiger_projecttaskstatus`
  ADD PRIMARY KEY (`projecttaskstatusid`);

--
-- Indexes for table `vtiger_projecttasktype`
--
ALTER TABLE `vtiger_projecttasktype`
  ADD PRIMARY KEY (`projecttasktypeid`);

--
-- Indexes for table `vtiger_projecttask_status_color`
--
ALTER TABLE `vtiger_projecttask_status_color`
  ADD UNIQUE KEY `status` (`status`);

--
-- Indexes for table `vtiger_projecttype`
--
ALTER TABLE `vtiger_projecttype`
  ADD PRIMARY KEY (`projecttypeid`);

--
-- Indexes for table `vtiger_purchaseorder`
--
ALTER TABLE `vtiger_purchaseorder`
  ADD PRIMARY KEY (`purchaseorderid`),
  ADD KEY `purchaseorder_vendorid_idx` (`vendorid`),
  ADD KEY `purchaseorder_quoteid_idx` (`quoteid`),
  ADD KEY `purchaseorder_contactid_idx` (`contactid`);

--
-- Indexes for table `vtiger_purchaseordercf`
--
ALTER TABLE `vtiger_purchaseordercf`
  ADD PRIMARY KEY (`purchaseorderid`);

--
-- Indexes for table `vtiger_quotes`
--
ALTER TABLE `vtiger_quotes`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `quote_quotestage_idx` (`quotestage`),
  ADD KEY `quotes_potentialid_idx` (`potentialid`),
  ADD KEY `quotes_contactid_idx` (`contactid`);

--
-- Indexes for table `vtiger_quotesbillads`
--
ALTER TABLE `vtiger_quotesbillads`
  ADD PRIMARY KEY (`quotebilladdressid`);

--
-- Indexes for table `vtiger_quotescf`
--
ALTER TABLE `vtiger_quotescf`
  ADD PRIMARY KEY (`quoteid`);

--
-- Indexes for table `vtiger_quotesshipads`
--
ALTER TABLE `vtiger_quotesshipads`
  ADD PRIMARY KEY (`quoteshipaddressid`);

--
-- Indexes for table `vtiger_quotestage`
--
ALTER TABLE `vtiger_quotestage`
  ADD PRIMARY KEY (`quotestageid`),
  ADD UNIQUE KEY `quotestage_quotestage_idx` (`quotestage`);

--
-- Indexes for table `vtiger_quotestagehistory`
--
ALTER TABLE `vtiger_quotestagehistory`
  ADD PRIMARY KEY (`historyid`),
  ADD KEY `quotestagehistory_quoteid_idx` (`quoteid`);

--
-- Indexes for table `vtiger_rating`
--
ALTER TABLE `vtiger_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `vtiger_recurringevents`
--
ALTER TABLE `vtiger_recurringevents`
  ADD PRIMARY KEY (`recurringid`),
  ADD KEY `fk_1_vtiger_recurringevents` (`activityid`);

--
-- Indexes for table `vtiger_recurringtype`
--
ALTER TABLE `vtiger_recurringtype`
  ADD PRIMARY KEY (`recurringeventid`),
  ADD UNIQUE KEY `recurringtype_status_idx` (`recurringtype`);

--
-- Indexes for table `vtiger_relatedlists`
--
ALTER TABLE `vtiger_relatedlists`
  ADD PRIMARY KEY (`relation_id`),
  ADD KEY `relatedlists_relation_id_idx` (`relation_id`);

--
-- Indexes for table `vtiger_relcriteria`
--
ALTER TABLE `vtiger_relcriteria`
  ADD PRIMARY KEY (`queryid`,`columnindex`),
  ADD KEY `relcriteria_queryid_idx` (`queryid`);

--
-- Indexes for table `vtiger_relcriteria_grouping`
--
ALTER TABLE `vtiger_relcriteria_grouping`
  ADD PRIMARY KEY (`groupid`,`queryid`);

--
-- Indexes for table `vtiger_reminder_interval`
--
ALTER TABLE `vtiger_reminder_interval`
  ADD PRIMARY KEY (`reminder_intervalid`);

--
-- Indexes for table `vtiger_report`
--
ALTER TABLE `vtiger_report`
  ADD PRIMARY KEY (`reportid`),
  ADD KEY `report_queryid_idx` (`queryid`),
  ADD KEY `report_folderid_idx` (`folderid`);

--
-- Indexes for table `vtiger_reportdatefilter`
--
ALTER TABLE `vtiger_reportdatefilter`
  ADD PRIMARY KEY (`datefilterid`),
  ADD KEY `reportdatefilter_datefilterid_idx` (`datefilterid`);

--
-- Indexes for table `vtiger_reportfolder`
--
ALTER TABLE `vtiger_reportfolder`
  ADD PRIMARY KEY (`folderid`);

--
-- Indexes for table `vtiger_reportgroupbycolumn`
--
ALTER TABLE `vtiger_reportgroupbycolumn`
  ADD KEY `fk_1_vtiger_reportgroupbycolumn` (`reportid`);

--
-- Indexes for table `vtiger_reportmodules`
--
ALTER TABLE `vtiger_reportmodules`
  ADD PRIMARY KEY (`reportmodulesid`);

--
-- Indexes for table `vtiger_reportsortcol`
--
ALTER TABLE `vtiger_reportsortcol`
  ADD PRIMARY KEY (`sortcolid`,`reportid`),
  ADD KEY `fk_1_vtiger_reportsortcol` (`reportid`);

--
-- Indexes for table `vtiger_reportsummary`
--
ALTER TABLE `vtiger_reportsummary`
  ADD PRIMARY KEY (`reportsummaryid`,`summarytype`,`columnname`),
  ADD KEY `reportsummary_reportsummaryid_idx` (`reportsummaryid`);

--
-- Indexes for table `vtiger_reporttype`
--
ALTER TABLE `vtiger_reporttype`
  ADD PRIMARY KEY (`reportid`);

--
-- Indexes for table `vtiger_report_sharegroups`
--
ALTER TABLE `vtiger_report_sharegroups`
  ADD KEY `vtiger_report_sharegroups_ibfk_1` (`reportid`),
  ADD KEY `vtiger_groups_groupid_ibfk_1` (`groupid`);

--
-- Indexes for table `vtiger_report_sharerole`
--
ALTER TABLE `vtiger_report_sharerole`
  ADD KEY `vtiger_report_sharerole_ibfk_1` (`reportid`),
  ADD KEY `vtiger_role_roleid_ibfk_1` (`roleid`);

--
-- Indexes for table `vtiger_report_sharers`
--
ALTER TABLE `vtiger_report_sharers`
  ADD KEY `vtiger_report_sharers_ibfk_1` (`reportid`),
  ADD KEY `vtiger_rolesd_rsid_ibfk_1` (`rsid`);

--
-- Indexes for table `vtiger_report_shareusers`
--
ALTER TABLE `vtiger_report_shareusers`
  ADD KEY `vtiger_report_shareusers_ibfk_1` (`reportid`),
  ADD KEY `vtiger_users_userid_ibfk_1` (`userid`);

--
-- Indexes for table `vtiger_role`
--
ALTER TABLE `vtiger_role`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `vtiger_role2picklist`
--
ALTER TABLE `vtiger_role2picklist`
  ADD PRIMARY KEY (`roleid`,`picklistvalueid`,`picklistid`),
  ADD KEY `role2picklist_roleid_picklistid_idx` (`roleid`,`picklistid`,`picklistvalueid`),
  ADD KEY `fk_2_vtiger_role2picklist` (`picklistid`);

--
-- Indexes for table `vtiger_role2profile`
--
ALTER TABLE `vtiger_role2profile`
  ADD PRIMARY KEY (`roleid`,`profileid`),
  ADD KEY `role2profile_roleid_profileid_idx` (`roleid`,`profileid`);

--
-- Indexes for table `vtiger_rollupcomments_settings`
--
ALTER TABLE `vtiger_rollupcomments_settings`
  ADD PRIMARY KEY (`rollupid`);

--
-- Indexes for table `vtiger_rowheight`
--
ALTER TABLE `vtiger_rowheight`
  ADD PRIMARY KEY (`rowheightid`);

--
-- Indexes for table `vtiger_rss`
--
ALTER TABLE `vtiger_rss`
  ADD PRIMARY KEY (`rssid`);

--
-- Indexes for table `vtiger_salesmanactivityrel`
--
ALTER TABLE `vtiger_salesmanactivityrel`
  ADD PRIMARY KEY (`smid`,`activityid`),
  ADD KEY `salesmanactivityrel_activityid_idx` (`activityid`),
  ADD KEY `salesmanactivityrel_smid_idx` (`smid`);

--
-- Indexes for table `vtiger_salesmanattachmentsrel`
--
ALTER TABLE `vtiger_salesmanattachmentsrel`
  ADD PRIMARY KEY (`smid`,`attachmentsid`),
  ADD KEY `salesmanattachmentsrel_smid_idx` (`smid`),
  ADD KEY `salesmanattachmentsrel_attachmentsid_idx` (`attachmentsid`);

--
-- Indexes for table `vtiger_salesmanticketrel`
--
ALTER TABLE `vtiger_salesmanticketrel`
  ADD PRIMARY KEY (`smid`,`id`),
  ADD KEY `salesmanticketrel_smid_idx` (`smid`),
  ADD KEY `salesmanticketrel_id_idx` (`id`);

--
-- Indexes for table `vtiger_salesorder`
--
ALTER TABLE `vtiger_salesorder`
  ADD PRIMARY KEY (`salesorderid`),
  ADD KEY `salesorder_vendorid_idx` (`vendorid`),
  ADD KEY `salesorder_contactid_idx` (`contactid`);

--
-- Indexes for table `vtiger_salesordercf`
--
ALTER TABLE `vtiger_salesordercf`
  ADD PRIMARY KEY (`salesorderid`);

--
-- Indexes for table `vtiger_sales_stage`
--
ALTER TABLE `vtiger_sales_stage`
  ADD PRIMARY KEY (`sales_stage_id`);

--
-- Indexes for table `vtiger_salutationtype`
--
ALTER TABLE `vtiger_salutationtype`
  ADD PRIMARY KEY (`salutationid`);

--
-- Indexes for table `vtiger_scheduled_reports`
--
ALTER TABLE `vtiger_scheduled_reports`
  ADD PRIMARY KEY (`reportid`);

--
-- Indexes for table `vtiger_seactivityrel`
--
ALTER TABLE `vtiger_seactivityrel`
  ADD PRIMARY KEY (`crmid`,`activityid`),
  ADD KEY `seactivityrel_activityid_idx` (`activityid`),
  ADD KEY `seactivityrel_crmid_idx` (`crmid`);

--
-- Indexes for table `vtiger_seattachmentsrel`
--
ALTER TABLE `vtiger_seattachmentsrel`
  ADD PRIMARY KEY (`crmid`,`attachmentsid`),
  ADD KEY `seattachmentsrel_attachmentsid_idx` (`attachmentsid`),
  ADD KEY `seattachmentsrel_crmid_idx` (`crmid`),
  ADD KEY `seattachmentsrel_attachmentsid_crmid_idx` (`attachmentsid`,`crmid`);

--
-- Indexes for table `vtiger_selectcolumn`
--
ALTER TABLE `vtiger_selectcolumn`
  ADD PRIMARY KEY (`queryid`,`columnindex`),
  ADD KEY `selectcolumn_queryid_idx` (`queryid`);

--
-- Indexes for table `vtiger_selectquery`
--
ALTER TABLE `vtiger_selectquery`
  ADD PRIMARY KEY (`queryid`),
  ADD KEY `selectquery_queryid_idx` (`queryid`);

--
-- Indexes for table `vtiger_senotesrel`
--
ALTER TABLE `vtiger_senotesrel`
  ADD PRIMARY KEY (`crmid`,`notesid`),
  ADD KEY `senotesrel_notesid_idx` (`notesid`),
  ADD KEY `senotesrel_crmid_idx` (`crmid`);

--
-- Indexes for table `vtiger_seproductsrel`
--
ALTER TABLE `vtiger_seproductsrel`
  ADD PRIMARY KEY (`crmid`,`productid`),
  ADD KEY `seproductsrel_productid_idx` (`productid`),
  ADD KEY `seproductrel_crmid_idx` (`crmid`);

--
-- Indexes for table `vtiger_service`
--
ALTER TABLE `vtiger_service`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `vtiger_servicecategory`
--
ALTER TABLE `vtiger_servicecategory`
  ADD PRIMARY KEY (`servicecategoryid`);

--
-- Indexes for table `vtiger_servicecf`
--
ALTER TABLE `vtiger_servicecf`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `vtiger_servicecontracts`
--
ALTER TABLE `vtiger_servicecontracts`
  ADD KEY `fk_crmid_vtiger_servicecontracts` (`servicecontractsid`);

--
-- Indexes for table `vtiger_servicecontractscf`
--
ALTER TABLE `vtiger_servicecontractscf`
  ADD PRIMARY KEY (`servicecontractsid`);

--
-- Indexes for table `vtiger_service_usageunit`
--
ALTER TABLE `vtiger_service_usageunit`
  ADD PRIMARY KEY (`service_usageunitid`);

--
-- Indexes for table `vtiger_seticketsrel`
--
ALTER TABLE `vtiger_seticketsrel`
  ADD PRIMARY KEY (`crmid`,`ticketid`),
  ADD KEY `seticketsrel_crmid_idx` (`crmid`),
  ADD KEY `seticketsrel_ticketid_idx` (`ticketid`);

--
-- Indexes for table `vtiger_settings_blocks`
--
ALTER TABLE `vtiger_settings_blocks`
  ADD PRIMARY KEY (`blockid`);

--
-- Indexes for table `vtiger_settings_field`
--
ALTER TABLE `vtiger_settings_field`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `fk_1_vtiger_settings_field` (`blockid`);

--
-- Indexes for table `vtiger_sharedcalendar`
--
ALTER TABLE `vtiger_sharedcalendar`
  ADD PRIMARY KEY (`userid`,`sharedid`);

--
-- Indexes for table `vtiger_shippingtaxinfo`
--
ALTER TABLE `vtiger_shippingtaxinfo`
  ADD PRIMARY KEY (`taxid`),
  ADD KEY `shippingtaxinfo_taxname_idx` (`taxname`);

--
-- Indexes for table `vtiger_shorturls`
--
ALTER TABLE `vtiger_shorturls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `vtiger_smsnotifier`
--
ALTER TABLE `vtiger_smsnotifier`
  ADD PRIMARY KEY (`smsnotifierid`);

--
-- Indexes for table `vtiger_smsnotifiercf`
--
ALTER TABLE `vtiger_smsnotifiercf`
  ADD PRIMARY KEY (`smsnotifierid`);

--
-- Indexes for table `vtiger_smsnotifier_servers`
--
ALTER TABLE `vtiger_smsnotifier_servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_smsnotifier_status`
--
ALTER TABLE `vtiger_smsnotifier_status`
  ADD PRIMARY KEY (`statusid`);

--
-- Indexes for table `vtiger_sobillads`
--
ALTER TABLE `vtiger_sobillads`
  ADD PRIMARY KEY (`sobilladdressid`);

--
-- Indexes for table `vtiger_soshipads`
--
ALTER TABLE `vtiger_soshipads`
  ADD PRIMARY KEY (`soshipaddressid`);

--
-- Indexes for table `vtiger_sostatus`
--
ALTER TABLE `vtiger_sostatus`
  ADD PRIMARY KEY (`sostatusid`),
  ADD UNIQUE KEY `sostatus_sostatus_idx` (`sostatus`);

--
-- Indexes for table `vtiger_sostatushistory`
--
ALTER TABLE `vtiger_sostatushistory`
  ADD PRIMARY KEY (`historyid`),
  ADD KEY `sostatushistory_salesorderid_idx` (`salesorderid`);

--
-- Indexes for table `vtiger_start_hour`
--
ALTER TABLE `vtiger_start_hour`
  ADD PRIMARY KEY (`start_hourid`);

--
-- Indexes for table `vtiger_status`
--
ALTER TABLE `vtiger_status`
  ADD PRIMARY KEY (`statusid`);

--
-- Indexes for table `vtiger_systems`
--
ALTER TABLE `vtiger_systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_tab`
--
ALTER TABLE `vtiger_tab`
  ADD PRIMARY KEY (`tabid`),
  ADD UNIQUE KEY `tab_name_idx` (`name`),
  ADD KEY `tab_modifiedby_idx` (`modifiedby`),
  ADD KEY `tab_tabid_idx` (`tabid`);

--
-- Indexes for table `vtiger_tab_info`
--
ALTER TABLE `vtiger_tab_info`
  ADD KEY `fk_1_vtiger_tab_info` (`tabid`);

--
-- Indexes for table `vtiger_taskpriority`
--
ALTER TABLE `vtiger_taskpriority`
  ADD PRIMARY KEY (`taskpriorityid`);

--
-- Indexes for table `vtiger_taskstatus`
--
ALTER TABLE `vtiger_taskstatus`
  ADD PRIMARY KEY (`taskstatusid`);

--
-- Indexes for table `vtiger_taxclass`
--
ALTER TABLE `vtiger_taxclass`
  ADD PRIMARY KEY (`taxclassid`),
  ADD UNIQUE KEY `taxclass_carrier_idx` (`taxclass`);

--
-- Indexes for table `vtiger_taxregions`
--
ALTER TABLE `vtiger_taxregions`
  ADD PRIMARY KEY (`regionid`);

--
-- Indexes for table `vtiger_ticketcategories`
--
ALTER TABLE `vtiger_ticketcategories`
  ADD PRIMARY KEY (`ticketcategories_id`);

--
-- Indexes for table `vtiger_ticketcf`
--
ALTER TABLE `vtiger_ticketcf`
  ADD PRIMARY KEY (`ticketid`);

--
-- Indexes for table `vtiger_ticketcomments`
--
ALTER TABLE `vtiger_ticketcomments`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `ticketcomments_ticketid_idx` (`ticketid`);

--
-- Indexes for table `vtiger_ticketpriorities`
--
ALTER TABLE `vtiger_ticketpriorities`
  ADD PRIMARY KEY (`ticketpriorities_id`);

--
-- Indexes for table `vtiger_ticketseverities`
--
ALTER TABLE `vtiger_ticketseverities`
  ADD PRIMARY KEY (`ticketseverities_id`);

--
-- Indexes for table `vtiger_ticketstatus`
--
ALTER TABLE `vtiger_ticketstatus`
  ADD PRIMARY KEY (`ticketstatus_id`);

--
-- Indexes for table `vtiger_time_zone`
--
ALTER TABLE `vtiger_time_zone`
  ADD PRIMARY KEY (`time_zoneid`);

--
-- Indexes for table `vtiger_tmp_read_group_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_group_rel_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  ADD KEY `tmp_read_group_rel_sharing_per_userid_sharedgroupid_tabid` (`userid`,`sharedgroupid`,`tabid`);

--
-- Indexes for table `vtiger_tmp_read_group_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_group_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`sharedgroupid`),
  ADD KEY `tmp_read_group_sharing_per_userid_sharedgroupid_idx` (`userid`,`sharedgroupid`);

--
-- Indexes for table `vtiger_tmp_read_user_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_user_rel_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  ADD KEY `tmp_read_user_rel_sharing_per_userid_shared_reltabid_idx` (`userid`,`shareduserid`,`relatedtabid`);

--
-- Indexes for table `vtiger_tmp_read_user_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_user_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`shareduserid`),
  ADD KEY `tmp_read_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`);

--
-- Indexes for table `vtiger_tmp_write_group_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_group_rel_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  ADD KEY `tmp_write_group_rel_sharing_per_userid_sharedgroupid_tabid_idx` (`userid`,`sharedgroupid`,`tabid`);

--
-- Indexes for table `vtiger_tmp_write_group_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_group_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`sharedgroupid`),
  ADD KEY `tmp_write_group_sharing_per_UK1` (`userid`,`sharedgroupid`);

--
-- Indexes for table `vtiger_tmp_write_user_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_user_rel_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  ADD KEY `tmp_write_user_rel_sharing_per_userid_sharduserid_tabid_idx` (`userid`,`shareduserid`,`tabid`);

--
-- Indexes for table `vtiger_tmp_write_user_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_user_sharing_per`
  ADD PRIMARY KEY (`userid`,`tabid`,`shareduserid`),
  ADD KEY `tmp_write_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`);

--
-- Indexes for table `vtiger_tracker`
--
ALTER TABLE `vtiger_tracker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_tracking_unit`
--
ALTER TABLE `vtiger_tracking_unit`
  ADD PRIMARY KEY (`tracking_unitid`);

--
-- Indexes for table `vtiger_troubletickets`
--
ALTER TABLE `vtiger_troubletickets`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `troubletickets_ticketid_idx` (`ticketid`),
  ADD KEY `troubletickets_status_idx` (`status`);

--
-- Indexes for table `vtiger_usageunit`
--
ALTER TABLE `vtiger_usageunit`
  ADD PRIMARY KEY (`usageunitid`),
  ADD UNIQUE KEY `usageunit_usageunit_idx` (`usageunit`);

--
-- Indexes for table `vtiger_user2mergefields`
--
ALTER TABLE `vtiger_user2mergefields`
  ADD KEY `userid_tabid_idx` (`userid`,`tabid`);

--
-- Indexes for table `vtiger_user2role`
--
ALTER TABLE `vtiger_user2role`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `user2role_roleid_idx` (`roleid`);

--
-- Indexes for table `vtiger_users`
--
ALTER TABLE `vtiger_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_user_name_idx` (`user_name`),
  ADD KEY `user_user_password_idx` (`user_password`);

--
-- Indexes for table `vtiger_users2group`
--
ALTER TABLE `vtiger_users2group`
  ADD PRIMARY KEY (`groupid`,`userid`),
  ADD KEY `users2group_groupname_uerid_idx` (`groupid`,`userid`),
  ADD KEY `fk_2_vtiger_users2group` (`userid`);

--
-- Indexes for table `vtiger_users_last_import`
--
ALTER TABLE `vtiger_users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `vtiger_user_module_preferences`
--
ALTER TABLE `vtiger_user_module_preferences`
  ADD PRIMARY KEY (`userid`,`tabid`),
  ADD KEY `fk_2_vtiger_user_module_preferences` (`tabid`);

--
-- Indexes for table `vtiger_vendor`
--
ALTER TABLE `vtiger_vendor`
  ADD PRIMARY KEY (`vendorid`);

--
-- Indexes for table `vtiger_vendorcf`
--
ALTER TABLE `vtiger_vendorcf`
  ADD PRIMARY KEY (`vendorid`);

--
-- Indexes for table `vtiger_vendorcontactrel`
--
ALTER TABLE `vtiger_vendorcontactrel`
  ADD PRIMARY KEY (`vendorid`,`contactid`),
  ADD KEY `vendorcontactrel_vendorid_idx` (`vendorid`),
  ADD KEY `vendorcontactrel_contact_idx` (`contactid`);

--
-- Indexes for table `vtiger_version`
--
ALTER TABLE `vtiger_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_visibility`
--
ALTER TABLE `vtiger_visibility`
  ADD PRIMARY KEY (`visibilityid`),
  ADD UNIQUE KEY `visibility_visibility_idx` (`visibility`);

--
-- Indexes for table `vtiger_webforms`
--
ALTER TABLE `vtiger_webforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `webformname` (`name`),
  ADD UNIQUE KEY `publicid` (`id`),
  ADD KEY `webforms_webforms_id_idx` (`id`);

--
-- Indexes for table `vtiger_webforms_field`
--
ALTER TABLE `vtiger_webforms_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webforms_webforms_field_idx` (`id`),
  ADD KEY `fk_1_vtiger_webforms_field` (`webformid`),
  ADD KEY `fk_2_vtiger_webforms_field` (`fieldname`);

--
-- Indexes for table `vtiger_webform_file_fields`
--
ALTER TABLE `vtiger_webform_file_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vtiger_webforms` (`webformid`);

--
-- Indexes for table `vtiger_wordtemplates`
--
ALTER TABLE `vtiger_wordtemplates`
  ADD PRIMARY KEY (`templateid`);

--
-- Indexes for table `vtiger_wsapp`
--
ALTER TABLE `vtiger_wsapp`
  ADD PRIMARY KEY (`appid`);

--
-- Indexes for table `vtiger_wsapp_logs_basic`
--
ALTER TABLE `vtiger_wsapp_logs_basic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_wsapp_logs_details`
--
ALTER TABLE `vtiger_wsapp_logs_details`
  ADD KEY `vtiger_wsapp_logs_basic_ibfk_1` (`id`);

--
-- Indexes for table `vtiger_wsapp_recordmapping`
--
ALTER TABLE `vtiger_wsapp_recordmapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_wsapp_sync_state`
--
ALTER TABLE `vtiger_wsapp_sync_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_ws_entity`
--
ALTER TABLE `vtiger_ws_entity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_ws_entity_fieldtype`
--
ALTER TABLE `vtiger_ws_entity_fieldtype`
  ADD PRIMARY KEY (`fieldtypeid`),
  ADD UNIQUE KEY `vtiger_idx_1_tablename_fieldname` (`table_name`,`field_name`);

--
-- Indexes for table `vtiger_ws_entity_name`
--
ALTER TABLE `vtiger_ws_entity_name`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `vtiger_ws_entity_referencetype`
--
ALTER TABLE `vtiger_ws_entity_referencetype`
  ADD PRIMARY KEY (`fieldtypeid`,`type`);

--
-- Indexes for table `vtiger_ws_entity_tables`
--
ALTER TABLE `vtiger_ws_entity_tables`
  ADD PRIMARY KEY (`webservice_entity_id`,`table_name`);

--
-- Indexes for table `vtiger_ws_fieldinfo`
--
ALTER TABLE `vtiger_ws_fieldinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtiger_ws_fieldtype`
--
ALTER TABLE `vtiger_ws_fieldtype`
  ADD PRIMARY KEY (`fieldtypeid`),
  ADD UNIQUE KEY `uitype_idx` (`uitype`);

--
-- Indexes for table `vtiger_ws_operation`
--
ALTER TABLE `vtiger_ws_operation`
  ADD PRIMARY KEY (`operationid`);

--
-- Indexes for table `vtiger_ws_operation_parameters`
--
ALTER TABLE `vtiger_ws_operation_parameters`
  ADD PRIMARY KEY (`operationid`,`name`);

--
-- Indexes for table `vtiger_ws_referencetype`
--
ALTER TABLE `vtiger_ws_referencetype`
  ADD PRIMARY KEY (`fieldtypeid`,`type`);

--
-- Indexes for table `vtiger_ws_userauthtoken`
--
ALTER TABLE `vtiger_ws_userauthtoken`
  ADD PRIMARY KEY (`userid`,`expiretime`),
  ADD UNIQUE KEY `userid_idx` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `com_vtiger_workflows`
--
ALTER TABLE `com_vtiger_workflows`
  MODIFY `workflow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `com_vtiger_workflowtasks`
--
ALTER TABLE `com_vtiger_workflowtasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `com_vtiger_workflowtemplates`
--
ALTER TABLE `com_vtiger_workflowtemplates`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_accountrating`
--
ALTER TABLE `vtiger_accountrating`
  MODIFY `accountratingid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_accounttype`
--
ALTER TABLE `vtiger_accounttype`
  MODIFY `accounttypeid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vtiger_activitytype`
--
ALTER TABLE `vtiger_activitytype`
  MODIFY `activitytypeid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_activity_reminder_popup`
--
ALTER TABLE `vtiger_activity_reminder_popup`
  MODIFY `reminderid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_activity_view`
--
ALTER TABLE `vtiger_activity_view`
  MODIFY `activity_viewid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_assetstatus`
--
ALTER TABLE `vtiger_assetstatus`
  MODIFY `assetstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_attachmentsfolder`
--
ALTER TABLE `vtiger_attachmentsfolder`
  MODIFY `folderid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_calendarsharedtype`
--
ALTER TABLE `vtiger_calendarsharedtype`
  MODIFY `calendarsharedtypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_callduration`
--
ALTER TABLE `vtiger_callduration`
  MODIFY `calldurationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_campaignstatus`
--
ALTER TABLE `vtiger_campaignstatus`
  MODIFY `campaignstatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_campaigntype`
--
ALTER TABLE `vtiger_campaigntype`
  MODIFY `campaigntypeid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vtiger_carrier`
--
ALTER TABLE `vtiger_carrier`
  MODIFY `carrierid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_contract_priority`
--
ALTER TABLE `vtiger_contract_priority`
  MODIFY `contract_priorityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_contract_status`
--
ALTER TABLE `vtiger_contract_status`
  MODIFY `contract_statusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_contract_type`
--
ALTER TABLE `vtiger_contract_type`
  MODIFY `contract_typeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_convertleadmapping`
--
ALTER TABLE `vtiger_convertleadmapping`
  MODIFY `cfmid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `vtiger_convertpotentialmapping`
--
ALTER TABLE `vtiger_convertpotentialmapping`
  MODIFY `cfmid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_cron_task`
--
ALTER TABLE `vtiger_cron_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vtiger_currencies`
--
ALTER TABLE `vtiger_currencies`
  MODIFY `currencyid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `vtiger_currency`
--
ALTER TABLE `vtiger_currency`
  MODIFY `currencyid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_currency_decimal_separator`
--
ALTER TABLE `vtiger_currency_decimal_separator`
  MODIFY `currency_decimal_separatorid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_currency_grouping_pattern`
--
ALTER TABLE `vtiger_currency_grouping_pattern`
  MODIFY `currency_grouping_patternid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_currency_grouping_separator`
--
ALTER TABLE `vtiger_currency_grouping_separator`
  MODIFY `currency_grouping_separatorid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_currency_info`
--
ALTER TABLE `vtiger_currency_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_currency_symbol_placement`
--
ALTER TABLE `vtiger_currency_symbol_placement`
  MODIFY `currency_symbol_placementid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_dashboard_tabs`
--
ALTER TABLE `vtiger_dashboard_tabs`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `vtiger_date_format`
--
ALTER TABLE `vtiger_date_format`
  MODIFY `date_formatid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_dayoftheweek`
--
ALTER TABLE `vtiger_dayoftheweek`
  MODIFY `dayoftheweekid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vtiger_defaultactivitytype`
--
ALTER TABLE `vtiger_defaultactivitytype`
  MODIFY `defaultactivitytypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_defaultcalendarview`
--
ALTER TABLE `vtiger_defaultcalendarview`
  MODIFY `defaultcalendarviewid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_defaulteventstatus`
--
ALTER TABLE `vtiger_defaulteventstatus`
  MODIFY `defaulteventstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_defaultlandingpage`
--
ALTER TABLE `vtiger_defaultlandingpage`
  MODIFY `defaultlandingpageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_default_record_view`
--
ALTER TABLE `vtiger_default_record_view`
  MODIFY `default_record_viewid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_def_org_share`
--
ALTER TABLE `vtiger_def_org_share`
  MODIFY `ruleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vtiger_durationhrs`
--
ALTER TABLE `vtiger_durationhrs`
  MODIFY `hrsid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_durationmins`
--
ALTER TABLE `vtiger_durationmins`
  MODIFY `minsid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_duration_minutes`
--
ALTER TABLE `vtiger_duration_minutes`
  MODIFY `minutesid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_emails_recipientprefs`
--
ALTER TABLE `vtiger_emails_recipientprefs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_emailtemplates`
--
ALTER TABLE `vtiger_emailtemplates`
  MODIFY `templateid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `vtiger_eventhandlers`
--
ALTER TABLE `vtiger_eventhandlers`
  MODIFY `eventhandler_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `vtiger_eventhandler_module`
--
ALTER TABLE `vtiger_eventhandler_module`
  MODIFY `eventhandler_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_eventstatus`
--
ALTER TABLE `vtiger_eventstatus`
  MODIFY `eventstatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_expectedresponse`
--
ALTER TABLE `vtiger_expectedresponse`
  MODIFY `expectedresponseid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_extnstore_users`
--
ALTER TABLE `vtiger_extnstore_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_faq`
--
ALTER TABLE `vtiger_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `vtiger_faqcategories`
--
ALTER TABLE `vtiger_faqcategories`
  MODIFY `faqcategories_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_faqcomments`
--
ALTER TABLE `vtiger_faqcomments`
  MODIFY `commentid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_faqstatus`
--
ALTER TABLE `vtiger_faqstatus`
  MODIFY `faqstatus_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_field`
--
ALTER TABLE `vtiger_field`
  MODIFY `fieldid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=852;

--
-- AUTO_INCREMENT for table `vtiger_glacct`
--
ALTER TABLE `vtiger_glacct`
  MODIFY `glacctid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vtiger_hour_format`
--
ALTER TABLE `vtiger_hour_format`
  MODIFY `hour_formatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_import_maps`
--
ALTER TABLE `vtiger_import_maps`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_industry`
--
ALTER TABLE `vtiger_industry`
  MODIFY `industryid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `vtiger_inventorycharges`
--
ALTER TABLE `vtiger_inventorycharges`
  MODIFY `chargeid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_inventorynotification`
--
ALTER TABLE `vtiger_inventorynotification`
  MODIFY `notificationid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_inventoryproductrel`
--
ALTER TABLE `vtiger_inventoryproductrel`
  MODIFY `lineitem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_invoicestatus`
--
ALTER TABLE `vtiger_invoicestatus`
  MODIFY `invoicestatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vtiger_invoicestatushistory`
--
ALTER TABLE `vtiger_invoicestatushistory`
  MODIFY `historyid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_language`
--
ALTER TABLE `vtiger_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `vtiger_leadsource`
--
ALTER TABLE `vtiger_leadsource`
  MODIFY `leadsourceid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vtiger_leadstage`
--
ALTER TABLE `vtiger_leadstage`
  MODIFY `leadstageid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_leadstatus`
--
ALTER TABLE `vtiger_leadstatus`
  MODIFY `leadstatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vtiger_lead_view`
--
ALTER TABLE `vtiger_lead_view`
  MODIFY `lead_viewid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_loginhistory`
--
ALTER TABLE `vtiger_loginhistory`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `vtiger_mailscanner`
--
ALTER TABLE `vtiger_mailscanner`
  MODIFY `scannerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_mailscanner_actions`
--
ALTER TABLE `vtiger_mailscanner_actions`
  MODIFY `actionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_mailscanner_folders`
--
ALTER TABLE `vtiger_mailscanner_folders`
  MODIFY `folderid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_mailscanner_rules`
--
ALTER TABLE `vtiger_mailscanner_rules`
  MODIFY `ruleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_manufacturer`
--
ALTER TABLE `vtiger_manufacturer`
  MODIFY `manufacturerid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_mobile_alerts`
--
ALTER TABLE `vtiger_mobile_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vtiger_module_dashboard_widgets`
--
ALTER TABLE `vtiger_module_dashboard_widgets`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vtiger_notificationscheduler`
--
ALTER TABLE `vtiger_notificationscheduler`
  MODIFY `schedulednotificationid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vtiger_no_of_currency_decimals`
--
ALTER TABLE `vtiger_no_of_currency_decimals`
  MODIFY `no_of_currency_decimalsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vtiger_opportunitystage`
--
ALTER TABLE `vtiger_opportunitystage`
  MODIFY `potstageid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_opportunity_type`
--
ALTER TABLE `vtiger_opportunity_type`
  MODIFY `opptypeid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_othereventduration`
--
ALTER TABLE `vtiger_othereventduration`
  MODIFY `othereventdurationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_pbxmanager`
--
ALTER TABLE `vtiger_pbxmanager`
  MODIFY `pbxmanagerid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `vtiger_pbxmanager_gateway`
--
ALTER TABLE `vtiger_pbxmanager_gateway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_picklist`
--
ALTER TABLE `vtiger_picklist`
  MODIFY `picklistid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `vtiger_postatus`
--
ALTER TABLE `vtiger_postatus`
  MODIFY `postatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_postatushistory`
--
ALTER TABLE `vtiger_postatushistory`
  MODIFY `historyid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_potstagehistory`
--
ALTER TABLE `vtiger_potstagehistory`
  MODIFY `historyid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_priority`
--
ALTER TABLE `vtiger_priority`
  MODIFY `priorityid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_productcategory`
--
ALTER TABLE `vtiger_productcategory`
  MODIFY `productcategoryid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_profile`
--
ALTER TABLE `vtiger_profile`
  MODIFY `profileid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_progress`
--
ALTER TABLE `vtiger_progress`
  MODIFY `progressid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vtiger_projectmilestonetype`
--
ALTER TABLE `vtiger_projectmilestonetype`
  MODIFY `projectmilestonetypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_projectpriority`
--
ALTER TABLE `vtiger_projectpriority`
  MODIFY `projectpriorityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_projectstatus`
--
ALTER TABLE `vtiger_projectstatus`
  MODIFY `projectstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vtiger_projecttaskpriority`
--
ALTER TABLE `vtiger_projecttaskpriority`
  MODIFY `projecttaskpriorityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_projecttaskprogress`
--
ALTER TABLE `vtiger_projecttaskprogress`
  MODIFY `projecttaskprogressid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vtiger_projecttaskstatus`
--
ALTER TABLE `vtiger_projecttaskstatus`
  MODIFY `projecttaskstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_projecttasktype`
--
ALTER TABLE `vtiger_projecttasktype`
  MODIFY `projecttasktypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_projecttype`
--
ALTER TABLE `vtiger_projecttype`
  MODIFY `projecttypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_quotestage`
--
ALTER TABLE `vtiger_quotestage`
  MODIFY `quotestageid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_quotestagehistory`
--
ALTER TABLE `vtiger_quotestagehistory`
  MODIFY `historyid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_rating`
--
ALTER TABLE `vtiger_rating`
  MODIFY `rating_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_recurringevents`
--
ALTER TABLE `vtiger_recurringevents`
  MODIFY `recurringid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_recurringtype`
--
ALTER TABLE `vtiger_recurringtype`
  MODIFY `recurringeventid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_reminder_interval`
--
ALTER TABLE `vtiger_reminder_interval`
  MODIFY `reminder_intervalid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vtiger_reportfolder`
--
ALTER TABLE `vtiger_reportfolder`
  MODIFY `folderid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vtiger_rollupcomments_settings`
--
ALTER TABLE `vtiger_rollupcomments_settings`
  MODIFY `rollupid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_rowheight`
--
ALTER TABLE `vtiger_rowheight`
  MODIFY `rowheightid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_sales_stage`
--
ALTER TABLE `vtiger_sales_stage`
  MODIFY `sales_stage_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vtiger_salutationtype`
--
ALTER TABLE `vtiger_salutationtype`
  MODIFY `salutationid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_servicecategory`
--
ALTER TABLE `vtiger_servicecategory`
  MODIFY `servicecategoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_service_usageunit`
--
ALTER TABLE `vtiger_service_usageunit`
  MODIFY `service_usageunitid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_shorturls`
--
ALTER TABLE `vtiger_shorturls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_smsnotifier_servers`
--
ALTER TABLE `vtiger_smsnotifier_servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_smsnotifier_status`
--
ALTER TABLE `vtiger_smsnotifier_status`
  MODIFY `statusid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_sostatus`
--
ALTER TABLE `vtiger_sostatus`
  MODIFY `sostatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_sostatushistory`
--
ALTER TABLE `vtiger_sostatushistory`
  MODIFY `historyid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_start_hour`
--
ALTER TABLE `vtiger_start_hour`
  MODIFY `start_hourid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vtiger_status`
--
ALTER TABLE `vtiger_status`
  MODIFY `statusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_taskpriority`
--
ALTER TABLE `vtiger_taskpriority`
  MODIFY `taskpriorityid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_taskstatus`
--
ALTER TABLE `vtiger_taskstatus`
  MODIFY `taskstatusid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vtiger_taxclass`
--
ALTER TABLE `vtiger_taxclass`
  MODIFY `taxclassid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_taxregions`
--
ALTER TABLE `vtiger_taxregions`
  MODIFY `regionid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_ticketcategories`
--
ALTER TABLE `vtiger_ticketcategories`
  MODIFY `ticketcategories_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtiger_ticketcomments`
--
ALTER TABLE `vtiger_ticketcomments`
  MODIFY `commentid` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_ticketpriorities`
--
ALTER TABLE `vtiger_ticketpriorities`
  MODIFY `ticketpriorities_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_ticketseverities`
--
ALTER TABLE `vtiger_ticketseverities`
  MODIFY `ticketseverities_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_ticketstatus`
--
ALTER TABLE `vtiger_ticketstatus`
  MODIFY `ticketstatus_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_time_zone`
--
ALTER TABLE `vtiger_time_zone`
  MODIFY `time_zoneid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `vtiger_tracker`
--
ALTER TABLE `vtiger_tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_tracking_unit`
--
ALTER TABLE `vtiger_tracking_unit`
  MODIFY `tracking_unitid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vtiger_usageunit`
--
ALTER TABLE `vtiger_usageunit`
  MODIFY `usageunitid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vtiger_users`
--
ALTER TABLE `vtiger_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vtiger_users_last_import`
--
ALTER TABLE `vtiger_users_last_import`
  MODIFY `id` int(36) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_version`
--
ALTER TABLE `vtiger_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_visibility`
--
ALTER TABLE `vtiger_visibility`
  MODIFY `visibilityid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vtiger_webforms`
--
ALTER TABLE `vtiger_webforms`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_webforms_field`
--
ALTER TABLE `vtiger_webforms_field`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vtiger_webform_file_fields`
--
ALTER TABLE `vtiger_webform_file_fields`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_wsapp`
--
ALTER TABLE `vtiger_wsapp`
  MODIFY `appid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtiger_wsapp_logs_basic`
--
ALTER TABLE `vtiger_wsapp_logs_basic`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_wsapp_recordmapping`
--
ALTER TABLE `vtiger_wsapp_recordmapping`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_wsapp_sync_state`
--
ALTER TABLE `vtiger_wsapp_sync_state`
  MODIFY `id` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtiger_ws_entity`
--
ALTER TABLE `vtiger_ws_entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `vtiger_ws_entity_fieldtype`
--
ALTER TABLE `vtiger_ws_entity_fieldtype`
  MODIFY `fieldtypeid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vtiger_ws_fieldtype`
--
ALTER TABLE `vtiger_ws_fieldtype`
  MODIFY `fieldtypeid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `vtiger_ws_operation`
--
ALTER TABLE `vtiger_ws_operation`
  MODIFY `operationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `vtiger_ws_operation_parameters`
--
ALTER TABLE `vtiger_ws_operation_parameters`
  MODIFY `operationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vtiger_account`
--
ALTER TABLE `vtiger_account`
  ADD CONSTRAINT `fk_1_vtiger_account` FOREIGN KEY (`accountid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_accountbillads`
--
ALTER TABLE `vtiger_accountbillads`
  ADD CONSTRAINT `fk_1_vtiger_accountbillads` FOREIGN KEY (`accountaddressid`) REFERENCES `vtiger_account` (`accountid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_accountscf`
--
ALTER TABLE `vtiger_accountscf`
  ADD CONSTRAINT `fk_1_vtiger_accountscf` FOREIGN KEY (`accountid`) REFERENCES `vtiger_account` (`accountid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_accountshipads`
--
ALTER TABLE `vtiger_accountshipads`
  ADD CONSTRAINT `fk_1_vtiger_accountshipads` FOREIGN KEY (`accountaddressid`) REFERENCES `vtiger_account` (`accountid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_activity`
--
ALTER TABLE `vtiger_activity`
  ADD CONSTRAINT `fk_1_vtiger_activity` FOREIGN KEY (`activityid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_activitycf`
--
ALTER TABLE `vtiger_activitycf`
  ADD CONSTRAINT `fk_activityid_vtiger_activitycf` FOREIGN KEY (`activityid`) REFERENCES `vtiger_activity` (`activityid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_activityproductrel`
--
ALTER TABLE `vtiger_activityproductrel`
  ADD CONSTRAINT `fk_2_vtiger_activityproductrel` FOREIGN KEY (`productid`) REFERENCES `vtiger_products` (`productid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_activity_reminder`
--
ALTER TABLE `vtiger_activity_reminder`
  ADD CONSTRAINT `fk_activityid_vtiger_activity_reminder` FOREIGN KEY (`activity_id`) REFERENCES `vtiger_activity` (`activityid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_app2tab`
--
ALTER TABLE `vtiger_app2tab`
  ADD CONSTRAINT `vtiger_app2tab_fk_tab` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_assets`
--
ALTER TABLE `vtiger_assets`
  ADD CONSTRAINT `fk_1_vtiger_assets` FOREIGN KEY (`assetsid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_assetscf`
--
ALTER TABLE `vtiger_assetscf`
  ADD CONSTRAINT `fk_assetsid_vtiger_assetscf` FOREIGN KEY (`assetsid`) REFERENCES `vtiger_assets` (`assetsid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_attachments`
--
ALTER TABLE `vtiger_attachments`
  ADD CONSTRAINT `fk_1_vtiger_attachments` FOREIGN KEY (`attachmentsid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_blocks`
--
ALTER TABLE `vtiger_blocks`
  ADD CONSTRAINT `fk_1_vtiger_blocks` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_campaign`
--
ALTER TABLE `vtiger_campaign`
  ADD CONSTRAINT `fk_crmid_vtiger_campaign` FOREIGN KEY (`campaignid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_campaigncontrel`
--
ALTER TABLE `vtiger_campaigncontrel`
  ADD CONSTRAINT `fk_2_vtiger_campaigncontrel` FOREIGN KEY (`contactid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_campaignleadrel`
--
ALTER TABLE `vtiger_campaignleadrel`
  ADD CONSTRAINT `fk_2_vtiger_campaignleadrel` FOREIGN KEY (`leadid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_campaignscf`
--
ALTER TABLE `vtiger_campaignscf`
  ADD CONSTRAINT `fk_1_vtiger_campaignscf` FOREIGN KEY (`campaignid`) REFERENCES `vtiger_campaign` (`campaignid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cntactivityrel`
--
ALTER TABLE `vtiger_cntactivityrel`
  ADD CONSTRAINT `fk_2_vtiger_cntactivityrel` FOREIGN KEY (`contactid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_contactaddress`
--
ALTER TABLE `vtiger_contactaddress`
  ADD CONSTRAINT `fk_1_vtiger_contactaddress` FOREIGN KEY (`contactaddressid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_contactdetails`
--
ALTER TABLE `vtiger_contactdetails`
  ADD CONSTRAINT `fk_1_vtiger_contactdetails` FOREIGN KEY (`contactid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_contactscf`
--
ALTER TABLE `vtiger_contactscf`
  ADD CONSTRAINT `fk_1_vtiger_contactscf` FOREIGN KEY (`contactid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_contactsubdetails`
--
ALTER TABLE `vtiger_contactsubdetails`
  ADD CONSTRAINT `fk_1_vtiger_contactsubdetails` FOREIGN KEY (`contactsubscriptionid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_contpotentialrel`
--
ALTER TABLE `vtiger_contpotentialrel`
  ADD CONSTRAINT `fk_2_vtiger_contpotentialrel` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_crmentity_user_field`
--
ALTER TABLE `vtiger_crmentity_user_field`
  ADD CONSTRAINT `fk_vtiger_crmentity_user_field_recordid` FOREIGN KEY (`recordid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_customaction`
--
ALTER TABLE `vtiger_customaction`
  ADD CONSTRAINT `fk_1_vtiger_customaction` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_customerdetails`
--
ALTER TABLE `vtiger_customerdetails`
  ADD CONSTRAINT `fk_1_vtiger_customerdetails` FOREIGN KEY (`customerid`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_customview`
--
ALTER TABLE `vtiger_customview`
  ADD CONSTRAINT `fk_1_vtiger_customview` FOREIGN KEY (`entitytype`) REFERENCES `vtiger_tab` (`name`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cv2group`
--
ALTER TABLE `vtiger_cv2group`
  ADD CONSTRAINT `vtiger_customview_ibfk_2` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_groups_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `vtiger_groups` (`groupid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cv2role`
--
ALTER TABLE `vtiger_cv2role`
  ADD CONSTRAINT `vtiger_customview_ibfk_3` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_role_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cv2rs`
--
ALTER TABLE `vtiger_cv2rs`
  ADD CONSTRAINT `vtiger_customview_ibfk_4` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_rolesd_ibfk_1` FOREIGN KEY (`rsid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cv2users`
--
ALTER TABLE `vtiger_cv2users`
  ADD CONSTRAINT `vtiger_customview_ibfk_1` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_users_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cvadvfilter`
--
ALTER TABLE `vtiger_cvadvfilter`
  ADD CONSTRAINT `fk_1_vtiger_cvadvfilter` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cvcolumnlist`
--
ALTER TABLE `vtiger_cvcolumnlist`
  ADD CONSTRAINT `fk_1_vtiger_cvcolumnlist` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_cvstdfilter`
--
ALTER TABLE `vtiger_cvstdfilter`
  ADD CONSTRAINT `fk_1_vtiger_cvstdfilter` FOREIGN KEY (`cvid`) REFERENCES `vtiger_customview` (`cvid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_dashboard_tabs`
--
ALTER TABLE `vtiger_dashboard_tabs`
  ADD CONSTRAINT `vtiger_dashboard_tabs_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_grp2grp`
--
ALTER TABLE `vtiger_datashare_grp2grp`
  ADD CONSTRAINT `fk_3_vtiger_datashare_grp2grp` FOREIGN KEY (`to_groupid`) REFERENCES `vtiger_groups` (`groupid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_grp2role`
--
ALTER TABLE `vtiger_datashare_grp2role`
  ADD CONSTRAINT `fk_3_vtiger_datashare_grp2role` FOREIGN KEY (`to_roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_grp2rs`
--
ALTER TABLE `vtiger_datashare_grp2rs`
  ADD CONSTRAINT `fk_3_vtiger_datashare_grp2rs` FOREIGN KEY (`to_roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_module_rel`
--
ALTER TABLE `vtiger_datashare_module_rel`
  ADD CONSTRAINT `fk_1_vtiger_datashare_module_rel` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_relatedmodules`
--
ALTER TABLE `vtiger_datashare_relatedmodules`
  ADD CONSTRAINT `fk_2_vtiger_datashare_relatedmodules` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_role2group`
--
ALTER TABLE `vtiger_datashare_role2group`
  ADD CONSTRAINT `fk_3_vtiger_datashare_role2group` FOREIGN KEY (`share_roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_role2role`
--
ALTER TABLE `vtiger_datashare_role2role`
  ADD CONSTRAINT `fk_3_vtiger_datashare_role2role` FOREIGN KEY (`to_roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_role2rs`
--
ALTER TABLE `vtiger_datashare_role2rs`
  ADD CONSTRAINT `fk_3_vtiger_datashare_role2rs` FOREIGN KEY (`to_roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_rs2grp`
--
ALTER TABLE `vtiger_datashare_rs2grp`
  ADD CONSTRAINT `fk_3_vtiger_datashare_rs2grp` FOREIGN KEY (`share_roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_rs2role`
--
ALTER TABLE `vtiger_datashare_rs2role`
  ADD CONSTRAINT `fk_3_vtiger_datashare_rs2role` FOREIGN KEY (`to_roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_datashare_rs2rs`
--
ALTER TABLE `vtiger_datashare_rs2rs`
  ADD CONSTRAINT `fk_3_vtiger_datashare_rs2rs` FOREIGN KEY (`to_roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_defaultcv`
--
ALTER TABLE `vtiger_defaultcv`
  ADD CONSTRAINT `fk_1_vtiger_defaultcv` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_def_org_share`
--
ALTER TABLE `vtiger_def_org_share`
  ADD CONSTRAINT `fk_1_vtiger_def_org_share` FOREIGN KEY (`permission`) REFERENCES `vtiger_org_share_action_mapping` (`share_action_id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_emailslookup`
--
ALTER TABLE `vtiger_emailslookup`
  ADD CONSTRAINT `emailslookup_crmid_fk` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_entityname`
--
ALTER TABLE `vtiger_entityname`
  ADD CONSTRAINT `fk_1_vtiger_entityname` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_faq`
--
ALTER TABLE `vtiger_faq`
  ADD CONSTRAINT `fk_1_vtiger_faq` FOREIGN KEY (`id`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_faqcf`
--
ALTER TABLE `vtiger_faqcf`
  ADD CONSTRAINT `fk_1_vtiger_faqcf` FOREIGN KEY (`faqid`) REFERENCES `vtiger_faq` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_faqcomments`
--
ALTER TABLE `vtiger_faqcomments`
  ADD CONSTRAINT `fk_1_vtiger_faqcomments` FOREIGN KEY (`faqid`) REFERENCES `vtiger_faq` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_field`
--
ALTER TABLE `vtiger_field`
  ADD CONSTRAINT `fk_1_vtiger_field` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_group2grouprel`
--
ALTER TABLE `vtiger_group2grouprel`
  ADD CONSTRAINT `fk_2_vtiger_group2grouprel` FOREIGN KEY (`groupid`) REFERENCES `vtiger_groups` (`groupid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vtiger_group2role`
--
ALTER TABLE `vtiger_group2role`
  ADD CONSTRAINT `fk_2_vtiger_group2role` FOREIGN KEY (`roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_group2rs`
--
ALTER TABLE `vtiger_group2rs`
  ADD CONSTRAINT `fk_2_vtiger_group2rs` FOREIGN KEY (`roleandsubid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_homedashbd`
--
ALTER TABLE `vtiger_homedashbd`
  ADD CONSTRAINT `fk_1_vtiger_homedashbd` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homestuff` (`stuffid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_homedefault`
--
ALTER TABLE `vtiger_homedefault`
  ADD CONSTRAINT `fk_1_vtiger_homedefault` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homestuff` (`stuffid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_homemodule`
--
ALTER TABLE `vtiger_homemodule`
  ADD CONSTRAINT `fk_1_vtiger_homemodule` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homestuff` (`stuffid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_homemoduleflds`
--
ALTER TABLE `vtiger_homemoduleflds`
  ADD CONSTRAINT `fk_1_vtiger_homemoduleflds` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homemodule` (`stuffid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_homerss`
--
ALTER TABLE `vtiger_homerss`
  ADD CONSTRAINT `fk_1_vtiger_homerss` FOREIGN KEY (`stuffid`) REFERENCES `vtiger_homestuff` (`stuffid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_homestuff`
--
ALTER TABLE `vtiger_homestuff`
  ADD CONSTRAINT `fk_1_vtiger_homestuff` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_inventoryproductrel`
--
ALTER TABLE `vtiger_inventoryproductrel`
  ADD CONSTRAINT `fk_crmid_vtiger_inventoryproductrel` FOREIGN KEY (`id`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_invoice`
--
ALTER TABLE `vtiger_invoice`
  ADD CONSTRAINT `fk_2_vtiger_invoice` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_crmid_vtiger_invoice` FOREIGN KEY (`invoiceid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_invoicebillads`
--
ALTER TABLE `vtiger_invoicebillads`
  ADD CONSTRAINT `fk_1_vtiger_invoicebillads` FOREIGN KEY (`invoicebilladdressid`) REFERENCES `vtiger_invoice` (`invoiceid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_invoicecf`
--
ALTER TABLE `vtiger_invoicecf`
  ADD CONSTRAINT `fk_1_vtiger_invoicecf` FOREIGN KEY (`invoiceid`) REFERENCES `vtiger_invoice` (`invoiceid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_invoiceshipads`
--
ALTER TABLE `vtiger_invoiceshipads`
  ADD CONSTRAINT `fk_1_vtiger_invoiceshipads` FOREIGN KEY (`invoiceshipaddressid`) REFERENCES `vtiger_invoice` (`invoiceid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_invoicestatushistory`
--
ALTER TABLE `vtiger_invoicestatushistory`
  ADD CONSTRAINT `fk_1_vtiger_invoicestatushistory` FOREIGN KEY (`invoiceid`) REFERENCES `vtiger_invoice` (`invoiceid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_invoice_recurring_info`
--
ALTER TABLE `vtiger_invoice_recurring_info`
  ADD CONSTRAINT `fk_salesorderid_vtiger_invoice_recurring_info` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_leadaddress`
--
ALTER TABLE `vtiger_leadaddress`
  ADD CONSTRAINT `fk_1_vtiger_leadaddress` FOREIGN KEY (`leadaddressid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_leaddetails`
--
ALTER TABLE `vtiger_leaddetails`
  ADD CONSTRAINT `fk_1_vtiger_leaddetails` FOREIGN KEY (`leadid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_leadscf`
--
ALTER TABLE `vtiger_leadscf`
  ADD CONSTRAINT `fk_1_vtiger_leadscf` FOREIGN KEY (`leadid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_leadsubdetails`
--
ALTER TABLE `vtiger_leadsubdetails`
  ADD CONSTRAINT `fk_1_vtiger_leadsubdetails` FOREIGN KEY (`leadsubscriptionid`) REFERENCES `vtiger_leaddetails` (`leadid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_modcomments`
--
ALTER TABLE `vtiger_modcomments`
  ADD CONSTRAINT `fk_crmid_vtiger_modcomments` FOREIGN KEY (`modcommentsid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_modcommentscf`
--
ALTER TABLE `vtiger_modcommentscf`
  ADD CONSTRAINT `fk_modcommentsid_vtiger_modcommentscf` FOREIGN KEY (`modcommentsid`) REFERENCES `vtiger_modcomments` (`modcommentsid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_module_dashboard_widgets`
--
ALTER TABLE `vtiger_module_dashboard_widgets`
  ADD CONSTRAINT `vtiger_module_dashboard_widgets_ibfk_1` FOREIGN KEY (`dashboardtabid`) REFERENCES `vtiger_dashboard_tabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_notes`
--
ALTER TABLE `vtiger_notes`
  ADD CONSTRAINT `fk_1_vtiger_notes` FOREIGN KEY (`notesid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_notescf`
--
ALTER TABLE `vtiger_notescf`
  ADD CONSTRAINT `fk_notesid_vtiger_notescf` FOREIGN KEY (`notesid`) REFERENCES `vtiger_notes` (`notesid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_org_share_action2tab`
--
ALTER TABLE `vtiger_org_share_action2tab`
  ADD CONSTRAINT `fk_2_vtiger_org_share_action2tab` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_parenttabrel`
--
ALTER TABLE `vtiger_parenttabrel`
  ADD CONSTRAINT `fk_1_vtiger_parenttabrel` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_2_vtiger_parenttabrel` FOREIGN KEY (`parenttabid`) REFERENCES `vtiger_parenttab` (`parenttabid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pbxmanager`
--
ALTER TABLE `vtiger_pbxmanager`
  ADD CONSTRAINT `fk_crmid_vtiger_pbxmanager` FOREIGN KEY (`pbxmanagerid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pbxmanagercf`
--
ALTER TABLE `vtiger_pbxmanagercf`
  ADD CONSTRAINT `fk_pbxmanagerid_vtiger_pbxmanagercf` FOREIGN KEY (`pbxmanagerid`) REFERENCES `vtiger_pbxmanager` (`pbxmanagerid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pbxmanager_phonelookup`
--
ALTER TABLE `vtiger_pbxmanager_phonelookup`
  ADD CONSTRAINT `vtiger_pbxmanager_phonelookup_ibfk_1` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pobillads`
--
ALTER TABLE `vtiger_pobillads`
  ADD CONSTRAINT `fk_1_vtiger_pobillads` FOREIGN KEY (`pobilladdressid`) REFERENCES `vtiger_purchaseorder` (`purchaseorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_portalinfo`
--
ALTER TABLE `vtiger_portalinfo`
  ADD CONSTRAINT `fk_1_vtiger_portalinfo` FOREIGN KEY (`id`) REFERENCES `vtiger_contactdetails` (`contactid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_poshipads`
--
ALTER TABLE `vtiger_poshipads`
  ADD CONSTRAINT `fk_1_vtiger_poshipads` FOREIGN KEY (`poshipaddressid`) REFERENCES `vtiger_purchaseorder` (`purchaseorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_postatushistory`
--
ALTER TABLE `vtiger_postatushistory`
  ADD CONSTRAINT `fk_1_vtiger_postatushistory` FOREIGN KEY (`purchaseorderid`) REFERENCES `vtiger_purchaseorder` (`purchaseorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_potential`
--
ALTER TABLE `vtiger_potential`
  ADD CONSTRAINT `fk_1_vtiger_potential` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_potentialscf`
--
ALTER TABLE `vtiger_potentialscf`
  ADD CONSTRAINT `fk_1_vtiger_potentialscf` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_potstagehistory`
--
ALTER TABLE `vtiger_potstagehistory`
  ADD CONSTRAINT `fk_1_vtiger_potstagehistory` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pricebook`
--
ALTER TABLE `vtiger_pricebook`
  ADD CONSTRAINT `fk_1_vtiger_pricebook` FOREIGN KEY (`pricebookid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pricebookcf`
--
ALTER TABLE `vtiger_pricebookcf`
  ADD CONSTRAINT `fk_1_vtiger_pricebookcf` FOREIGN KEY (`pricebookid`) REFERENCES `vtiger_pricebook` (`pricebookid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pricebookproductrel`
--
ALTER TABLE `vtiger_pricebookproductrel`
  ADD CONSTRAINT `fk_1_vtiger_pricebookproductrel` FOREIGN KEY (`pricebookid`) REFERENCES `vtiger_pricebook` (`pricebookid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_productcf`
--
ALTER TABLE `vtiger_productcf`
  ADD CONSTRAINT `fk_1_vtiger_productcf` FOREIGN KEY (`productid`) REFERENCES `vtiger_products` (`productid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_products`
--
ALTER TABLE `vtiger_products`
  ADD CONSTRAINT `fk_1_vtiger_products` FOREIGN KEY (`productid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_producttaxrel`
--
ALTER TABLE `vtiger_producttaxrel`
  ADD CONSTRAINT `fk_crmid_vtiger_producttaxrel` FOREIGN KEY (`productid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_profile2globalpermissions`
--
ALTER TABLE `vtiger_profile2globalpermissions`
  ADD CONSTRAINT `fk_1_vtiger_profile2globalpermissions` FOREIGN KEY (`profileid`) REFERENCES `vtiger_profile` (`profileid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_project`
--
ALTER TABLE `vtiger_project`
  ADD CONSTRAINT `fk_crmid_vtiger_project` FOREIGN KEY (`projectid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_projectcf`
--
ALTER TABLE `vtiger_projectcf`
  ADD CONSTRAINT `fk_projectid_vtiger_projectcf` FOREIGN KEY (`projectid`) REFERENCES `vtiger_project` (`projectid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_projectmilestone`
--
ALTER TABLE `vtiger_projectmilestone`
  ADD CONSTRAINT `fk_crmid_vtiger_projectmilestone` FOREIGN KEY (`projectmilestoneid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_projectmilestonecf`
--
ALTER TABLE `vtiger_projectmilestonecf`
  ADD CONSTRAINT `fk_projectmilestoneid_vtiger_projectmilestonecf` FOREIGN KEY (`projectmilestoneid`) REFERENCES `vtiger_projectmilestone` (`projectmilestoneid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_projecttask`
--
ALTER TABLE `vtiger_projecttask`
  ADD CONSTRAINT `fk_crmid_vtiger_projecttask` FOREIGN KEY (`projecttaskid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_projecttaskcf`
--
ALTER TABLE `vtiger_projecttaskcf`
  ADD CONSTRAINT `fk_projecttaskid_vtiger_projecttaskcf` FOREIGN KEY (`projecttaskid`) REFERENCES `vtiger_projecttask` (`projecttaskid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_purchaseorder`
--
ALTER TABLE `vtiger_purchaseorder`
  ADD CONSTRAINT `fk_4_vtiger_purchaseorder` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_vendor` (`vendorid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_crmid_vtiger_purchaseorder` FOREIGN KEY (`purchaseorderid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_purchaseordercf`
--
ALTER TABLE `vtiger_purchaseordercf`
  ADD CONSTRAINT `fk_1_vtiger_purchaseordercf` FOREIGN KEY (`purchaseorderid`) REFERENCES `vtiger_purchaseorder` (`purchaseorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_quotes`
--
ALTER TABLE `vtiger_quotes`
  ADD CONSTRAINT `fk_3_vtiger_quotes` FOREIGN KEY (`potentialid`) REFERENCES `vtiger_potential` (`potentialid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_crmid_vtiger_quotes` FOREIGN KEY (`quoteid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_quotesbillads`
--
ALTER TABLE `vtiger_quotesbillads`
  ADD CONSTRAINT `fk_1_vtiger_quotesbillads` FOREIGN KEY (`quotebilladdressid`) REFERENCES `vtiger_quotes` (`quoteid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_quotescf`
--
ALTER TABLE `vtiger_quotescf`
  ADD CONSTRAINT `fk_1_vtiger_quotescf` FOREIGN KEY (`quoteid`) REFERENCES `vtiger_quotes` (`quoteid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_quotesshipads`
--
ALTER TABLE `vtiger_quotesshipads`
  ADD CONSTRAINT `fk_1_vtiger_quotesshipads` FOREIGN KEY (`quoteshipaddressid`) REFERENCES `vtiger_quotes` (`quoteid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_quotestagehistory`
--
ALTER TABLE `vtiger_quotestagehistory`
  ADD CONSTRAINT `fk_1_vtiger_quotestagehistory` FOREIGN KEY (`quoteid`) REFERENCES `vtiger_quotes` (`quoteid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_recurringevents`
--
ALTER TABLE `vtiger_recurringevents`
  ADD CONSTRAINT `fk_1_vtiger_recurringevents` FOREIGN KEY (`activityid`) REFERENCES `vtiger_activity` (`activityid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_relcriteria`
--
ALTER TABLE `vtiger_relcriteria`
  ADD CONSTRAINT `fk_1_vtiger_relcriteria` FOREIGN KEY (`queryid`) REFERENCES `vtiger_selectquery` (`queryid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_report`
--
ALTER TABLE `vtiger_report`
  ADD CONSTRAINT `fk_2_vtiger_report` FOREIGN KEY (`queryid`) REFERENCES `vtiger_selectquery` (`queryid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_reportdatefilter`
--
ALTER TABLE `vtiger_reportdatefilter`
  ADD CONSTRAINT `fk_1_vtiger_reportdatefilter` FOREIGN KEY (`datefilterid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_reportgroupbycolumn`
--
ALTER TABLE `vtiger_reportgroupbycolumn`
  ADD CONSTRAINT `fk_1_vtiger_reportgroupbycolumn` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_reportmodules`
--
ALTER TABLE `vtiger_reportmodules`
  ADD CONSTRAINT `fk_1_vtiger_reportmodules` FOREIGN KEY (`reportmodulesid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_reportsortcol`
--
ALTER TABLE `vtiger_reportsortcol`
  ADD CONSTRAINT `fk_1_vtiger_reportsortcol` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_reportsummary`
--
ALTER TABLE `vtiger_reportsummary`
  ADD CONSTRAINT `fk_1_vtiger_reportsummary` FOREIGN KEY (`reportsummaryid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_reporttype`
--
ALTER TABLE `vtiger_reporttype`
  ADD CONSTRAINT `fk_1_vtiger_reporttype` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_report_sharegroups`
--
ALTER TABLE `vtiger_report_sharegroups`
  ADD CONSTRAINT `vtiger_groups_groupid_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `vtiger_groups` (`groupid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_report_reportid_ibfk_2` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_report_sharerole`
--
ALTER TABLE `vtiger_report_sharerole`
  ADD CONSTRAINT `vtiger_report_reportid_ibfk_3` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_role_roleid_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_report_sharers`
--
ALTER TABLE `vtiger_report_sharers`
  ADD CONSTRAINT `vtiger_report_reportid_ibfk_4` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_rolesd_rsid_ibfk_1` FOREIGN KEY (`rsid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_report_shareusers`
--
ALTER TABLE `vtiger_report_shareusers`
  ADD CONSTRAINT `vtiger_reports_reportid_ibfk_1` FOREIGN KEY (`reportid`) REFERENCES `vtiger_report` (`reportid`) ON DELETE CASCADE,
  ADD CONSTRAINT `vtiger_users_userid_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_role2picklist`
--
ALTER TABLE `vtiger_role2picklist`
  ADD CONSTRAINT `fk_1_vtiger_role2picklist` FOREIGN KEY (`roleid`) REFERENCES `vtiger_role` (`roleid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_2_vtiger_role2picklist` FOREIGN KEY (`picklistid`) REFERENCES `vtiger_picklist` (`picklistid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_salesmanactivityrel`
--
ALTER TABLE `vtiger_salesmanactivityrel`
  ADD CONSTRAINT `fk_2_vtiger_salesmanactivityrel` FOREIGN KEY (`smid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_salesmanattachmentsrel`
--
ALTER TABLE `vtiger_salesmanattachmentsrel`
  ADD CONSTRAINT `fk_2_vtiger_salesmanattachmentsrel` FOREIGN KEY (`attachmentsid`) REFERENCES `vtiger_attachments` (`attachmentsid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_salesmanticketrel`
--
ALTER TABLE `vtiger_salesmanticketrel`
  ADD CONSTRAINT `fk_2_vtiger_salesmanticketrel` FOREIGN KEY (`smid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_salesorder`
--
ALTER TABLE `vtiger_salesorder`
  ADD CONSTRAINT `fk_3_vtiger_salesorder` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_vendor` (`vendorid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_crmid_vtiger_salesorder` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_salesordercf`
--
ALTER TABLE `vtiger_salesordercf`
  ADD CONSTRAINT `fk_1_vtiger_salesordercf` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_seactivityrel`
--
ALTER TABLE `vtiger_seactivityrel`
  ADD CONSTRAINT `fk_2_vtiger_seactivityrel` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_seattachmentsrel`
--
ALTER TABLE `vtiger_seattachmentsrel`
  ADD CONSTRAINT `fk_2_vtiger_seattachmentsrel` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_selectcolumn`
--
ALTER TABLE `vtiger_selectcolumn`
  ADD CONSTRAINT `fk_1_vtiger_selectcolumn` FOREIGN KEY (`queryid`) REFERENCES `vtiger_selectquery` (`queryid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_senotesrel`
--
ALTER TABLE `vtiger_senotesrel`
  ADD CONSTRAINT `fk1_crmid` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_2_vtiger_senotesrel` FOREIGN KEY (`notesid`) REFERENCES `vtiger_notes` (`notesid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_seproductsrel`
--
ALTER TABLE `vtiger_seproductsrel`
  ADD CONSTRAINT `fk_2_vtiger_seproductsrel` FOREIGN KEY (`productid`) REFERENCES `vtiger_products` (`productid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_service`
--
ALTER TABLE `vtiger_service`
  ADD CONSTRAINT `fk_1_vtiger_service` FOREIGN KEY (`serviceid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_servicecf`
--
ALTER TABLE `vtiger_servicecf`
  ADD CONSTRAINT `fk_serviceid_vtiger_servicecf` FOREIGN KEY (`serviceid`) REFERENCES `vtiger_service` (`serviceid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_servicecontracts`
--
ALTER TABLE `vtiger_servicecontracts`
  ADD CONSTRAINT `fk_crmid_vtiger_servicecontracts` FOREIGN KEY (`servicecontractsid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_servicecontractscf`
--
ALTER TABLE `vtiger_servicecontractscf`
  ADD CONSTRAINT `fk_servicecontractsid_vtiger_servicecontractscf` FOREIGN KEY (`servicecontractsid`) REFERENCES `vtiger_servicecontracts` (`servicecontractsid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_seticketsrel`
--
ALTER TABLE `vtiger_seticketsrel`
  ADD CONSTRAINT `fk_2_vtiger_seticketsrel` FOREIGN KEY (`ticketid`) REFERENCES `vtiger_troubletickets` (`ticketid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_settings_field`
--
ALTER TABLE `vtiger_settings_field`
  ADD CONSTRAINT `fk_1_vtiger_settings_field` FOREIGN KEY (`blockid`) REFERENCES `vtiger_settings_blocks` (`blockid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_smsnotifier`
--
ALTER TABLE `vtiger_smsnotifier`
  ADD CONSTRAINT `fk_crmid_vtiger_smsnotifier` FOREIGN KEY (`smsnotifierid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_smsnotifiercf`
--
ALTER TABLE `vtiger_smsnotifiercf`
  ADD CONSTRAINT `fk_smsnotifierid_vtiger_smsnotifiercf` FOREIGN KEY (`smsnotifierid`) REFERENCES `vtiger_smsnotifier` (`smsnotifierid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_sobillads`
--
ALTER TABLE `vtiger_sobillads`
  ADD CONSTRAINT `fk_1_vtiger_sobillads` FOREIGN KEY (`sobilladdressid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_soshipads`
--
ALTER TABLE `vtiger_soshipads`
  ADD CONSTRAINT `fk_1_vtiger_soshipads` FOREIGN KEY (`soshipaddressid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_sostatushistory`
--
ALTER TABLE `vtiger_sostatushistory`
  ADD CONSTRAINT `fk_1_vtiger_sostatushistory` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tab_info`
--
ALTER TABLE `vtiger_tab_info`
  ADD CONSTRAINT `fk_1_vtiger_tab_info` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vtiger_ticketcf`
--
ALTER TABLE `vtiger_ticketcf`
  ADD CONSTRAINT `fk_1_vtiger_ticketcf` FOREIGN KEY (`ticketid`) REFERENCES `vtiger_troubletickets` (`ticketid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_ticketcomments`
--
ALTER TABLE `vtiger_ticketcomments`
  ADD CONSTRAINT `fk_1_vtiger_ticketcomments` FOREIGN KEY (`ticketid`) REFERENCES `vtiger_troubletickets` (`ticketid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_read_group_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_group_rel_sharing_per`
  ADD CONSTRAINT `fk_4_vtiger_tmp_read_group_rel_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_read_group_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_group_sharing_per`
  ADD CONSTRAINT `fk_3_vtiger_tmp_read_group_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_read_user_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_user_rel_sharing_per`
  ADD CONSTRAINT `fk_4_vtiger_tmp_read_user_rel_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_read_user_sharing_per`
--
ALTER TABLE `vtiger_tmp_read_user_sharing_per`
  ADD CONSTRAINT `fk_3_vtiger_tmp_read_user_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_write_group_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_group_rel_sharing_per`
  ADD CONSTRAINT `fk_4_vtiger_tmp_write_group_rel_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_write_group_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_group_sharing_per`
  ADD CONSTRAINT `fk_3_vtiger_tmp_write_group_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_write_user_rel_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_user_rel_sharing_per`
  ADD CONSTRAINT `fk_4_vtiger_tmp_write_user_rel_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_tmp_write_user_sharing_per`
--
ALTER TABLE `vtiger_tmp_write_user_sharing_per`
  ADD CONSTRAINT `fk_3_vtiger_tmp_write_user_sharing_per` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_troubletickets`
--
ALTER TABLE `vtiger_troubletickets`
  ADD CONSTRAINT `fk_1_vtiger_troubletickets` FOREIGN KEY (`ticketid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_user2role`
--
ALTER TABLE `vtiger_user2role`
  ADD CONSTRAINT `fk_2_vtiger_user2role` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_users2group`
--
ALTER TABLE `vtiger_users2group`
  ADD CONSTRAINT `fk_2_vtiger_users2group` FOREIGN KEY (`userid`) REFERENCES `vtiger_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_user_module_preferences`
--
ALTER TABLE `vtiger_user_module_preferences`
  ADD CONSTRAINT `fk_2_vtiger_user_module_preferences` FOREIGN KEY (`tabid`) REFERENCES `vtiger_tab` (`tabid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vtiger_vendor`
--
ALTER TABLE `vtiger_vendor`
  ADD CONSTRAINT `fk_1_vtiger_vendor` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_vendorcf`
--
ALTER TABLE `vtiger_vendorcf`
  ADD CONSTRAINT `fk_1_vtiger_vendorcf` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_vendor` (`vendorid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_vendorcontactrel`
--
ALTER TABLE `vtiger_vendorcontactrel`
  ADD CONSTRAINT `fk_2_vtiger_vendorcontactrel` FOREIGN KEY (`vendorid`) REFERENCES `vtiger_vendor` (`vendorid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_webforms_field`
--
ALTER TABLE `vtiger_webforms_field`
  ADD CONSTRAINT `fk_1_vtiger_webforms_field` FOREIGN KEY (`webformid`) REFERENCES `vtiger_webforms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_3_vtiger_webforms_field` FOREIGN KEY (`fieldname`) REFERENCES `vtiger_field` (`fieldname`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_webform_file_fields`
--
ALTER TABLE `vtiger_webform_file_fields`
  ADD CONSTRAINT `fk_vtiger_webforms` FOREIGN KEY (`webformid`) REFERENCES `vtiger_webforms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_wsapp_logs_details`
--
ALTER TABLE `vtiger_wsapp_logs_details`
  ADD CONSTRAINT `vtiger_wsapp_logs_basic_ibfk_1` FOREIGN KEY (`id`) REFERENCES `vtiger_wsapp_logs_basic` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_ws_entity_referencetype`
--
ALTER TABLE `vtiger_ws_entity_referencetype`
  ADD CONSTRAINT `vtiger_fk_1_actors_referencetype` FOREIGN KEY (`fieldtypeid`) REFERENCES `vtiger_ws_entity_fieldtype` (`fieldtypeid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_ws_entity_tables`
--
ALTER TABLE `vtiger_ws_entity_tables`
  ADD CONSTRAINT `fk_1_vtiger_ws_actor_tables` FOREIGN KEY (`webservice_entity_id`) REFERENCES `vtiger_ws_entity` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_ws_referencetype`
--
ALTER TABLE `vtiger_ws_referencetype`
  ADD CONSTRAINT `fk_1_vtiger_referencetype` FOREIGN KEY (`fieldtypeid`) REFERENCES `vtiger_ws_fieldtype` (`fieldtypeid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
