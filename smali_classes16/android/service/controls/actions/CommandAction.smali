.class public final Landroid/service/controls/actions/CommandAction;
.super Landroid/service/controls/actions/ControlAction;
.source "CommandAction.java"


# static fields
.field private static final TYPE:I = 0x5


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/controls/actions/ControlAction;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/service/controls/actions/CommandAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/controls/actions/ControlAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActionType()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method
