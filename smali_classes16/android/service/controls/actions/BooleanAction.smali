.class public final Landroid/service/controls/actions/BooleanAction;
.super Landroid/service/controls/actions/ControlAction;
.source "BooleanAction.java"


# static fields
.field private static final KEY_NEW_STATE:Ljava/lang/String; = "key_new_state"

.field private static final TYPE:I = 0x1


# instance fields
.field private final mNewState:Z


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/controls/actions/ControlAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_new_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/actions/BooleanAction;->mNewState:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/service/controls/actions/BooleanAction;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Landroid/service/controls/actions/ControlAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Landroid/service/controls/actions/BooleanAction;->mNewState:Z

    return-void
.end method


# virtual methods
.method public getActionType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method getDataBundle()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Landroid/service/controls/actions/ControlAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/controls/actions/BooleanAction;->mNewState:Z

    const-string v2, "key_new_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getNewState()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/controls/actions/BooleanAction;->mNewState:Z

    return v0
.end method
