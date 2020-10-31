.class public Landroid/provider/SettingsSlicesContract;
.super Ljava/lang/Object;
.source "SettingsSlicesContract.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "android.settings.slices"

.field public static final BASE_URI:Landroid/net/Uri;

.field public static final KEY_AIRPLANE_MODE:Ljava/lang/String; = "airplane_mode"

.field public static final KEY_BATTERY_SAVER:Ljava/lang/String; = "battery_saver"

.field public static final KEY_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final KEY_LOCATION:Ljava/lang/String; = "location"

.field public static final KEY_WIFI:Ljava/lang/String; = "wifi"

.field public static final PATH_SETTING_ACTION:Ljava/lang/String; = "action"

.field public static final PATH_SETTING_INTENT:Ljava/lang/String; = "intent"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.settings.slices"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SettingsSlicesContract;->BASE_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
