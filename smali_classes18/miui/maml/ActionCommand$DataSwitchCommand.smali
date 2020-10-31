.class Lmiui/maml/ActionCommand$DataSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataSwitchCommand"
.end annotation


# instance fields
.field private mApnEnable:Z

.field private mMobileDataUtils:Landroid/app/MobileDataUtils;

.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    const-string v1, "data_state"

    invoke-direct {p0, p1, v1, v0}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_12

    :cond_e
    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    :goto_12
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-eq v1, v0, :cond_23

    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v2, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    :cond_23
    return-void
.end method

.method protected update()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v1, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/MobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$DataSwitchCommand;->updateState(I)V

    return-void
.end method
