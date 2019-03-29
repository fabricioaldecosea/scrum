-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql312.epizy.com
-- Generation Time: Mar 28, 2019 at 08:48 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epiz_23663526_scrum`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Question` int(11) NOT NULL,
  `answer` varchar(700) NOT NULL,
  `code` int(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=346 ;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`Id`, `Id_Question`, `answer`, `code`) VALUES
(1, 1, 'Continue the Sprint Planning meeting past its time-box until an adequate number of Product Backlog items are well enough understood for the Development Team to make a complete forecast. Then start the Sprint.', -1),
(2, 1, 'Cancel the Sprint. Send the entire team to an advanced Scrum training and then start a new Sprint.', -1),
(3, 1, 'Discuss in the upcoming Sprint Retrospective why this happened and what changes will make it less likely to recur.', 1),
(4, 1, 'Forecast the most likely Product Backlog to meet the goal and create Sprint Backlog based on a likely initial design and plan. Once the time-box for the Sprint Planning meeting is over, start the Sprint and continue to analyze, decompose, and create additional functionality during the Sprint.', 1),
(5, 1, 'Ask everyone to take as much time as needed to analyze the Product Backlog first, and then reconvene another Sprint Planning meeting.', -1),
(6, 2, 'Every member of the Development Team is able to perform every task.', -1),
(7, 2, 'A few of the Development Team members pair program and do Test Driven Development.', -1),
(8, 2, 'Development Team has all the skills to create a potentially releasable increment by the end of every Sprint.', 1),
(9, 2, 'There are no conflict within the Development Team.', -1),
(10, 3, 'The Scrum Master as he/she is responisble the Development Team''s productivity.', -1),
(11, 3, 'The Scrum Team, in a collaborative effort where the result is the common denominator of all members definitions.', -1),
(12, 3, 'The Product Owner as he/she is responsible for the product''s success.', -1),
(13, 3, 'The development organization (or Development Team if none is available from the development organization).', 1),
(14, 4, 'Remove or change selected Product Backlog Items.', 1),
(15, 4, 'Cancel the Sprint.', -1),
(16, 4, 'The Development Team works overtime during this Sprint', -1),
(17, 4, 'Recruit additional Development Team members before the work can begin.', -1),
(18, 4, 'The Development Team ensures that the Product Owner is aware, starts the Sprint, and monitors progress.', 1),
(19, 5, '7 plus or minus 3.', -1),
(20, 5, '3 to 9.', 1),
(21, 5, 'At least 7.', -1),
(22, 5, '9.', -1),
(23, 6, 'The Scrum Master', -1),
(24, 6, 'The business analyst who represents the Product Owner in the Development Team.', -1),
(25, 6, 'The Scrum Master, or the Scrum Master may have the Development Team do it.', -1),
(26, 6, 'The Product Owner.', 1),
(27, 7, 'Focus.', -1),
(28, 7, 'Respect.', -1),
(29, 7, 'Openness.', -1),
(30, 7, 'Courage.', -1),
(31, 7, 'Commitment.', -1),
(32, 7, 'All of the above.', 1),
(33, 8, 'Allow the Development Team to self-manage and determine for Itself what to do.', 1),
(34, 8, 'Ask the Development Team members to alternate who is responsible for meeting setup.', -1),
(35, 8, 'Set up the meeting and tell the Development Team that is how it will be done.', -1),
(36, 8, 'Inform management and ask them to solve it.', -1),
(37, 9, 'A proportional amount of time on analysis, design, programming, testing, and documentation.', -1),
(38, 9, 'All development work and at least some testing.', -1),
(39, 9, 'As much as it has told the Product Owner will be done for every Product Backlog Item it selects in conformance with the definition of "Done".', 1),
(40, 9, 'As much as it can fit into the Sprint. Any remaining work will be transferred to a subsequent Sprint.', -1),
(41, 10, 'The break between Sprints is time-boxed to 1 week for 30 day Sprints, and usually less for shorter sprints.', -1),
(42, 10, 'Enought time for the requirements for the next Sprint to be determined and documented.', -1),
(43, 10, 'Enough time for the Development team to finish the testing from the last Sprint.', -1),
(44, 10, 'None. A new Sprint starts immediatel following the end of the previous Sprint.', 1),
(45, 10, 'All of the above are allowed depending on the situation.', -1),
(46, 11, 'Always deliver the items in the Sprint forecast.', -1),
(47, 11, 'Help the other Scrum Team members.', 1),
(48, 11, 'Do your best.', 1),
(49, 11, 'Work late.', -1),
(50, 11, 'Send out a daily status report.', -1),
(51, 12, 'How many hours have been worked by each Development Team member.', -1),
(52, 12, 'An estimate of the total work remaining for the Sprint.', 1),
(53, 12, 'How many Product Backlog items remain.', -1),
(54, 12, 'How much effort has gone into a Sprint.', -1),
(55, 13, 'True.', 1),
(56, 13, 'False.', -1),
(57, 14, 'Teach them that it is their responsibility to work with the other teams to create an Integrated Increment.', 1),
(58, 14, 'Collect the Sprint tasks from the teams at the end of their Sprint Planning and merge that into a consolidated plan for the entire Sprint.', -1),
(59, 14, 'Teach the Product Owner to work with the lead developers on ordering Product Backlog in a way to avoid too much technical and development overlap during a Sprint.', -1),
(60, 14, 'Visit the five teams each day to inspect that their Sprint Backlogs are aligned.', -1),
(61, 15, 'Keeping track of resource allocation.', -1),
(62, 15, 'The meetings and the objectives that a Scrum Team sets for itself.', -1),
(63, 15, 'Managing the performance of the Scrum Team.', -1),
(64, 15, 'The Scrum framework being adopted and used properly.', 1),
(65, 16, 'Its productivity is likely to stay the same.', -1),
(66, 16, 'Its productivity is likely to increase.', -1),
(67, 16, 'Its productivity is likely to decrease', 1),
(68, 17, 'Every 3 Sprints.', -1),
(69, 17, 'After the acceptance testing phase.', -1),
(70, 17, 'At the end of every Sprint.', 1),
(71, 17, 'When the Product Owner asks to create one.', -1),
(72, 17, 'Before the release Sprint.', -1),
(73, 18, 'The Sprint length holds and the Development Team continuosly learns what is actually possible to do within a Sprint of this length.', 1),
(74, 18, 'The Sprint is extended temporarlly. Lessons are taken to ensure it doesn''t happen again.', -1),
(75, 18, 'The Sprint is extended and future Sprints use this new duration.', -1),
(76, 19, 'Everyone in the Development Team is responisbe for quality.', 1),
(77, 19, 'Scrum has no "teste" role.', 1),
(78, 19, 'Tracking quality metrics.', -1),
(79, 19, 'Finding bugs.', -1),
(80, 19, 'Verifying the work of programmers.', -1),
(81, 20, 'True.', -1),
(82, 20, 'False, capacity and commitment are the Project manager''s responsibility.', -1),
(83, 20, 'True, accordingly to what was committed to the stakeholders.', -1),
(84, 20, 'False.', 1),
(85, 20, 'True, but only after confirmation by the resource manager that the Team has enough capacity.', -1),
(86, 20, 'False, the Scrum Master does that.', -1),
(87, 21, 'The Product wner is accountable for ordering the Product Backlog.', 1),
(88, 21, 'The Product Owner is one person.', 1),
(89, 21, 'Multiple people can share the Product Owner role on a Scrum Team.', -1),
(90, 21, 'The Product Owner can be influenced by a committee.', 1),
(91, 21, 'The Product Owner role can be played by a committee or a team of people.', -1),
(92, 22, 'When the sales department has an important new opportunity.', -1),
(93, 22, 'When the Development Team feels that the work is too hard.', -1),
(94, 22, 'When it becomes clear that not everything will be finished by the end of the Sprint.', -1),
(95, 22, 'When the Sprint Goal becomes obsolete.', 1),
(96, 23, 'Coach the Product Owner on how to talk with the Development Team about this concern.', -1),
(97, 23, 'Wait to bring this up until the Sprint Retrospective.', 1),
(98, 23, 'Bring the concern to the testers to improve how the system is tested.', -1),
(99, 23, 'Encourage the Product Owner to put performance on the Product Backlog and express the stakeholder''s concern to the Development Team.', 1),
(100, 23, 'Explain to the Product Owner that it''s up to the Development Team to decide on acceptable performance standards.', -1),
(101, 24, 'Participating as a Scrum team member and facilitating as requested or needed.', 1),
(102, 24, 'Acting as a scribe to capture the Development Team''s answers.', -1),
(103, 24, 'Summarizing and reporting the discussions to management.', -1),
(104, 24, 'Prioritizing the resulting action items.', -1),
(105, 25, 'When the Product Owner identifies new work.', -1),
(106, 25, 'As soon as possible after they are identified.', -1),
(107, 25, 'During the Daily Scrum after the Development Team approves them.', 1),
(108, 25, 'When the Scrum Master has time to enter them.', -1),
(109, 26, 'Sprint Retrospective.', 1),
(110, 26, 'Members must stand up at the Daily Scrum.', -1),
(111, 26, 'Sprint Burndown Chart.', -1),
(112, 26, 'Release Planning.', -1),
(113, 26, 'All of the above.', -1),
(114, 27, 'Sprint Retrospective.', 1),
(115, 27, 'Sprint Testing.', -1),
(116, 27, 'Release Testing.', -1),
(117, 27, 'Sprint 0.', -1),
(118, 27, 'Sprint Planning.', 1),
(119, 27, 'Release Retrospective.', -1),
(120, 27, 'Daily Scrum.', 1),
(121, 28, 'The Product Owner and stakeholders.', -1),
(122, 28, 'The Product Owner and Development Team.', -1),
(123, 28, 'The Product Owner and management.', -1),
(124, 28, 'The Development Team and management.', -1),
(125, 28, 'The Development Team and stakeholders.', -1),
(126, 28, 'The Scrum Team and stakeholders.', 1),
(127, 29, 'The event must happen at a set time.', -1),
(128, 29, 'The event cant take no more than a maximum amount of time.', 1),
(129, 29, 'The event must happend by a given time.', -1),
(130, 29, 'The event must take at least a minimum amount of time.', -1),
(131, 30, 'True.', -1),
(132, 30, 'False.', 1),
(133, 31, 'It is a complete list of all work to be done in a Sprint.', 1),
(134, 31, 'It is ordered by te Product Owner.', -1),
(135, 31, 'It is the Development Team''s plan for the Sprint.', -1),
(136, 31, 'Each task is estimated in hours.', -1),
(137, 31, 'Every item has a designated owner.', -1),
(138, 32, 'Two minutes per person.', -1),
(139, 32, 'The same time of day every day.', -1),
(140, 32, '15 minutes for a 4 week sprint. For shorter Sprints it is usually shorter.', -1),
(141, 32, '15 minutes.', 1),
(142, 32, '4 hours.', -1),
(143, 33, 'Keeping track of and estimating all undone work to be completed in a separate Sprint.', -1),
(144, 33, 'Updating Sprint task properly in the electronic tracking tool.', -1),
(145, 33, 'Doing all work needed to meet the definition of "Done".', 1),
(146, 33, 'Reporting Sprint progress to the stakeholders daily.', -1),
(147, 34, 'Methods of communication.', -1),
(148, 34, 'The way the Scrum Team does Sprint Planning.', -1),
(149, 34, 'Skills needed to improve the Development Team''s ability to deliver.', -1),
(150, 34, 'Its Definition of "done".', -1),
(151, 34, 'All of the above.', 1),
(152, 35, 'Consulting with the Development Team.', 1),
(153, 35, 'Prioritizing the list and working on them in order.', 1),
(154, 35, 'Arranging a triage meeting with all project managers.', -1),
(155, 35, 'Alerting management to the impediments and their impact.', 1),
(156, 36, 'A defined and predictive process that conforms to the principles of Scientific Management.', -1),
(157, 36, 'A cookbook that defines best practices for softwware development.', -1),
(158, 36, 'A framework within which complex products in complex environments are developed.', 1),
(159, 36, 'A complete methodology that defines how to develop software.', -1),
(160, 37, 'Scrum is a methodology where you can pick and choose which parts of Scrum you think will work for your environment.', -1),
(161, 37, 'Each component of Scrum serves a specific purpose and is essential to Scrum''s success and your usage of Scrum to develop complex products.', 1),
(162, 37, 'Scrum is like traditional processes but with self-organization to replace Project Managers.', -1),
(163, 37, 'Scrum is based on empirical process control theory.', 1),
(164, 37, 'Scrum is a framework for developing and sustaining complex products.', 1),
(165, 38, 'New impediments for the Scrum Master to take care of.', 1),
(166, 38, 'An updated Scrum board to make Sprint progress transparent for the stakeholders.', -1),
(167, 38, 'An upated of completed tasks and of the remaining work so the Scrum Master can plan the next day.', -1),
(168, 38, 'A status report for the upper management indicating what each individual has done, will be doing, and what is impeding him/her.', -1),
(169, 38, 'A shared understanding of the most important work to be undertaken next to achieve the best possible progress toward the Sprint goal.', 1),
(170, 39, 'The Product Owner.', 1),
(171, 39, 'The Scrum Master.', -1),
(172, 39, 'The Development Team or its members.', -1),
(173, 39, 'The Stakeholders.', -1),
(174, 40, 'To continually monitor staffing levels of the Development Team.', -1),
(175, 40, 'To monitor the Development Team''s productivity.', -1),
(176, 40, 'To identify and remove people that aren''t working hard enough.', -1),
(177, 40, 'To facilitate the Scrum Teams with insights and resources that help them Improve.', 1),
(178, 41, 'The Scrum Team with the highest velocity pulls Product Backlog Items first.', -1),
(179, 41, 'The Development Teams pull in work in agreement with the Product Owner.', 1),
(180, 41, 'The Product Owner should provide each team with its own Product Backlog.', -1),
(181, 41, 'The Product Owner decides.', -1),
(182, 41, 'Each Scrum Team takes an equal number of items.', -1),
(183, 42, 'The Product Owner with the most valuable items placed at the top.', 1),
(184, 42, 'Items are randomly arranged.', -1),
(185, 42, 'Size, where small items are at the top and large items are at the bottom.', -1),
(186, 42, 'Risk,  where safer items are at the top, and riskier items are at the bottom.', -1),
(187, 43, 'True.', -1),
(188, 43, 'False.', 1),
(189, 44, 'The level of uncertainty over the technology to be used.', -1),
(190, 44, 'The risk of being disconnected from the stakeholders.', 1),
(191, 44, 'The frequency at which team formation can be changed.', 1),
(192, 44, 'The organization has mandated similar length sprints.', -1),
(193, 45, 'By the Development Team deciding what work to do in a Sprint.', 1),
(194, 45, 'By not allowing documentation.', -1),
(195, 45, 'By removing titles for Development Team members.', 1),
(196, 45, 'By preventing stakeholders from entering the development roo.', -1),
(197, 45, 'By being a lightweight framework.', 1),
(198, 46, 'Delegate the work to the concerned department.', -1),
(199, 46, 'Add a Sprint to specifically resolve all security concerns.', -1),
(200, 46, 'Have the Scrum Team create Product Backlog Items for each concern.', 1),
(201, 46, 'Postpone the work until a specialist can perform a security audit and create a list of security-related Product Backlog items.', -1),
(202, 46, 'Add security concerns to the definition of "Done".', 1),
(203, 47, 'During the Sprint Planning meeting.', -1),
(204, 47, 'At the beginning of the project.', 1),
(205, 47, 'Prir to the Sprint Planning meeting.', -1),
(206, 47, 'During the Sprint.', -1),
(207, 48, 'It depends.', -1),
(208, 48, 'Each Development Team uses its own but must make their definition clear to all other teams so the differences are known.', -1),
(209, 48, 'Each Development Team defines and uses its own. The differences are discussed and reconciles during a hardening Sprint.', -1),
(210, 48, 'All Development Teams must have a definition of "Done" that makes their combined work potentially releasable.', 1),
(211, 49, 'Partially complete the functionality, and discuss the remaining work at the Sprint Review.', -1),
(212, 49, 'Collaborate with the Product Owner to determine what is possible and acceptable.', 1),
(213, 49, 'Add a specialist to the Development Team.', -1),
(214, 49, 'Defer the work to a more appropiate Sprint.', -1),
(215, 50, 'Ensuring that the most valuable functionality is produced first, at all times.', 1),
(216, 50, 'Describing features as Use Cases.', -1),
(217, 50, 'Providing the Development Team with detailed specifications.', -1),
(218, 50, 'Creating detailed functional test cases.', -1),
(219, 50, 'Interacting with stakeholders.', 1),
(220, 51, 'At the ends of the Sprint.', -1),
(221, 51, 'When QA reports that the item passes all acceptance criteria.', -1),
(222, 51, 'When the item has no work remaining in order to be potentially released.', 1),
(223, 51, 'When all work in the Sprint Backlog related to the item is finished.', -1),
(224, 52, 'Managing the project and ensuring that the work meets the commitments to the stakeholders.', -1),
(225, 52, 'Keeping stakeholders at bay.', -1),
(226, 52, 'Directing the Development Team.', -1),
(227, 52, 'Optimizing the value of the work the Development Team does.', 1),
(228, 53, 'Existing teams propose how the would like to go about organizing into the new structure.', 1),
(229, 53, 'The Chief Product Owner determines the new team structures and assignments.', -1),
(230, 53, 'Managers personally re-assign current subordinates to new teams.', -1),
(231, 53, 'Managers collaborate to assign individuals to specific teams.', -1),
(232, 53, 'Bring all the developers together and let them self-organize into Development Teams.', 1),
(233, 54, 'The Development Team creating their own sprint backlog, reflecting all work that is part of the definition of "Done".', 1),
(234, 54, 'Development Team members collaboratively selecting their own work during the Sprint.', -1),
(235, 54, 'The Development Team has all the skills needed to create a releasable Increment.', 1),
(236, 54, 'Stakeholders walking in at the Daily Scrum to check progress and work with the Scrum Master to optimize the functional scope for the Sprint.', -1),
(237, 54, 'The Development Team inviting external people to the Sprint Planning to ask them how to turn a Product Backlog item into an increment via a complete and detailed Sprint Backlog.', 1),
(238, 54, 'The Product Owner doesn''t need to be at Sprint Retrospectives.', -1),
(239, 54, 'The Scrum Master is no longer needed.', -1),
(240, 54, 'The Development Team members are working within the boundaries of their functional description and nicely handing off work from analyst to developer to tester to integration.', -1),
(241, 55, 'True.', -1),
(242, 55, 'False.', 1),
(243, 56, 'Analyze, design, and describe the complete architecture and infrastructure.', -1),
(244, 56, 'Develop at least one piece of functionality.', 1),
(245, 56, 'Create an increment of potentially releasable software.', 1),
(246, 56, 'Analyze, describe, and document the requirements for the subsequent Sprints.', -1),
(247, 56, 'Make up a aplan for the rest of the project.', -1),
(248, 57, 'The Product Owner represents their opinions.', -1),
(249, 57, 'The Development Team self-manages and is the only management required at the Daily Scrum.', 1),
(250, 57, 'The Scrum Master speaks on their behalf.', -1),
(251, 57, 'Management gives an update at the start of each Daily Scrum.', -1),
(252, 58, 'Product Backlog ordering.', -1),
(253, 58, 'Stakeholders for the Sprint Review.', -1),
(254, 58, 'When to release, based on its progress.', -1),
(255, 58, 'Sprint length.', -1),
(256, 58, 'How to best accomplish its work.', 1),
(257, 59, 'True.', 1),
(258, 59, 'False.', -1),
(259, 60, 'True.', -1),
(260, 60, 'False.', 1),
(261, 61, 'The Scrum Master.', -1),
(262, 61, 'The Product Owner with input from the Development Team.', -1),
(263, 61, 'The Development Team after clarifying requirements with the Product Owner.', -1),
(264, 61, 'The Development Team, alone.', 1),
(265, 61, 'The most senior people in the organization, including architects and subject matter experts.', -1),
(266, 62, 'Increased commitement.', 1),
(267, 62, 'Increased self-accountability', 1),
(268, 62, 'Increased accuracy of estimates.', -1),
(269, 62, 'Increased rule complicance.', -1),
(270, 62, 'Increased creativity.', 1),
(271, 63, 'The Scrum Master. This ensures that the Development Team has the meeting and stays within the time-box.', -1),
(272, 63, 'Whoever the Development Team decides should start.', 1),
(273, 63, 'The person coming in last. This encourages people to be on time and helps to stay within the time-box.', -1),
(274, 63, 'The person who has the token.', -1),
(275, 63, 'The person who last broke the build.', -1),
(276, 64, 'True.', -1),
(277, 64, 'False.', 1),
(278, 65, 'When all work will be completed so the Scrum Team can be released for other work.', -1),
(279, 65, 'The evolution of the cost spent on the project.', -1),
(280, 65, 'When the work remaining will likely be completed if nothing changes on the Product Backlog or the Development Team.', 1),
(281, 65, 'When the project will be over if the Product Owner removes work that is equal in effort to any new work that is added.', -1),
(282, 66, 'The Development Team includes not only developers but also business analysts, architects, developers and testers.', -1),
(283, 66, 'The Develpment Team is a virtual team drawing from separate teams of business analysts, architects, developers and testers.', -1),
(284, 66, 'The Development Team includes cross-skilled individuals who are able to contribute to do what is necessary to deliver an increment of software.', 1),
(285, 66, 'Developers on the Development Team work closely with business analyst, architects, developers and testers who are not on the team.', -1),
(286, 67, 'True.', -1),
(287, 67, 'False.', 1),
(288, 68, 'The Product Owner demands it.', -1),
(289, 68, 'Rooms are hard to book and this lets it be booked in advance.', -1),
(290, 68, 'The consistency reduces complexity.', 1),
(291, 68, 'The place can be named.', -1),
(292, 69, 'Your Development Team is still responsible for creating user documentation. In this case, the Development Team members will write it.', 1),
(293, 69, 'Let the user documentation remain undone and accumulate until after the last development Sprint. It will then be done by any available technical writers.', -1),
(294, 69, 'Form a separate team of technical writers that will work on an on-demand basis for the various Product Owners. Work order will be first in, first out.', -1),
(295, 69, 'Wait until you have a technical writer on your Development Team to take care of this.', -1),
(296, 70, 'Bring up the problem in the Sprint Retrospective.', 1),
(297, 70, 'Coach the Product Owner in the values of Scrum and Incremental delivery.', 1),
(298, 70, 'Nominate a proxy Product Owner.', -1),
(299, 70, 'Inform the Product Owner''s functional manager.', -1),
(300, 70, 'Stop the Sprint, send the Product Owner to a course and restart.', -1),
(301, 71, 'Suggest the Product Owner extend the Sprint, so he can have more time to order the Product Backlog.', -1),
(302, 71, 'Present the Product Owner with and ordered Product Backlog to use.', -1),
(303, 71, 'Suggest that the Development Team does the Ordering to be sure that it is a feasible ordering of work.', -1),
(304, 71, 'Encourage the Product Owner to work with the Development Team to see which items technically are fastest to implement.', -1),
(305, 71, 'Offer the Product Owner help in understanding that the goal of ordering the Product Backlog is to maximize value.', 1),
(306, 72, 'True.', -1),
(307, 72, 'False.', 1),
(308, 73, 'Release Planning.', -1),
(309, 73, 'Sprint Retrospective.', 1),
(310, 73, 'Sprint Review.', 1),
(311, 73, 'Daily Scrum.', 1),
(312, 73, 'Refinement Meeting.', -1),
(313, 74, 'Describe the work that must be done before the Sprint is allowed to end.', -1),
(314, 74, 'Increase transparency.', 1),
(315, 74, 'Create a shared understanding of when work is complete.', 1),
(316, 74, 'Guide the Development Team on how many Product Backlog items to select for the Sprint.', 1),
(317, 74, 'Describe the purpose, objective, and time-box of each Scrum event.', -1),
(318, 75, 'How conditions have changed and how the Product Backlog should evolve.', -1),
(319, 75, 'Who is on the team and what team member roles will be.', -1),
(320, 75, 'What to do and who will do it.', -1),
(321, 75, 'What wen wrong in the last Spring and what to do differently this Sprint.', -1),
(322, 75, 'What can be done and how to do it.', 1),
(323, 76, 'Immediately after the conlusion of the previous Sprint.', 1),
(324, 76, 'The Monday following the Sprint Review.', -1),
(325, 76, 'Immediately following the next Sprint Planning.', -1),
(326, 76, 'When the Produt Owner is ready.', -1),
(327, 77, 'The Scrum Master.', -1),
(328, 77, 'The Development Team.', 1),
(329, 77, 'The Product Owner.', -1),
(330, 77, 'The Scrum Team.', -1),
(331, 78, 'The Development Team and Scrum Master.', -1),
(332, 78, 'The Development Team.', 1),
(333, 78, 'The Development Team and Product Owner.', -1),
(334, 78, 'The Scrum Team.', -1),
(335, 78, 'The Scrum Master and Product Owner.', -1),
(336, 79, 'Itenhances transparency for the Product Owner as a Development Team is not allowed to do additional feature development in a Sprint as long as there is technical debt.', -1),
(337, 79, 'As development progresses and code is added, the system becomes more difficult to stabilize, which results in future work being slowed down in unpreditable ways.', 1),
(338, 79, 'When calculated and estimated, the total amound of technical debt shows exactly how long until the Product Owner can release the Increment.', -1),
(339, 79, 'It leads to false assumptions about the current state of the system, specifically of an Increment being releasable at the end of a Sprint.', 1),
(340, 80, 'The stakeholders were not allowed to enter the development area.', -1),
(341, 80, 'The stakeholders haven''t been using the Sprint Reviews to inspect and evaluate progress.', 1),
(342, 80, 'The Project Management Office(PMO) has not been engaged adequately.', -1),
(343, 80, 'Changes to the project plan were not adequately documented and shared.', -1),
(344, 80, 'The Scrum Master has not ensured that the project is transparent.', 1),
(345, 80, 'The Product Owner has not been keeping the stakeholders aware of the progress of the project.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `curentResults`
--

CREATE TABLE IF NOT EXISTS `curentResults` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `total` varchar(6) NOT NULL,
  `user` varchar(80) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(450) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`Id`, `question`, `total`) VALUES
(1, 'In the Sprint Planning meeting, the Product Owner and the Development Team were unable to reach a clear understanding about the highest order Product Backlog items. Because of this, the Development Team couldn''t figure out how many Product Backlog items it could forecast for the upcoming Sprint. They were able to agree on a Sprint Goal, however. ¿Which of the following two actions should the Scrum Master support? (choose the best two answers)', 2),
(2, 'How do you know that a Development Team is cross-functional? (choose the best answer)', 1),
(3, 'Who creates the definition of "Done"? (choose the best answer)', 1),
(4, 'As the Sprint Planning meeting progresses, the Development Team sees that the workload is greater than they can handle. ¿Which two are valid actions? (choose the best two answers)', 2),
(5, 'What is the recommended size for a Development Team? (choose the best answer)', 1),
(6, 'Who is responsible for clearly expressing Product Backlog Items? (choose the best answer)', 1),
(7, 'Which Scrum Value is affected by a lack of trust in the Scrum Team? (choose the best answer)', 1),
(8, 'A Scrum Master is working with a Development Team that has members in different physical locations. The Development Team meets in a variety of meeting rooms and has much to do logistically (for example, set up conference calls) before the daily Scrum. What action should the Scrum Master take? (choose the best answer)', 1),
(9, 'How much work must a Development Team do to a Product Backlog item it selects for a Sprint? (choose the best answer)', 1),
(10, 'How much time is required after a Sprint to prepare for the next Sprint? (choose the best answer)', 1),
(11, 'In order to achieve the benefits of Scrum, it is important to enact the value of commitment, what two actions demonstrate the commitment of Scrum Team members? (choose the best two answers)', 2),
(12, 'Sprint burndown charts are an efficient tracking tool, because they show: (choose the best answer)', 1),
(13, 'True or False: The purpose of a Sprint is to produce a done increment of product', 1),
(14, 'Five new Scrum Teams have been created to build one product. A few of the developers on one of the Development Teams ask the Scrum Master how to coordinate their work with the other teams. What should the Scrum Master do? (choose the best answer)', 1),
(15, 'For which is the Scrum Master responsible? (choose the best answer)', 1),
(16, 'If two Scrum Teams are added to the development of a product that previously had only one Scrum Team, what will be the Immediate Impact on the productivity of the original Scrum Team? (choose the best answer)', 1),
(17, 'For the purpose of transparency, when does Scrum say a new increment of working software must be available? (choose the best answer)', 1),
(18, 'What happens if the Development Team cannot complete its work by the end of the Sprint? (choose te best answer)', 1),
(19, 'What are two responsibilities of testers in a Development Team? (choose the best two answers)', 2),
(20, 'The Product Owner determines how many Product Backlog Items the Development Team selects for a Sprint. (choose the best answer)', 1),
(21, 'Which of the following are true about the Product Owner role? (choose the best three answers)', 3),
(22, 'When might a Sprint be abnormally cancelled? (choose the best answer)', 1),
(23, 'Several Sprints into a project, the Product Owner tells the Scrum Master that a key stakeholder just started using the product. The stakeholder is unhappy with the slow performance. What are two good options for the Scrum Master? (choose the best two answers)', 2),
(24, 'During a Sprint Retrospective, for what is the Scrum Master responisble? (choose the best answer) ', 1),
(25, 'During a Sprint, when is new work or further decomposition of work added to the Sprint Backlog? (choose the best answer)', 1),
(26, 'Which of the following is required by Scrum? (choose all that apply)', 1),
(27, 'Which three of the following are time-boxed events in Scrum? (choose the best three answers)', 3),
(28, 'The Sprint Review is mainly an inspect and adapt opportunity for which group? (choose the best answer)', 1),
(29, 'What does it mean to say that an event has a time-box? (choose the best answer)', 1),
(30, 'True or False: Scrum has a role called "Project Manager"', 1),
(31, 'Which statement best describes the Sprint Backlog as outcome of the Sprint Planning? (choose the best answer)', 1),
(32, 'The time-box for a Daily Scrum is? (choose the best answer)', 1),
(33, 'What enhances the transparency of an Increment? (choose the best answer)', 1),
(34, 'Which of the following might the Scrum Team discuss during a Sprint Retrospective? (choose the best answer)', 1),
(35, 'A Scrum Master is keeping a list of open impediments, but it is growing and he/she has been able to resolve only a small portion of the impediments. Which three techniques wuld be most helpful in this situation? (choose the best three answers)', 3),
(36, 'Which statement best describes Scrum? (choose the best answer)', 1),
(37, 'Which three of the following are true about Scrumm? (choose the best three answers)', 3),
(38, 'One of the Scrum events is the Daily Scrum. What are two intended outcomes of the Daily Scrum? (choose the best two answers)', 2),
(39, 'Who can abnormally terminate a Sprint? (choose the best answer)', 1),
(40, 'What is the role of management in Scrum? (choose the best answer)', 1),
(41, 'How should Product Backlog Items be chosen when multiple Scrum Teams work from the same Product Backlog? (choose the best answer)', 1),
(42, 'The Product Backlog is ordered by: (choose the best answer)', 1),
(43, 'True or False: When multiple teams work together on the same prduct, each team should maintain a separate Product Backlog', 1),
(44, 'What two factors are best considered when establishing the Sprint length? (choose the best two answers)', 2),
(45, 'What are three ways Scrum promotes self-organization? (choose the best three answers)', 3),
(46, 'What are two good ways for a Scrum Team to ensure security concerns are satisfied? (choose the best two answers)', 2),
(47, 'When is the Sprint Backlog created? (choose the best answer)', 1),
(48, 'When many Development Teams are working on a single product, what best describes the definition of "Done?" (choose the best answer)', 1),
(49, 'When a Development Team is having trouble delivering a working increment because they don''t understand a functional requirement, what should they do? (choose the best answer)', 1),
(50, 'A Scrum Team has been working on a product for nine Sprints. A new Product Owner comes in, understanding he is accountable for the Product Backlog. However, he is unsure about his responsibiities. Which two activities are part of the Product Owner role according to Scrum? (choose the best two answers)', 2),
(51, 'When is Implementation of a Product Backlog item considered complete? (choose the best answer)', 1),
(52, 'Which statement best describes a Product Owner''s responsibility? (choose the best answer)', 1),
(53, 'Which two ways of creating Development Teams are consistent with Scrum''s values? (choose the best two answers)', 2),
(54, 'Which three behaviors demonstrate that a team is self-organizing? (choose the best three answers)', 3),
(55, 'True or False: Cross-functional teams are optimized to work on one technical layer of a system only (e.g. GUI, database, middle tier, Interfaces)', 1),
(56, 'Which two things shoul the Development Team do during the first Sprint? (choose the best two answers)', 2),
(57, 'How is management external to the Scrum Team Involved in the Daily Scrum? (choose the best answer)', 1),
(58, 'Which does a self-organizing Development Team choose? (choose the best answer)', 1),
(59, 'True or False: The Sprint Goal is a result of Sprint Planning, as is the Sprint Backlog', 1),
(60, 'True or False: A properly functioning Scrum Team will have at least one Release Sprint and may well have several', 1),
(61, 'Who creates a Product Backlog Item''s estimate? (choose the best answer)', 1),
(62, 'what are three benefits of self-organization? (choose the best three answers)', 3),
(63, 'Who starts the Daily Scrum? (choose the best answer)', 1),
(64, 'True or False: A product Increment must be released to production at the end of each Sprint', 1),
(65, 'If burndown charts are used to visualize progress, what does a trend line through a release burndown chart indicate? (choose the best answer)', 1),
(66, 'What does it mean for a Development Team to be cross-functional? (choose the best answer)', 1),
(67, 'True or False: A Scrum Master is essentially the same thing as a traditional PM (Project Manager)', 1),
(68, 'Why is the Daily Scrum held at the same time and same place? (choose the best answer)', 1),
(69, 'User documentation is part of your definition of "Done". However, there aren''t enought technical writers for all teams. Your Development Team doesn''t have a technical writer. What should you do? (choose the best answer)', 1),
(70, 'The Product Owner is not collaborating with the Development Team during the Sprint. What are two valuable actions for a Scrum Master to take? (choose the best two answers)', 2),
(71, 'The Scrum Master observes the Product Owner struggling with ordering the Product Backlog. What is an appropiate action for the Scrum Master to take? (choose the best answer)', 1),
(72, 'True or False: The Product Owner makes sure the team selects enough from the Product Backlog for a Sprint to satisfy the stakeholders', 1),
(73, 'Which three of the following are feedback loops in Scrum? (choose the best three answers)', 3),
(74, 'Which three purposes does the definition of "Done" serve? (choose the best three answers)', 3),
(75, 'Which answer best describes the topics covered in Sprint Planning? (choose the best answer)', 1),
(76, 'When does the next Sprint begin? (choose the best answer)', 1),
(77, 'Who owns the Sprint Backlog? (choose the best answer)', 1),
(78, 'Who must attend the Daily Scrum? (choose the best answer)', 1),
(79, 'Select two ways in which technical debt Impacts transparency (choose the best two answers)', 2),
(80, 'At seventh Sprint Review, the stakeholders are disappointed and angry. They have determined that the product or system being built both will not meet their needs and will cost more than they are willing to spend. What factors may have led to this? (choose the best three answers)', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `user` varchar(40) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `name`, `user`, `pass`) VALUES
(1, 'Fabricio Aldecosea', 'faldecosea', '1E946845E31360389A3766BEA19C470C75937DA3'),
(2, 'Pablo', 'pablof', '94e2f8bf44cb4d330c8c4c2befdde25e7be53720'),
(3, 'Gonzalo', 'gonzaloa', 'b44a51fe535d071f346d21c4c17a4ea4d83f8ce6'),
(4, 'Mauricio', 'mauricioc', '7c52f7db2e1b60e7fba64192548c66b258360102'),
(5, 'Eniley', 'enileya', '0a3f652a1fa14ea47243ac5961f323b9b78310a9'),
(6, 'Victoria', 'victorian', 'f648ad9e1f9d8ffb882450ff4d94c3e750d0cef6'),
(7, 'Bruno', 'brunol', '6655456b2ed0352e4b5a3d00a60f7bcec33543a8'),
(8, 'Stefania', 'stefaniao', '4ac12e04852b89e5c79ce758d484f6866d17b7f1'),
(9, 'German', 'germanr', '23c8b913295ee5273707f16fa0e6c7b739c45929'),
(10, 'Agust&iacute;n', 'agustinc', 'c0ab65f92e43cb59aae05c07b5e92bd6b8061418');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
