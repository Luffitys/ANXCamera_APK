.class public abstract Landroid/app/servertransaction/ActivityLifecycleItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "ActivityLifecycleItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/servertransaction/ActivityLifecycleItem$LifecycleState;
    }
.end annotation


# static fields
.field public static final ON_CREATE:I = 0x1

.field public static final ON_DESTROY:I = 0x6

.field public static final ON_PAUSE:I = 0x4

.field public static final ON_RESTART:I = 0x7

.field public static final ON_RESUME:I = 0x3

.field public static final ON_START:I = 0x2

.field public static final ON_STOP:I = 0x5

.field public static final PRE_ON_CREATE:I = 0x0

.field public static final UNDEFINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getTargetState()I
.end method

.method public recycle()V
    .registers 1

    return-void
.end method
