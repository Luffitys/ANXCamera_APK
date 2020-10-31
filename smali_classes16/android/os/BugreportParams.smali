.class public final Landroid/os/BugreportParams;
.super Ljava/lang/Object;
.source "BugreportParams.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BugreportParams$BugreportMode;
    }
.end annotation


# static fields
.field public static final BUGREPORT_MODE_FULL:I = 0x0

.field public static final BUGREPORT_MODE_INTERACTIVE:I = 0x1

.field public static final BUGREPORT_MODE_REMOTE:I = 0x2

.field public static final BUGREPORT_MODE_TELEPHONY:I = 0x4

.field public static final BUGREPORT_MODE_WEAR:I = 0x3

.field public static final BUGREPORT_MODE_WIFI:I = 0x5


# instance fields
.field private final mMode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/BugreportParams;->mMode:I

    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 2

    iget v0, p0, Landroid/os/BugreportParams;->mMode:I

    return v0
.end method
