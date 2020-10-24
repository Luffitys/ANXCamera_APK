.class final enum Lcom/android/camera/fragment/FragmentMainContent$CoverState;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum BOTTOM:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum LEFT:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum LR:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum NONE:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum RIGHT:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum TB:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

.field public static final enum TOP:Lcom/android/camera/fragment/FragmentMainContent$CoverState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->NONE:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const-string v1, "TB"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->TB:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const-string v1, "LR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->LR:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const-string v1, "TOP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->TOP:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const-string v1, "BOTTOM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->BOTTOM:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const-string v1, "LEFT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->LEFT:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const-string v1, "RIGHT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/camera/fragment/FragmentMainContent$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->RIGHT:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    sget-object v9, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->NONE:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    aput-object v9, v1, v2

    sget-object v2, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->TB:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->LR:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->TOP:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->BOTTOM:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->LEFT:Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->$VALUES:[Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/fragment/FragmentMainContent$CoverState;
    .locals 1

    const-class v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/fragment/FragmentMainContent$CoverState;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/FragmentMainContent$CoverState;->$VALUES:[Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    invoke-virtual {v0}, [Lcom/android/camera/fragment/FragmentMainContent$CoverState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/fragment/FragmentMainContent$CoverState;

    return-object v0
.end method
