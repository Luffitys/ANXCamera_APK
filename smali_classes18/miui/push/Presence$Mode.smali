.class public final enum Lmiui/push/Presence$Mode;
.super Ljava/lang/Enum;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/push/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/push/Presence$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/push/Presence$Mode;

.field public static final enum available:Lmiui/push/Presence$Mode;

.field public static final enum away:Lmiui/push/Presence$Mode;

.field public static final enum chat:Lmiui/push/Presence$Mode;

.field public static final enum dnd:Lmiui/push/Presence$Mode;

.field public static final enum xa:Lmiui/push/Presence$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lmiui/push/Presence$Mode;

    const-string v1, "chat"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/push/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/push/Presence$Mode;->chat:Lmiui/push/Presence$Mode;

    new-instance v0, Lmiui/push/Presence$Mode;

    const-string v1, "available"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/push/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/push/Presence$Mode;->available:Lmiui/push/Presence$Mode;

    new-instance v0, Lmiui/push/Presence$Mode;

    const-string v1, "away"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/push/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/push/Presence$Mode;->away:Lmiui/push/Presence$Mode;

    new-instance v0, Lmiui/push/Presence$Mode;

    const-string v1, "xa"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/push/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/push/Presence$Mode;->xa:Lmiui/push/Presence$Mode;

    new-instance v0, Lmiui/push/Presence$Mode;

    const-string v1, "dnd"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/push/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/push/Presence$Mode;->dnd:Lmiui/push/Presence$Mode;

    const/4 v1, 0x5

    new-array v1, v1, [Lmiui/push/Presence$Mode;

    sget-object v7, Lmiui/push/Presence$Mode;->chat:Lmiui/push/Presence$Mode;

    aput-object v7, v1, v2

    sget-object v2, Lmiui/push/Presence$Mode;->available:Lmiui/push/Presence$Mode;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/push/Presence$Mode;->away:Lmiui/push/Presence$Mode;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/push/Presence$Mode;->xa:Lmiui/push/Presence$Mode;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lmiui/push/Presence$Mode;->$VALUES:[Lmiui/push/Presence$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/push/Presence$Mode;
    .registers 2

    const-class v0, Lmiui/push/Presence$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/push/Presence$Mode;

    return-object v0
.end method

.method public static values()[Lmiui/push/Presence$Mode;
    .registers 1

    sget-object v0, Lmiui/push/Presence$Mode;->$VALUES:[Lmiui/push/Presence$Mode;

    invoke-virtual {v0}, [Lmiui/push/Presence$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/push/Presence$Mode;

    return-object v0
.end method
