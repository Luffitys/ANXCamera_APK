.class public final Lmiui/log/Tags;
.super Ljava/lang/Object;
.source "Tags.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidTag(Ljava/lang/String;)Lmiui/log/AndroidTag;
    .registers 2

    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiTag(I)Lmiui/log/MiuiTag;
    .registers 2

    invoke-static {p0}, Lmiui/log/MiuiTags;->get(I)Lmiui/log/MiuiTag;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiTag(Ljava/lang/String;)Lmiui/log/MiuiTag;
    .registers 2

    invoke-static {p0}, Lmiui/log/MiuiTags;->get(Ljava/lang/String;)Lmiui/log/MiuiTag;

    move-result-object v0

    return-object v0
.end method

.method public static getTagGroup(Ljava/lang/String;)Lmiui/log/TagGroup;
    .registers 2

    invoke-static {p0}, Lmiui/log/TagGroups;->get(Ljava/lang/String;)Lmiui/log/TagGroup;

    move-result-object v0

    return-object v0
.end method

.method public static isAndroidTagOn(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lmiui/log/AndroidTags;->isOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMiuiTagOn(I)Z
    .registers 2

    invoke-static {p0}, Lmiui/log/MiuiTags;->isOn(I)Z

    move-result v0

    return v0
.end method

.method public static isMiuiTagOn(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lmiui/log/MiuiTags;->isOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTagGroupOn(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lmiui/log/TagGroups;->isOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static switchOffAndroidTag(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lmiui/log/AndroidTags;->switchOff(Ljava/lang/String;)V

    return-void
.end method

.method public static switchOffMiuiTag(I)V
    .registers 1

    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOff(I)V

    return-void
.end method

.method public static switchOffMiuiTag(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOff(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized switchOffTagGroup(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lmiui/log/Tags;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lmiui/log/TagGroups;->switchOff(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static switchOnAndroidTag(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lmiui/log/AndroidTags;->switchOn(Ljava/lang/String;)V

    return-void
.end method

.method public static switchOnMiuiTag(I)V
    .registers 1

    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOn(I)V

    return-void
.end method

.method public static switchOnMiuiTag(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOn(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized switchOnTagGroup(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lmiui/log/Tags;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lmiui/log/TagGroups;->switchOn(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0

    throw p0
.end method
