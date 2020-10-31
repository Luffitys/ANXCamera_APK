.class public final synthetic Landroid/telephony/-$$Lambda$CarrierRestrictionRules$LmZXhiwgp1w_MAHEuZsMgdCVMiU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# static fields
.field public static final synthetic INSTANCE:Landroid/telephony/-$$Lambda$CarrierRestrictionRules$LmZXhiwgp1w_MAHEuZsMgdCVMiU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/-$$Lambda$CarrierRestrictionRules$LmZXhiwgp1w_MAHEuZsMgdCVMiU;

    invoke-direct {v0}, Landroid/telephony/-$$Lambda$CarrierRestrictionRules$LmZXhiwgp1w_MAHEuZsMgdCVMiU;-><init>()V

    sput-object v0, Landroid/telephony/-$$Lambda$CarrierRestrictionRules$LmZXhiwgp1w_MAHEuZsMgdCVMiU;->INSTANCE:Landroid/telephony/-$$Lambda$CarrierRestrictionRules$LmZXhiwgp1w_MAHEuZsMgdCVMiU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Landroid/telephony/CarrierRestrictionRules;->lambda$areCarrierIdentifiersAllowed$0(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
