.class public final Landroid/os/SystemPropertiesProto$Log;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Log"
.end annotation


# static fields
.field public static final TAG_STATS_LOG:J = 0x10900000002L

.field public static final TAG_WIFI_HAL:J = 0x10900000001L


# instance fields
.field final synthetic this$0:Landroid/os/SystemPropertiesProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Log;->this$0:Landroid/os/SystemPropertiesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
