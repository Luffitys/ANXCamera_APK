.class final enum Lcom/android/camera/ui/GradienterDrawer$Direct;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public static final enum BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public static final enum LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public static final enum NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public static final enum RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public static final enum TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/GradienterDrawer$Direct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    new-instance v0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    const-string v1, "TOP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ui/GradienterDrawer$Direct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    new-instance v0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    const-string v1, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ui/GradienterDrawer$Direct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    new-instance v0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    const-string v1, "LEFT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/camera/ui/GradienterDrawer$Direct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    new-instance v0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    const-string v1, "RIGHT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/camera/ui/GradienterDrawer$Direct;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v7, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    aput-object v7, v1, v2

    sget-object v2, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->$VALUES:[Lcom/android/camera/ui/GradienterDrawer$Direct;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ui/GradienterDrawer$Direct;
    .locals 1

    const-class v0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/GradienterDrawer$Direct;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/ui/GradienterDrawer$Direct;
    .locals 1

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->$VALUES:[Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {v0}, [Lcom/android/camera/ui/GradienterDrawer$Direct;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ui/GradienterDrawer$Direct;

    return-object v0
.end method
