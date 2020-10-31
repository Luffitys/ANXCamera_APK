.class Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;
.super Ljava/lang/Object;
.source "ChinesePinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/ChinesePinyinConverter$BopomofoConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field public ch:C

.field public children:Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

.field public next:Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;

.field public output:Ljava/lang/String;

.field public specials:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/ChinesePinyinConverter$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor$Node;-><init>()V

    return-void
.end method
