.class public Landroid/app/admin/SecurityLog;
.super Ljava/lang/Object;
.source "SecurityLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SecurityLog$SecurityEvent;,
        Landroid/app/admin/SecurityLog$SecurityLogLevel;,
        Landroid/app/admin/SecurityLog$SecurityLogTag;
    }
.end annotation


# static fields
.field public static final LEVEL_ERROR:I = 0x3

.field public static final LEVEL_INFO:I = 0x1

.field public static final LEVEL_WARNING:I = 0x2

.field private static final PROPERTY_LOGGING_ENABLED:Ljava/lang/String; = "persist.logd.security"

.field public static final TAG_ADB_SHELL_CMD:I = 0x33452

.field public static final TAG_ADB_SHELL_INTERACTIVE:I = 0x33451

.field public static final TAG_APP_PROCESS_START:I = 0x33455

.field public static final TAG_CAMERA_POLICY_SET:I = 0x33472

.field public static final TAG_CERT_AUTHORITY_INSTALLED:I = 0x3346d

.field public static final TAG_CERT_AUTHORITY_REMOVED:I = 0x3346e

.field public static final TAG_CERT_VALIDATION_FAILURE:I = 0x33471

.field public static final TAG_CRYPTO_SELF_TEST_COMPLETED:I = 0x3346f

.field public static final TAG_KEYGUARD_DISABLED_FEATURES_SET:I = 0x33465

.field public static final TAG_KEYGUARD_DISMISSED:I = 0x33456

.field public static final TAG_KEYGUARD_DISMISS_AUTH_ATTEMPT:I = 0x33457

.field public static final TAG_KEYGUARD_SECURED:I = 0x33458

.field public static final TAG_KEY_DESTRUCTION:I = 0x3346a

.field public static final TAG_KEY_GENERATED:I = 0x33468

.field public static final TAG_KEY_IMPORT:I = 0x33469

.field public static final TAG_KEY_INTEGRITY_VIOLATION:I = 0x33470

.field public static final TAG_LOGGING_STARTED:I = 0x3345b

.field public static final TAG_LOGGING_STOPPED:I = 0x3345c

.field public static final TAG_LOG_BUFFER_SIZE_CRITICAL:I = 0x3345f

.field public static final TAG_MAX_PASSWORD_ATTEMPTS_SET:I = 0x33464

.field public static final TAG_MAX_SCREEN_LOCK_TIMEOUT_SET:I = 0x33463

.field public static final TAG_MEDIA_MOUNT:I = 0x3345d

.field public static final TAG_MEDIA_UNMOUNT:I = 0x3345e

.field public static final TAG_OS_SHUTDOWN:I = 0x3345a

.field public static final TAG_OS_STARTUP:I = 0x33459

.field public static final TAG_PASSWORD_COMPLEXITY_SET:I = 0x33461

.field public static final TAG_PASSWORD_EXPIRATION_SET:I = 0x33460

.field public static final TAG_PASSWORD_HISTORY_LENGTH_SET:I = 0x33462

.field public static final TAG_REMOTE_LOCK:I = 0x33466

.field public static final TAG_SYNC_RECV_FILE:I = 0x33453

.field public static final TAG_SYNC_SEND_FILE:I = 0x33454

.field public static final TAG_USER_RESTRICTION_ADDED:I = 0x3346b

.field public static final TAG_USER_RESTRICTION_REMOVED:I = 0x3346c

.field public static final TAG_WIPE_FAILURE:I = 0x33467


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoggingEnabledProperty()Z
    .registers 2

    const-string/jumbo v0, "persist.logd.security"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static native isLoggingEnabled()Z
.end method

.method public static native readEvents(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native readEventsOnWrapping(JLjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native readEventsSince(JLjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native readPreviousEvents(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static redactEvents(Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v2, p1}, Landroid/app/admin/SecurityLog$SecurityEvent;->redact(I)Landroid/app/admin/SecurityLog$SecurityEvent;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_26
    if-lt v1, v0, :cond_2e

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    :cond_2e
    return-void
.end method

.method public static setLoggingEnabledProperty(Z)V
    .registers 3

    if-eqz p0, :cond_6

    const-string/jumbo v0, "true"

    goto :goto_8

    :cond_6
    const-string v0, "false"

    :goto_8
    const-string/jumbo v1, "persist.logd.security"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static native writeEvent(ILjava/lang/String;)I
.end method

.method public static varargs native writeEvent(I[Ljava/lang/Object;)I
.end method
