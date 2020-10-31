.class public final Landroid/providers/settings/GlobalSettingsProto$PdpWatchdog;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PdpWatchdog"
.end annotation


# static fields
.field public static final ERROR_POLL_COUNT:J = 0x10b00000005L

.field public static final ERROR_POLL_INTERVAL_MS:J = 0x10b00000003L

.field public static final LONG_POLL_INTERVAL_MS:J = 0x10b00000002L

.field public static final MAX_PDP_RESET_FAIL_COUNT:J = 0x10b00000006L

.field public static final POLL_INTERVAL_MS:J = 0x10b00000001L

.field public static final TRIGGER_PACKET_COUNT:J = 0x10b00000004L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$PdpWatchdog;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
