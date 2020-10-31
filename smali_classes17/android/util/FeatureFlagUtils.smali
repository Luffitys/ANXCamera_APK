.class public Landroid/util/FeatureFlagUtils;
.super Ljava/lang/Object;
.source "FeatureFlagUtils.java"


# static fields
.field private static final DEFAULT_FLAGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DYNAMIC_SYSTEM:Ljava/lang/String; = "settings_dynamic_system"

.field public static final FFLAG_OVERRIDE_PREFIX:Ljava/lang/String; = "sys.fflag.override."

.field public static final FFLAG_PREFIX:Ljava/lang/String; = "sys.fflag."

.field public static final HEARING_AID_SETTINGS:Ljava/lang/String; = "settings_bluetooth_hearing_aid"

.field public static final PERSIST_PREFIX:Ljava/lang/String; = "persist.sys.fflag.override."

.field public static final SCREENRECORD_LONG_PRESS:Ljava/lang/String; = "settings_screenrecord_long_press"

.field public static final SEAMLESS_TRANSFER:Ljava/lang/String; = "settings_seamless_transfer"

.field public static final SETTINGS_DO_NOT_RESTORE_PRESERVED:Ljava/lang/String; = "settings_do_not_restore_preserved"

.field public static final SETTINGS_FUSE_FLAG:Ljava/lang/String; = "settings_fuse"

.field public static final SETTINGS_WIFITRACKER2:Ljava/lang/String; = "settings_wifitracker2"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_audio_switcher"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_systemui_theme"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_fuse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_dynamic_system"

    const-string v3, "false"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_seamless_transfer"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_bluetooth_hearing_aid"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_screenrecord_long_press"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_wifi_details_datausage_header"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_skip_direction_mutable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_wifitracker2"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_controller_loading_enhancement"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_conditionals"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_do_not_restore_preserved"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "settings_tether_all_in_one"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllFeatureFlags()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/util/FeatureFlagUtils;->DEFAULT_FLAGS:Ljava/util/Map;

    return-object v0
.end method

.method public static isEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sys.fflag.override."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_36
    invoke-static {}, Landroid/util/FeatureFlagUtils;->getAllFeatureFlags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sys.fflag.override."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_18

    const-string/jumbo v1, "true"

    goto :goto_1a

    :cond_18
    const-string v1, "false"

    :goto_1a
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
