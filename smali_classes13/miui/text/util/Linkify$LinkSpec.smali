.class Lmiui/text/util/Linkify$LinkSpec;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/util/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkSpec"
.end annotation


# instance fields
.field end:I

.field span:Landroid/text/style/URLSpan;

.field start:I

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/util/Linkify$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/text/util/Linkify$LinkSpec;-><init>()V

    return-void
.end method
