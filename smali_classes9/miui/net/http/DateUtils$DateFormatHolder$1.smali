.class Lmiui/net/http/DateUtils$DateFormatHolder$1;
.super Ljava/lang/ThreadLocal;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/net/http/DateUtils$DateFormatHolder$1;->initialValue()Ljava/lang/ref/SoftReference;

    move-result-object p0

    return-object p0
.end method

.method protected initialValue()Ljava/lang/ref/SoftReference;
    .locals 1

    new-instance p0, Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
