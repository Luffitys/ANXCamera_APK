.class public Lcom/android/internal/policy/MiuiPhoneWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "MiuiPhoneWindow.java"


# instance fields
.field private mMenuDownCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    return-void
.end method


# virtual methods
.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .registers 19

    move-object v0, p0

    const/16 v1, 0xbb

    move/from16 v2, p2

    if-ne v2, v1, :cond_34

    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/16 v9, 0x52

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    goto :goto_36

    :cond_34
    move-object/from16 v1, p3

    :goto_36
    const/16 v3, 0x52

    if-eq v2, v3, :cond_3b

    goto :goto_4c

    :cond_3b
    iget v4, v0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    if-nez v4, :cond_46

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Landroid/view/KeyEvent;-><init>(II)V

    move-object v1, v4

    :cond_46
    iget v3, v0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    :goto_4c
    move/from16 v3, p1

    invoke-super {p0, v3, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v4

    return v4
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .registers 19

    move-object v0, p0

    const/16 v1, 0xbb

    move/from16 v2, p2

    if-ne v2, v1, :cond_34

    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/16 v9, 0x52

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    goto :goto_36

    :cond_34
    move-object/from16 v1, p3

    :goto_36
    const/16 v3, 0x52

    if-eq v2, v3, :cond_3b

    goto :goto_49

    :cond_3b
    iget v4, v0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_46

    new-instance v4, Landroid/view/KeyEvent;

    invoke-direct {v4, v5, v3}, Landroid/view/KeyEvent;-><init>(II)V

    move-object v1, v4

    :cond_46
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    :goto_49
    move/from16 v3, p1

    invoke-super {p0, v3, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v4

    return v4
.end method
