================================
G&S Society of Victoria web site
================================

Abstract
========

This document proposes to replace the current Joomla-based web site with a flat
file structure built from reStructuredText files managed through a git repo.

Rationale
=========

PHP, Joomla, and the plugins/components used are major security flaws, and with
no full-time Joomla administrator to stay on top of things, the site has been
compromised multiple times. Putting out brushfires is a poor use of my time;
fixing this permanently would give peace of mind to both the admin and the
Committee, who will no longer need fear the site being overwritten with
unsavory text, as happened once before.

Additionally, this proposal makes "drive-by editing" possible; any reader of
the web site may propose an edit, which will be sent to the admins for merging.

Costs of this proposal - one-off
================================

This change would require some effort. For instance, the archive would not be
automatically carried over; we'd need to import it, which would require some
manual work (albeit script-assisted). This would also be a good opportunity
to do some heavy-duty data cleaning at the human level, eg removing "tickets
are still on sale" from years-ago shows.

The shop will not be affected by this, so a plan will be needed which keeps
the same shop we currently have. (Long-term, there are many options for a
replacement shop, but they would be separate proposals.)

There would be no WYSIWYG editor; instead, you have a simple text markup that
looks like its result. For serious formatting changes, this would be something
new to learn, but most people won't need to learn it. If someone proposes a
change with messed-up formatting, the formatting can be fixed by an admin prior
to the change being merged in.

Archive By Decade may not be implemented yet. (?)

Costs of this proposal - on-going
=================================

I (Rosuav) will keep track of drive-by changes; for our regular editors,
changes can still be done via pretty much the same system. Instead of logging
in to Joomla and making a change, you'd log in to GitHub and make a change.

Timing
======

The Society is currently considering rebranding itself as GASVIC or some other.
Whatever actual acronym and name are eventually accepted, this change will be
a good opportunity to revamp the web site.
