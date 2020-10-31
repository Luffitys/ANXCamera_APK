.class public final Landroid/content/pm/PackageUserState$SuspendParams;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageUserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuspendParams"
.end annotation


# static fields
.field private static final TAG_APP_EXTRAS:Ljava/lang/String; = "app-extras"

.field private static final TAG_DIALOG_INFO:Ljava/lang/String; = "dialog-info"

.field private static final TAG_LAUNCHER_EXTRAS:Ljava/lang/String; = "launcher-extras"


# instance fields
.field public appExtras:Landroid/os/PersistableBundle;

.field public dialogInfo:Landroid/content/pm/SuspendDialogInfo;

.field public launcherExtras:Landroid/os/PersistableBundle;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstanceOrNull(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Landroid/content/pm/PackageUserState$SuspendParams;
    .registers 4

    if-nez p0, :cond_8

    if-nez p1, :cond_8

    if-nez p2, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    new-instance v0, Landroid/content/pm/PackageUserState$SuspendParams;

    invoke-direct {v0}, Landroid/content/pm/PackageUserState$SuspendParams;-><init>()V

    iput-object p0, v0, Landroid/content/pm/PackageUserState$SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    iput-object p1, v0, Landroid/content/pm/PackageUserState$SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    iput-object p2, v0, Landroid/content/pm/PackageUserState$SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/PackageUserState$SuspendParams;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "PackageUserState"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    :cond_9
    :goto_9
    :try_start_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_8f

    const/4 v5, 0x3

    if-ne v6, v5, :cond_1a

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_8f

    :cond_1a
    if-eq v6, v5, :cond_9

    const/4 v5, 0x4

    if-ne v6, v5, :cond_20

    goto :goto_9

    :cond_20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v8, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x20149871

    const/4 v11, 0x2

    if-eq v9, v10, :cond_4e

    const v10, -0x15b69ed

    if-eq v9, v10, :cond_44

    const v10, 0x61017530

    if-eq v9, v10, :cond_3a

    :cond_39
    goto :goto_57

    :cond_3a
    const-string v9, "launcher-extras"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    move v8, v11

    goto :goto_57

    :cond_44
    const-string v9, "dialog-info"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    const/4 v8, 0x0

    goto :goto_57

    :cond_4e
    const-string v9, "app-extras"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    move v8, v7

    :goto_57
    if-eqz v8, :cond_87

    if-eq v8, v7, :cond_81

    if-eq v8, v11, :cond_7b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in SuspendParams. Ignoring"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :cond_7b
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    move-object v3, v5

    goto :goto_8d

    :cond_81
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    move-object v2, v5

    goto :goto_8d

    :cond_87
    invoke-static {p0}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v5
    :try_end_8b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_8b} :catch_90

    move-object v1, v5

    nop

    :goto_8d
    goto/16 :goto_9

    :cond_8f
    goto :goto_96

    :catch_90
    move-exception v5

    const-string v6, "Exception while trying to parse SuspendParams, some fields may default"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_96
    invoke-static {v1, v2, v3}, Landroid/content/pm/PackageUserState$SuspendParams;->getInstanceOrNull(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Landroid/content/pm/PackageUserState$SuspendParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/content/pm/PackageUserState$SuspendParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/content/pm/PackageUserState$SuspendParams;

    iget-object v3, p0, Landroid/content/pm/PackageUserState$SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    iget-object v4, v1, Landroid/content/pm/PackageUserState$SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    iget-object v3, p0, Landroid/content/pm/PackageUserState$SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    iget-object v4, v1, Landroid/content/pm/PackageUserState$SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    invoke-static {v3, v4}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v3

    if-nez v3, :cond_23

    return v2

    :cond_23
    iget-object v3, p0, Landroid/content/pm/PackageUserState$SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    iget-object v4, v1, Landroid/content/pm/PackageUserState$SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    invoke-static {v3, v4}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v2

    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Landroid/content/pm/PackageUserState$SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/PackageUserState$SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->size()I

    move-result v2

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/PackageUserState$SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->size()I

    move-result v3

    :cond_1e
    add-int/2addr v0, v3

    return v0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PackageUserState$SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    const-string v0, "dialog-info"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Landroid/content/pm/PackageUserState$SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/SuspendDialogInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12
    iget-object v0, p0, Landroid/content/pm/PackageUserState$SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    const-string v2, "PackageUserState"

    if-eqz v0, :cond_2c

    const-string v0, "app-extras"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :try_start_1d
    iget-object v3, p0, Landroid/content/pm/PackageUserState$SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_29

    :catch_23
    move-exception v3

    const-string v4, "Exception while trying to write appExtras. Will be lost on reboot"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2c
    iget-object v0, p0, Landroid/content/pm/PackageUserState$SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_44

    const-string v0, "launcher-extras"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :try_start_35
    iget-object v3, p0, Landroid/content/pm/PackageUserState$SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_3a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_3a} :catch_3b

    goto :goto_41

    :catch_3b
    move-exception v3

    const-string v4, "Exception while trying to write launcherExtras. Will be lost on reboot"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_41
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_44
    return-void
.end method
