.class public final Landroid/os/UidProto$Wifi;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Wifi"
.end annotation


# static fields
.field public static final APPORTIONED_SCAN:J = 0x10b00000003L

.field public static final BACKGROUND_SCAN:J = 0x10b00000004L

.field public static final FULL_WIFI_LOCK_DURATION_MS:J = 0x10300000001L

.field public static final RUNNING_DURATION_MS:J = 0x10300000002L


# instance fields
.field final synthetic this$0:Landroid/os/UidProto;


# direct methods
.method public constructor <init>(Landroid/os/UidProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/UidProto$Wifi;->this$0:Landroid/os/UidProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
