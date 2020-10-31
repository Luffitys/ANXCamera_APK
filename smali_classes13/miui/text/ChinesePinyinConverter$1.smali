.class Lmiui/text/ChinesePinyinConverter$1;
.super Lmiui/util/SoftReferenceSingleton;
.source "ChinesePinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/ChinesePinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton<",
        "Lmiui/text/ChinesePinyinConverter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lmiui/text/ChinesePinyinConverter$1;->createInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v0

    return-object v0
.end method

.method protected createInstance()Lmiui/text/ChinesePinyinConverter;
    .registers 3

    new-instance v0, Lmiui/text/ChinesePinyinConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/text/ChinesePinyinConverter;-><init>(Lmiui/text/ChinesePinyinConverter$1;)V

    return-object v0
.end method
