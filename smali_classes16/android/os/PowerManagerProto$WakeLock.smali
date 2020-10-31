.class public final Landroid/os/PowerManagerProto$WakeLock;
.super Ljava/lang/Object;
.source "PowerManagerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManagerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeLock"
.end annotation


# static fields
.field public static final HELD:J = 0x10800000003L

.field public static final INTERNAL_COUNT:J = 0x10500000004L

.field public static final PACKAGE_NAME:J = 0x10900000002L

.field public static final TAG:J = 0x10900000001L

.field public static final WORK_SOURCE:J = 0x10b00000005L


# instance fields
.field final synthetic this$0:Landroid/os/PowerManagerProto;


# direct methods
.method public constructor <init>(Landroid/os/PowerManagerProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/PowerManagerProto$WakeLock;->this$0:Landroid/os/PowerManagerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
