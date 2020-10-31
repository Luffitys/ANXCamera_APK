.class public final Landroid/service/controls/actions/ModeAction;
.super Landroid/service/controls/actions/ControlAction;
.source "ModeAction.java"


# static fields
.field private static final KEY_MODE:Ljava/lang/String; = "key_mode"

.field private static final TYPE:I = 0x4


# instance fields
.field private final mNewMode:I


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/controls/actions/ControlAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/actions/ModeAction;->mNewMode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/service/controls/actions/ModeAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Landroid/service/controls/actions/ControlAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Landroid/service/controls/actions/ModeAction;->mNewMode:I

    return-void
.end method


# virtual methods
.method public getActionType()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method getDataBundle()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Landroid/service/controls/actions/ControlAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Landroid/service/controls/actions/ModeAction;->mNewMode:I

    const-string v2, "key_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getNewMode()I
    .registers 2

    iget v0, p0, Landroid/service/controls/actions/ModeAction;->mNewMode:I

    return v0
.end method
