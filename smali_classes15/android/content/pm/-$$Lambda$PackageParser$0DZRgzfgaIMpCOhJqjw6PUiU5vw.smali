.class public final synthetic Landroid/content/pm/-$$Lambda$PackageParser$0DZRgzfgaIMpCOhJqjw6PUiU5vw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$0DZRgzfgaIMpCOhJqjw6PUiU5vw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/-$$Lambda$PackageParser$0DZRgzfgaIMpCOhJqjw6PUiU5vw;

    invoke-direct {v0}, Landroid/content/pm/-$$Lambda$PackageParser$0DZRgzfgaIMpCOhJqjw6PUiU5vw;-><init>()V

    sput-object v0, Landroid/content/pm/-$$Lambda$PackageParser$0DZRgzfgaIMpCOhJqjw6PUiU5vw;->INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$0DZRgzfgaIMpCOhJqjw6PUiU5vw;

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

    check-cast p1, Landroid/content/pm/PackageParser$Activity;

    check-cast p2, Landroid/content/pm/PackageParser$Activity;

    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->lambda$parseBaseApplication$1(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I

    move-result p1

    return p1
.end method
