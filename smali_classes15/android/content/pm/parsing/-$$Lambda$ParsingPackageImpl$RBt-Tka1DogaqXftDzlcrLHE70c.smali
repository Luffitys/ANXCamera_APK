.class public final synthetic Landroid/content/pm/parsing/-$$Lambda$ParsingPackageImpl$RBt-Tka1DogaqXftDzlcrLHE70c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/pm/parsing/-$$Lambda$ParsingPackageImpl$RBt-Tka1DogaqXftDzlcrLHE70c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/parsing/-$$Lambda$ParsingPackageImpl$RBt-Tka1DogaqXftDzlcrLHE70c;

    invoke-direct {v0}, Landroid/content/pm/parsing/-$$Lambda$ParsingPackageImpl$RBt-Tka1DogaqXftDzlcrLHE70c;-><init>()V

    sput-object v0, Landroid/content/pm/parsing/-$$Lambda$ParsingPackageImpl$RBt-Tka1DogaqXftDzlcrLHE70c;->INSTANCE:Landroid/content/pm/parsing/-$$Lambda$ParsingPackageImpl$RBt-Tka1DogaqXftDzlcrLHE70c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/content/pm/parsing/component/ParsedMainComponent;

    check-cast p2, Landroid/content/pm/parsing/component/ParsedMainComponent;

    invoke-static {p1, p2}, Landroid/content/pm/parsing/ParsingPackageImpl;->lambda$static$0(Landroid/content/pm/parsing/component/ParsedMainComponent;Landroid/content/pm/parsing/component/ParsedMainComponent;)I

    move-result p1

    return p1
.end method
