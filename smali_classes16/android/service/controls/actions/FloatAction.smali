.class public final Landroid/service/controls/actions/FloatAction;
.super Landroid/service/controls/actions/ControlAction;
.source "FloatAction.java"


# static fields
.field private static final KEY_NEW_VALUE:Ljava/lang/String; = "key_new_value"

.field private static final TYPE:I = 0x2


# instance fields
.field private final mNewValue:F


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/controls/actions/ControlAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_new_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/service/controls/actions/FloatAction;->mNewValue:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/service/controls/actions/FloatAction;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Landroid/service/controls/actions/ControlAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Landroid/service/controls/actions/FloatAction;->mNewValue:F

    return-void
.end method


# virtual methods
.method public getActionType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method getDataBundle()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Landroid/service/controls/actions/ControlAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Landroid/service/controls/actions/FloatAction;->mNewValue:F

    const-string v2, "key_new_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public getNewValue()F
    .registers 2

    iget v0, p0, Landroid/service/controls/actions/FloatAction;->mNewValue:F

    return v0
.end method
