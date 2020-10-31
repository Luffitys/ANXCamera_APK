.class public final synthetic Landroid/database/sqlite/-$$Lambda$SQLiteDatabase$1FsSJH2q7x3eeDFXCAu9l4piDsE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Landroid/database/sqlite/-$$Lambda$SQLiteDatabase$1FsSJH2q7x3eeDFXCAu9l4piDsE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/database/sqlite/-$$Lambda$SQLiteDatabase$1FsSJH2q7x3eeDFXCAu9l4piDsE;

    invoke-direct {v0}, Landroid/database/sqlite/-$$Lambda$SQLiteDatabase$1FsSJH2q7x3eeDFXCAu9l4piDsE;-><init>()V

    sput-object v0, Landroid/database/sqlite/-$$Lambda$SQLiteDatabase$1FsSJH2q7x3eeDFXCAu9l4piDsE;->INSTANCE:Landroid/database/sqlite/-$$Lambda$SQLiteDatabase$1FsSJH2q7x3eeDFXCAu9l4piDsE;

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

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->lambda$dumpDatabaseDirectory$0(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
