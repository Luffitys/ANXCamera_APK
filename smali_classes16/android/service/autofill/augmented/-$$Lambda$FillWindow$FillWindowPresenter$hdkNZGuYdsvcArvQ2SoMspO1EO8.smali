.class public final synthetic Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$hdkNZGuYdsvcArvQ2SoMspO1EO8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$hdkNZGuYdsvcArvQ2SoMspO1EO8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$hdkNZGuYdsvcArvQ2SoMspO1EO8;

    invoke-direct {v0}, Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$hdkNZGuYdsvcArvQ2SoMspO1EO8;-><init>()V

    sput-object v0, Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$hdkNZGuYdsvcArvQ2SoMspO1EO8;->INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$hdkNZGuYdsvcArvQ2SoMspO1EO8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/service/autofill/augmented/FillWindow;

    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1, p2}, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->lambda$show$0(Ljava/lang/Object;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
