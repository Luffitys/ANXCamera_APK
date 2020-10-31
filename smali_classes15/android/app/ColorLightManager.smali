.class public Landroid/app/ColorLightManager;
.super Ljava/lang/Object;
.source "ColorLightManager.java"


# static fields
.field public static final LIGHTSTYLE_ALARM:I = 0x4

.field public static final LIGHTSTYLE_DEFAULT:I = 0x0

.field public static final LIGHTSTYLE_EXPAND:I = 0x5

.field public static final LIGHTSTYLE_GAME:I = 0x2

.field public static final LIGHTSTYLE_LUCKYMONEY:I = 0x6

.field public static final LIGHTSTYLE_MUSIC:I = 0x3

.field public static final LIGHTSTYLE_PHONE:I = 0x1

.field public static final LIGHTSTYLE_SRC_NOTFOUND:I = -0x64

.field public static final LIGHTSTYLE_TURNOFF:I = -0x1

.field private static ONE_HOUR:J

.field private static ONE_MINUTE:J

.field private static sService:Lmiui/lights/ILightsManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/32 v0, 0xea60

    sput-wide v0, Landroid/app/ColorLightManager;->ONE_MINUTE:J

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    sput-wide v0, Landroid/app/ColorLightManager;->ONE_HOUR:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getServices()Lmiui/lights/ILightsManager;
    .registers 6

    sget-object v0, Landroid/app/ColorLightManager;->sService:Lmiui/lights/ILightsManager;

    if-nez v0, :cond_2e

    :try_start_4
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getColorLightManager"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lmiui/lights/ILightsManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/lights/ILightsManager;

    move-result-object v3

    sput-object v3, Landroid/app/ColorLightManager;->sService:Lmiui/lights/ILightsManager;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2e
    :goto_2e
    sget-object v0, Landroid/app/ColorLightManager;->sService:Lmiui/lights/ILightsManager;

    return-object v0
.end method


# virtual methods
.method public enableBatteryLight(Z)V
    .registers 5

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string v1, "battery_light_turn_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public enableLight(Z)V
    .registers 5

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string v1, "light_turn_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public enableMusiclLight(Z)V
    .registers 5

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string v1, "music_light_turn_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public enableNotificationLight(Z)V
    .registers 5

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string v1, "notification_light_turn_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public isBatteryLightEnable()Z
    .registers 5

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_turn_on"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method public isLightEnable()Z
    .registers 5

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "light_turn_on"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method public isMusicLightEnable()Z
    .registers 5

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_light_turn_on"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method public isNotificationLightEnable()Z
    .registers 5

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_turn_on"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method public setColorfulLight(I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ColorLightManager;->getServices()Lmiui/lights/ILightsManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v0, p1, v2}, Lmiui/lights/ILightsManager;->setColorfulLight(Ljava/lang/String;II)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    return-void
.end method

.method public setColorfulLightEndEnableTime(JJ)V
    .registers 9

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v0, Landroid/app/ColorLightManager;->ONE_HOUR:J

    mul-long/2addr v0, p1

    sget-wide v2, Landroid/app/ColorLightManager;->ONE_MINUTE:J

    mul-long/2addr v2, p3

    add-long/2addr v0, v2

    iget-object v2, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "light_turn_on_endTime"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public setColorfulLightStartEnableTime(JJ)V
    .registers 9

    iget-object v0, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v0, Landroid/app/ColorLightManager;->ONE_HOUR:J

    mul-long/2addr v0, p1

    sget-wide v2, Landroid/app/ColorLightManager;->ONE_MINUTE:J

    mul-long/2addr v2, p3

    add-long/2addr v0, v2

    iget-object v2, p0, Landroid/app/ColorLightManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "light_turn_on_startTime"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method
