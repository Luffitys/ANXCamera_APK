.class public final enum Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

.field public static final enum DOWN:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

.field public static final enum UP:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->UP:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    new-instance v0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    const-string v1, "DOWN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->DOWN:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    sget-object v4, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->UP:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->$VALUES:[Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;
    .locals 1

    const-class v0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;
    .locals 1

    sget-object v0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->$VALUES:[Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    invoke-virtual {v0}, [Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    return-object v0
.end method
