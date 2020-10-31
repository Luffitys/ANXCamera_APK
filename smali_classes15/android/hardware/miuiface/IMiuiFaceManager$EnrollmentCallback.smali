.class public abstract Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;
.super Ljava/lang/Object;
.source "IMiuiFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/IMiuiFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EnrollmentCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public onEnrollmentProgress(II)V
    .registers 3

    return-void
.end method
