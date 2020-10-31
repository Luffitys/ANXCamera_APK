.class public final Landroid/providers/settings/GlobalSettingsProto$Location;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Location"
.end annotation


# static fields
.field public static final BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x10b00000001L

.field public static final BACKGROUND_THROTTLE_PACKAGE_WHITELIST:J = 0x10b00000003L

.field public static final BACKGROUND_THROTTLE_PROXIMITY_ALERT_INTERVAL_MS:J = 0x10b00000002L

.field public static final GLOBAL_KILL_SWITCH:J = 0x10b00000005L

.field public static final GNSS_HAL_LOCATION_REQUEST_DURATION_MILLIS:J = 0x10b00000007L

.field public static final GNSS_SATELLITE_BLACKLIST:J = 0x10b00000006L

.field public static final IGNORE_SETTINGS_PACKAGE_WHITELIST:J = 0x10b00000008L

.field public static final SETTINGS_LINK_TO_PERMISSIONS_ENABLED:J = 0x10b00000004L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Location;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
