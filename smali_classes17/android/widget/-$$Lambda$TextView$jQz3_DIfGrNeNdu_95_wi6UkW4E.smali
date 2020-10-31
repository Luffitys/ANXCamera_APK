.class public final synthetic Landroid/widget/-$$Lambda$TextView$jQz3_DIfGrNeNdu_95_wi6UkW4E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/widget/-$$Lambda$TextView$jQz3_DIfGrNeNdu_95_wi6UkW4E;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/widget/-$$Lambda$TextView$jQz3_DIfGrNeNdu_95_wi6UkW4E;

    invoke-direct {v0}, Landroid/widget/-$$Lambda$TextView$jQz3_DIfGrNeNdu_95_wi6UkW4E;-><init>()V

    sput-object v0, Landroid/widget/-$$Lambda$TextView$jQz3_DIfGrNeNdu_95_wi6UkW4E;->INSTANCE:Landroid/widget/-$$Lambda$TextView$jQz3_DIfGrNeNdu_95_wi6UkW4E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/view/textclassifier/TextClassification;

    invoke-static {p1}, Landroid/widget/TextView;->lambda$handleClick$1(Landroid/view/textclassifier/TextClassification;)V

    return-void
.end method
