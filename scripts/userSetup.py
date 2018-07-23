from maya import utils


def mGear_menu_loader():
    """Create mGear menu"""

    # Install mGear Menu
    import mgear
    mgear.install()

    # Install Shifter Menu
    import mgear.shifter.menu
    mgear.shifter.menu.install()

    # Install Simple Rig Menu
    import mgear.simpleRig.menu
    mgear.simpleRig.menu.install()

    # Install Rigbits Menu
    import mgear.rigbits.menu
    mgear.rigbits.menu.install()

    # Install Skinning Menu
    import mgear.core.menu
    mgear.core.menu.install_skinning_menu()

    # Install Animbits Menu
    import mgear.animbits.menu
    mgear.animbits.menu.install()

    # Install Synoptic Menu
    import mgear.crank.menu
    mgear.crank.menu.install()

    # Install Synoptic Menu
    import mgear.synoptic.menu
    mgear.synoptic.menu.install()

    # Install Utilities Menu
    import mgear.menu
    m = mgear.menu.install_utils_menu()
    mgear.core.menu.install_utils_menu(m)
    mgear.rigbits.menu.install_utils_menu(m)

    # Install Help Menu
    mgear.menu.install_help_menu()


utils.executeDeferred(mGear_menu_loader)
