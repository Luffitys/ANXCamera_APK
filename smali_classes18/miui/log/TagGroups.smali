.class public final Lmiui/log/TagGroups;
.super Ljava/lang/Object;
.source "TagGroups.java"


# static fields
.field public static final TAGGROUP_BROADCAST:Ljava/lang/String; = "Broadcast"

.field public static final TagGroupBroadcast:Lmiui/log/TagGroup;

.field private static final allTagGroups:[Lmiui/log/TagGroup;

.field private static final tagGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/TagGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lmiui/log/TagGroup;

    const-string v1, "SendBroadcast"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Broadcast"

    invoke-direct {v0, v2, v1}, Lmiui/log/TagGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lmiui/log/TagGroups;->TagGroupBroadcast:Lmiui/log/TagGroup;

    const/4 v1, 0x1

    new-array v1, v1, [Lmiui/log/TagGroup;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lmiui/log/TagGroups;->allTagGroups:[Lmiui/log/TagGroup;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    sget-object v0, Lmiui/log/TagGroups;->allTagGroups:[Lmiui/log/TagGroup;

    array-length v1, v0

    :goto_21
    if-ge v2, v1, :cond_2f

    aget-object v3, v0, v2

    sget-object v4, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    iget-object v5, v3, Lmiui/log/TagGroup;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_2f
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lmiui/log/TagGroup;
    .registers 2

    sget-object v0, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    return-object v0
.end method

.method public static isOn(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lmiui/log/TagGroup;->isOn()Z

    move-result v1

    :goto_10
    return v1
.end method

.method public static switchOff(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiui/log/TagGroup;->switchOff()V

    :cond_d
    return-void
.end method

.method public static switchOn(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiui/log/TagGroup;->switchOn()V

    :cond_d
    return-void
.end method
