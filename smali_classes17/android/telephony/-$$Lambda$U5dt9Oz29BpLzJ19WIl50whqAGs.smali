.class public final synthetic Landroid/telephony/-$$Lambda$U5dt9Oz29BpLzJ19WIl50whqAGs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/telephony/-$$Lambda$U5dt9Oz29BpLzJ19WIl50whqAGs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/-$$Lambda$U5dt9Oz29BpLzJ19WIl50whqAGs;

    invoke-direct {v0}, Landroid/telephony/-$$Lambda$U5dt9Oz29BpLzJ19WIl50whqAGs;-><init>()V

    sput-object v0, Landroid/telephony/-$$Lambda$U5dt9Oz29BpLzJ19WIl50whqAGs;->INSTANCE:Landroid/telephony/-$$Lambda$U5dt9Oz29BpLzJ19WIl50whqAGs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyOrThrow(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/android/internal/telephony/ISub;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/ISub;->getPhoneId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
