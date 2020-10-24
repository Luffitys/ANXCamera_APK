.class public final enum Lcom/android/camera/fragment/clone/Status;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/fragment/clone/Status;

.field public static final enum CAPTURING:Lcom/android/camera/fragment/clone/Status;

.field public static final enum EDIT:Lcom/android/camera/fragment/clone/Status;

.field public static final enum SAVE:Lcom/android/camera/fragment/clone/Status;

.field public static final enum STOP:Lcom/android/camera/fragment/clone/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/camera/fragment/clone/Status;

    const-string v1, "CAPTURING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/clone/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/clone/Status;->CAPTURING:Lcom/android/camera/fragment/clone/Status;

    new-instance v0, Lcom/android/camera/fragment/clone/Status;

    const-string v1, "STOP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/camera/fragment/clone/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/clone/Status;->STOP:Lcom/android/camera/fragment/clone/Status;

    new-instance v0, Lcom/android/camera/fragment/clone/Status;

    const-string v1, "EDIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/camera/fragment/clone/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/clone/Status;->EDIT:Lcom/android/camera/fragment/clone/Status;

    new-instance v0, Lcom/android/camera/fragment/clone/Status;

    const-string v1, "SAVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/camera/fragment/clone/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/clone/Status;->SAVE:Lcom/android/camera/fragment/clone/Status;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/camera/fragment/clone/Status;

    sget-object v6, Lcom/android/camera/fragment/clone/Status;->CAPTURING:Lcom/android/camera/fragment/clone/Status;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/camera/fragment/clone/Status;->STOP:Lcom/android/camera/fragment/clone/Status;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/fragment/clone/Status;->EDIT:Lcom/android/camera/fragment/clone/Status;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/camera/fragment/clone/Status;->$VALUES:[Lcom/android/camera/fragment/clone/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/fragment/clone/Status;
    .locals 1

    const-class v0, Lcom/android/camera/fragment/clone/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/clone/Status;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/fragment/clone/Status;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/clone/Status;->$VALUES:[Lcom/android/camera/fragment/clone/Status;

    invoke-virtual {v0}, [Lcom/android/camera/fragment/clone/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/fragment/clone/Status;

    return-object v0
.end method
