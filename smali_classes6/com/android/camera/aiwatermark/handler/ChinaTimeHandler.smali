.class public Lcom/android/camera/aiwatermark/handler/ChinaTimeHandler;
.super Lcom/android/camera/aiwatermark/handler/TimeHandler;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ChinaTimeHandler"

.field private static final TEMPLATE:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field private static final WEEK:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "\u661f\u671f\u65e5"

    const-string v1, "\u661f\u671f\u4e00"

    const-string v2, "\u661f\u671f\u4e8c"

    const-string v3, "\u661f\u671f\u4e09"

    const-string v4, "\u661f\u671f\u56db"

    const-string v5, "\u661f\u671f\u4e94"

    const-string v6, "\u661f\u671f\u516d"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/aiwatermark/handler/ChinaTimeHandler;->WEEK:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/TimeHandler;-><init>(Z)V

    return-void
.end method
