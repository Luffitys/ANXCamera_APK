.class public final Landroid/os/UidProto$Package$Service;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto$Package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Service"
.end annotation


# static fields
.field public static final LAUNCH_COUNT:J = 0x10500000004L

.field public static final NAME:J = 0x10900000001L

.field public static final START_COUNT:J = 0x10500000003L

.field public static final START_DURATION_MS:J = 0x10300000002L


# instance fields
.field final synthetic this$1:Landroid/os/UidProto$Package;


# direct methods
.method public constructor <init>(Landroid/os/UidProto$Package;)V
    .registers 2

    iput-object p1, p0, Landroid/os/UidProto$Package$Service;->this$1:Landroid/os/UidProto$Package;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
