.class public final enum Lmiui/animation/controller/FolmeFont$FontType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lmiui/animation/controller/FolmeFont$FontType;

.field public static final enum INIT:Lmiui/animation/controller/FolmeFont$FontType;

.field public static final enum TARGET:Lmiui/animation/controller/FolmeFont$FontType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lmiui/animation/controller/FolmeFont$FontType;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/animation/controller/FolmeFont$FontType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/animation/controller/FolmeFont$FontType;->INIT:Lmiui/animation/controller/FolmeFont$FontType;

    new-instance v0, Lmiui/animation/controller/FolmeFont$FontType;

    const-string v1, "TARGET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/animation/controller/FolmeFont$FontType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/animation/controller/FolmeFont$FontType;->TARGET:Lmiui/animation/controller/FolmeFont$FontType;

    const/4 v1, 0x2

    new-array v1, v1, [Lmiui/animation/controller/FolmeFont$FontType;

    sget-object v4, Lmiui/animation/controller/FolmeFont$FontType;->INIT:Lmiui/animation/controller/FolmeFont$FontType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lmiui/animation/controller/FolmeFont$FontType;->$VALUES:[Lmiui/animation/controller/FolmeFont$FontType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/animation/controller/FolmeFont$FontType;
    .locals 1

    const-class v0, Lmiui/animation/controller/FolmeFont$FontType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/animation/controller/FolmeFont$FontType;

    return-object p0
.end method

.method public static values()[Lmiui/animation/controller/FolmeFont$FontType;
    .locals 1

    sget-object v0, Lmiui/animation/controller/FolmeFont$FontType;->$VALUES:[Lmiui/animation/controller/FolmeFont$FontType;

    invoke-virtual {v0}, [Lmiui/animation/controller/FolmeFont$FontType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/animation/controller/FolmeFont$FontType;

    return-object v0
.end method
