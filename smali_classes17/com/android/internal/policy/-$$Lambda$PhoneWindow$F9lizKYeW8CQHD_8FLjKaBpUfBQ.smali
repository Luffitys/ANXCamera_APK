.class public final synthetic Lcom/android/internal/policy/-$$Lambda$PhoneWindow$F9lizKYeW8CQHD_8FLjKaBpUfBQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/Window$OnContentApplyWindowInsetsListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/policy/-$$Lambda$PhoneWindow$F9lizKYeW8CQHD_8FLjKaBpUfBQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/policy/-$$Lambda$PhoneWindow$F9lizKYeW8CQHD_8FLjKaBpUfBQ;

    invoke-direct {v0}, Lcom/android/internal/policy/-$$Lambda$PhoneWindow$F9lizKYeW8CQHD_8FLjKaBpUfBQ;-><init>()V

    sput-object v0, Lcom/android/internal/policy/-$$Lambda$PhoneWindow$F9lizKYeW8CQHD_8FLjKaBpUfBQ;->INSTANCE:Lcom/android/internal/policy/-$$Lambda$PhoneWindow$F9lizKYeW8CQHD_8FLjKaBpUfBQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContentApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/util/Pair;
    .registers 3

    invoke-static {p1, p2}, Lcom/android/internal/policy/PhoneWindow;->lambda$static$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
