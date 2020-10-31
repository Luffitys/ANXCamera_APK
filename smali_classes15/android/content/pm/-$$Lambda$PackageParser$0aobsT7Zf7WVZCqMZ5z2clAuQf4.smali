.class public final synthetic Landroid/content/pm/-$$Lambda$PackageParser$0aobsT7Zf7WVZCqMZ5z2clAuQf4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$0aobsT7Zf7WVZCqMZ5z2clAuQf4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/-$$Lambda$PackageParser$0aobsT7Zf7WVZCqMZ5z2clAuQf4;

    invoke-direct {v0}, Landroid/content/pm/-$$Lambda$PackageParser$0aobsT7Zf7WVZCqMZ5z2clAuQf4;-><init>()V

    sput-object v0, Landroid/content/pm/-$$Lambda$PackageParser$0aobsT7Zf7WVZCqMZ5z2clAuQf4;->INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$0aobsT7Zf7WVZCqMZ5z2clAuQf4;

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

    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->lambda$parseBaseApplication$0(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I

    move-result p1

    return p1
.end method
