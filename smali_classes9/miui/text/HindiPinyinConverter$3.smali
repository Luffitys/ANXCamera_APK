.class Lmiui/text/HindiPinyinConverter$3;
.super Lmiui/util/Pools$Manager;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/text/HindiPinyinConverter$3;->createInstance()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public createInstance()Ljava/util/ArrayList;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmiui/text/HindiPinyinConverter$3;->onRelease(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onRelease(Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
