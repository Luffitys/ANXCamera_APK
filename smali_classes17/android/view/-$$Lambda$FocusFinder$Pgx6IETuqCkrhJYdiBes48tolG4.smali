.class public final synthetic Landroid/view/-$$Lambda$FocusFinder$Pgx6IETuqCkrhJYdiBes48tolG4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/-$$Lambda$FocusFinder$Pgx6IETuqCkrhJYdiBes48tolG4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/-$$Lambda$FocusFinder$Pgx6IETuqCkrhJYdiBes48tolG4;

    invoke-direct {v0}, Landroid/view/-$$Lambda$FocusFinder$Pgx6IETuqCkrhJYdiBes48tolG4;-><init>()V

    sput-object v0, Landroid/view/-$$Lambda$FocusFinder$Pgx6IETuqCkrhJYdiBes48tolG4;->INSTANCE:Landroid/view/-$$Lambda$FocusFinder$Pgx6IETuqCkrhJYdiBes48tolG4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 3

    invoke-static {p1, p2}, Landroid/view/FocusFinder;->lambda$new$0(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
